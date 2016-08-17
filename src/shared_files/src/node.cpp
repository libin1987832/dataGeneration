#include <shared_files/standard_transform_headers.h>
#include <shared_files/standard_ros_headers.h>
#include <shared_files/standard_c_headers.h>
#include <shared_files/standard_opencv_headers.h>
#include <shared_files/standard_transform_communication_headers.h>

void create_transforms(cv::FileStorage &file);
cv::Mat rotation_matrix(double roll,double pitch,double yaw);

int main(int argc, char **argv)
{
	ros::init(argc,argv,"camera_configuration");
	
	std::string filename,directory;
	ros::param::get("/Options/FileName",filename);
	ros::param::get("/Options/FileDir",directory);
	
	directory+=filename;

	cv::FileStorage sfile(directory,cv::FileStorage::WRITE);
	create_transforms(sfile);
	
	sfile.release();
	ROS_INFO_STREAM("SCRIPT COMPLETED");
	return 0;
}

cv::Mat rotation_matrix(double roll,double pitch, double yaw)  //Validated
{
	double roll_rad,pitch_rad,yaw_rad;
	double cosp,sinp;
	double cosr,sinr;
	double cosy,siny;
		
	cv::Mat rx,ry,rz,ANS;	
		
	roll_rad=roll*M_PI/180.0;
	pitch_rad=pitch*M_PI/180.0;
	yaw_rad=yaw*M_PI/180.0;
		
	cosp=cos(pitch_rad);
	sinp=sin(pitch_rad);
	cosr=cos(roll_rad);
	sinr=sin(roll_rad);
	cosy=cos(yaw_rad);
	siny=sin(yaw_rad);
	
    rx = (cv::Mat_<double>(3, 3) <<
                  1,          0,            0,
                  0, 		cosr, 		-sinr,
                  0,		sinr,		 cosr);
   ry = (cv::Mat_<double>(3, 3) <<
                  cosp, 0, sinp,
                     0, 1,    0,
                  -sinp, 0,  cosp);	
	
	rz=(cv::Mat_<double>(3, 3) <<
                  cosy, -siny, 0,
                  siny,	 cosy, 0,
                  0, 0,  1);	
	
	ANS=rz*ry*rx;
	return ANS;
	
	
	
}

void create_transforms(cv::FileStorage &file)
{
	ROS_INFO_STREAM("Generating Transform information");
	//Create the Transforms
	double tempdouble,yaw,pitch,roll;//holds double value from parameter server
	cv::Mat TL,TR,RR,RL,T_CVL,T_CVR,R_CVL,R_CVR;
	TL=cv::Mat(3,1,CV_64F);
	TR=cv::Mat(3,1,CV_64F);
	RL=cv::Mat(4,1,CV_64F);//quaternion column vector
	RR=cv::Mat(4,1,CV_64F);
	T_CVL=cv::Mat(3,1,CV_64F);
	T_CVR=cv::Mat(3,1,CV_64F);
	R_CVL=cv::Mat(4,1,CV_64F);
	R_CVR=cv::Mat(4,1,CV_64F);
	
	geometry_msgs::Transform SL,SLCV,SR,SRCV,baseline;//settings
	geometry_msgs::Transform temptransform;
	tf2::Quaternion tempquat;
	
	//Left Camera Settings
	
	ros::param::get("/LeftCam/Translation/X",tempdouble);
	TL.at<double>(0,0)=tempdouble;
	temptransform.translation.x=tempdouble;
	ros::param::get("/LeftCam/Translation/Y",tempdouble);
	TL.at<double>(1,0)=tempdouble;
	temptransform.translation.y=tempdouble;
	ros::param::get("/LeftCam/Translation/Z",tempdouble);
	TL.at<double>(2,0)=tempdouble;
	temptransform.translation.z=tempdouble;

	ros::param::get("/LeftCam/Rotation/Yaw",yaw);
	ros::param::get("/LeftCam/Rotation/Pitch",pitch);
	ros::param::get("/LeftCam/Rotation/Roll",roll);
	yaw*=(1/180.0)*M_PI; //convert to radians
	pitch*=(1/180.0)*M_PI;
	roll*=(1/180.0)*M_PI;
	
	tempquat.setRPY(roll,pitch,yaw);
	RL.at<double>(0,0)=tempquat.x();
	RL.at<double>(1,0)=tempquat.y();
	RL.at<double>(2,0)=tempquat.z();
	RL.at<double>(3,0)=tempquat.w();
	
	temptransform.rotation.x=tempquat.x();
	temptransform.rotation.y=tempquat.y();
	temptransform.rotation.z=tempquat.z();
	temptransform.rotation.w=tempquat.w();
	
	//store it
	SL=temptransform;
	//To opencv frame
	
	temptransform.translation.x=0.0;
	temptransform.translation.y=0.0;
	temptransform.translation.z=0.0;
	
	T_CVL.at<double>(0,0)=0.0;
	T_CVL.at<double>(1,0)=0.0;
	T_CVL.at<double>(2,0)=0.0;
	yaw=0.0;
	pitch=0.0;
	roll=-0.5*M_PI;
	
	tempquat.setRPY(roll,pitch,yaw);
	R_CVL.at<double>(0,0)=tempquat.x();
	R_CVL.at<double>(1,0)=tempquat.y();
	R_CVL.at<double>(2,0)=tempquat.z();
	R_CVL.at<double>(3,0)=tempquat.w();
	//store it
	SLCV=temptransform;
	

	//Right Camera Settings
	ros::param::get("/RightCam/Translation/X",tempdouble);
	TR.at<double>(0,0)=tempdouble;
	temptransform.translation.x=tempdouble;
	ros::param::get("/RightCam/Translation/Y",tempdouble);
	TR.at<double>(1,0)=tempdouble;
	temptransform.translation.y=tempdouble;
	ros::param::get("/RightCam/Translation/Z",tempdouble);
	TR.at<double>(2,0)=tempdouble;
	temptransform.translation.z=tempdouble;
	
	ros::param::get("/RightCam/Rotation/Yaw",yaw);
	ros::param::get("/RightCam/Rotation/Pitch",pitch);
	ros::param::get("/RightCam/Rotation/Roll",roll);
	yaw*=(1/180.0)*M_PI; //convert to radians
	pitch*=(1/180.0)*M_PI;
	roll*=(1/180.0)*M_PI;
	
	tempquat.setRPY(roll,pitch,yaw);
	
	RR.at<double>(0,0)=tempquat.x();
	RR.at<double>(1,0)=tempquat.y();
	RR.at<double>(2,0)=tempquat.z();
	RR.at<double>(3,0)=tempquat.w();
	
	temptransform.rotation.x=tempquat.x();
	temptransform.rotation.y=tempquat.y();
	temptransform.rotation.z=tempquat.z();
	temptransform.rotation.w=tempquat.w();

	SR=temptransform;
	
	//convert to opencv co ordinates
	temptransform.translation.x=0.0;
	temptransform.translation.y=0.0;
	temptransform.translation.z=0.0;
	
	T_CVR.at<double>(0,0)=0.0;
	T_CVR.at<double>(1,0)=0.0;
	T_CVR.at<double>(2,0)=0.0;
	
	yaw=0.0;
	pitch=0.0;
	roll=-0.5*M_PI;
	
	tempquat.setRPY(roll,pitch,yaw);
	
	R_CVR.at<double>(0,0)=tempquat.x();
	R_CVR.at<double>(1,0)=tempquat.y();
	R_CVR.at<double>(2,0)=tempquat.z();
	R_CVR.at<double>(3,0)=tempquat.w();
	
	temptransform.rotation.x=tempquat.x();
	temptransform.rotation.y=tempquat.y();
	temptransform.rotation.z=tempquat.z();
	temptransform.rotation.w=tempquat.w();
	
	SRCV=temptransform;
	
	//////////
	////populate stamped transforms
	///////////////
	
	geometry_msgs::TransformStamped t_l,t_r,t_lcv,t_rcv;
	
	t_l.header.frame_id="config_centre";
	t_l.child_frame_id="config_left";
	t_l.transform=SL;
	
	t_lcv.header.frame_id="config_left";
	t_lcv.child_frame_id="config_leftcv";
	t_lcv.transform=SLCV;
	
	t_r.header.frame_id="config_centre";
	t_r.child_frame_id="config_right";
	t_r.transform=SR;
	
	t_rcv.header.frame_id="config_right";
	t_rcv.child_frame_id="config_rightcv";
	t_rcv.transform=SRCV;
	/////////////////////
	///////Extract Baseline
	///////////////////
	tf2_ros::TransformBroadcaster b_l,b_r,b_lcv,b_rcv;
		

	tf2_ros::Buffer my_buffer;
	tf2_ros::TransformListener my_listener(my_buffer);
	bool transformed_complete=false;
	while(!transformed_complete)
		{
			ros::Time simulated_time=ros::Time::now();
			t_l.header.stamp=simulated_time;
			t_r.header.stamp=simulated_time;
			t_lcv.header.stamp=simulated_time;
			t_rcv.header.stamp=simulated_time;

			b_l.sendTransform(t_l);
			b_r.sendTransform(t_r);
			b_lcv.sendTransform(t_lcv);
			b_rcv.sendTransform(t_rcv);
		    ros::spinOnce();
			ros::Duration d(0.5);
			d.sleep();
			ros::spinOnce();
			try
			{
				geometry_msgs::TransformStamped temp_baseline;
				temp_baseline=my_buffer.lookupTransform("config_leftcv","config_rightcv",simulated_time);//Transform from camera to world frame (right to left)
				baseline=temp_baseline.transform;
				ROS_INFO_STREAM("BaseLine Extracted");
				transformed_complete=true;
			}
			catch(tf2::TransformException &ex)
			{
				//ROS_WARN("%s",ex.what());
				continue;
			}
		}
	
	cv::Mat l_k,l_dist,l_trans,l_rot;
	cv::Mat r_k,r_dist,r_trans,r_rot;
	
	l_k=cv::Mat(3,3,CV_64F);
	
	r_k=cv::Mat(3,3,CV_64F);
	
	/////////////////////
	//create K matrices
	/////////////////

	
	ros::param::get("LeftCam/Intrinsic/M11",tempdouble);
	l_k.at<double>(0,0)=tempdouble;
	ros::param::get("LeftCam/Intrinsic/M12",tempdouble);
	l_k.at<double>(0,1)=tempdouble;
	ros::param::get("LeftCam/Intrinsic/M13",tempdouble);
	l_k.at<double>(0,2)=tempdouble;
	ros::param::get("LeftCam/Intrinsic/M21",tempdouble);
	l_k.at<double>(1,0)=tempdouble;
	ros::param::get("LeftCam/Intrinsic/M22",tempdouble);
	l_k.at<double>(1,1)=tempdouble;
	ros::param::get("LeftCam/Intrinsic/M23",tempdouble);
	l_k.at<double>(1,2)=tempdouble;
	ros::param::get("LeftCam/Intrinsic/M31",tempdouble);
	l_k.at<double>(2,0)=tempdouble;
	ros::param::get("LeftCam/Intrinsic/M32",tempdouble);
	l_k.at<double>(2,1)=tempdouble;
	ros::param::get("LeftCam/Intrinsic/M33",tempdouble);	
	l_k.at<double>(2,2)=tempdouble;
	
	ros::param::get("RightCam/Intrinsic/M11",tempdouble);
	r_k.at<double>(0,0)=tempdouble;
	ros::param::get("RightCam/Intrinsic/M12",tempdouble);
	r_k.at<double>(0,1)=tempdouble;
	ros::param::get("RightCam/Intrinsic/M13",tempdouble);
	r_k.at<double>(0,2)=tempdouble;
	ros::param::get("RightCam/Intrinsic/M21",tempdouble);
	r_k.at<double>(1,0)=tempdouble;
	ros::param::get("RightCam/Intrinsic/M22",tempdouble);
	r_k.at<double>(1,1)=tempdouble;
	ros::param::get("RightCam/Intrinsic/M23",tempdouble);
	r_k.at<double>(1,2)=tempdouble;
	ros::param::get("RightCam/Intrinsic/M31",tempdouble);
	r_k.at<double>(2,0)=tempdouble;
	ros::param::get("RightCam/Intrinsic/M32",tempdouble);
	r_k.at<double>(2,1)=tempdouble;
	ros::param::get("RightCam/Intrinsic/M33",tempdouble);
	r_k.at<double>(2,2)=tempdouble;

	//Create Rotation & Translation Matrices
	cv::Mat leftmatrix,rightmatrix;
	leftmatrix=cv::Mat(3,3,CV_64F);
	rightmatrix=cv::Mat(3,3,CV_64F);
	tf2::Matrix3x3 rightrotation;//temp holder for the right camera rotation matrix
	
	//set 3x3 rotation matrices of each camera (left camera as origin)
	leftmatrix=cv::Mat::eye(3,3,CV_64F);//set left camera as the origin of the camera world frame
	ROS_INFO_STREAM(leftmatrix);
	tf2::Quaternion q_r(baseline.rotation.x,
						baseline.rotation.y,
						baseline.rotation.z,
						baseline.rotation.w);
	rightrotation.setRotation(q_r);
	
	ROS_INFO_STREAM(rightrotation.getRow(0).getX()<<","<<rightrotation.getRow(0).getY()<<","<<rightrotation.getRow(0).getZ());
	ROS_INFO_STREAM(rightrotation.getRow(1).getX()<<","<<rightrotation.getRow(1).getY()<<","<<rightrotation.getRow(1).getZ());
	ROS_INFO_STREAM(rightrotation.getRow(2).getX()<<","<<rightrotation.getRow(2).getY()<<","<<rightrotation.getRow(2).getZ());

	
	rightmatrix.at<double>(0,0)=rightrotation.getRow(0).getX();///for some reason columns
	rightmatrix.at<double>(0,1)=rightrotation.getRow(0).getY();//have to be used here
	rightmatrix.at<double>(0,2)=rightrotation.getRow(0).getZ();//instead of rows
	rightmatrix.at<double>(1,0)=rightrotation.getRow(1).getX();//formatting of matrix3x3
	rightmatrix.at<double>(1,1)=rightrotation.getRow(1).getY();//seems to be opposite way
	rightmatrix.at<double>(1,2)=rightrotation.getRow(1).getZ();
	rightmatrix.at<double>(2,0)=rightrotation.getRow(2).getX();
	rightmatrix.at<double>(2,1)=rightrotation.getRow(2).getY();
	rightmatrix.at<double>(2,2)=rightrotation.getRow(2).getZ();

	ROS_INFO_STREAM(rightmatrix);
	//set translation vectors
	cv::Mat l_translation,r_translation;
	l_translation=cv::Mat::zeros(3,1,CV_64F);
	r_translation=cv::Mat(3,1,CV_64F);

	r_translation.at<double>(0,0)=baseline.translation.x;
	r_translation.at<double>(1,0)=baseline.translation.y;
	r_translation.at<double>(2,0)=baseline.translation.z;
	ROS_INFO_STREAM("right translation");
	ROS_INFO_STREAM(r_translation);
	
	r_translation=-1.0*rightmatrix*r_translation;
	
	ROS_INFO_STREAM("new translation");
	ROS_INFO_STREAM(r_translation);
	
	cv::Mat rodriguez_r;
	cv::Mat rodriguez_l;
	l_dist=cv::Mat(5,1,CV_64F);
	r_dist=cv::Mat(5,1,CV_64F);

	//r_trans=-1.0*r_rot*r_trans;  //TODO DOUBLE CHECK THIS


	cv::Rodrigues(rightmatrix,rodriguez_r);
	cv::Rodrigues(leftmatrix,rodriguez_l);

	//Create Distortion Matrices & camera Parameters
	ros::param::get("/LeftCam/Distortion/D1",tempdouble);
	l_dist.at<double>(0,0)=tempdouble;
	ros::param::get("/LeftCam/Distortion/D2",tempdouble);
	l_dist.at<double>(1,0)=tempdouble;
	ros::param::get("/LeftCam/Distortion/D3",tempdouble);
	l_dist.at<double>(2,0)=tempdouble;
	ros::param::get("/LeftCam/Distortion/D4",tempdouble);
	l_dist.at<double>(3,0)=tempdouble;
	ros::param::get("/LeftCam/Distortion/D5",tempdouble);
	l_dist.at<double>(4,0)=tempdouble;
	
	ros::param::get("/RightCam/Distortion/D1",tempdouble);
	r_dist.at<double>(0,0)=tempdouble;
	ros::param::get("/RightCam/Distortion/D2",tempdouble);
	r_dist.at<double>(1,0)=tempdouble;
	ros::param::get("/RightCam/Distortion/D3",tempdouble);
	r_dist.at<double>(2,0)=tempdouble;
	ros::param::get("/RightCam/Distortion/D4",tempdouble);
	r_dist.at<double>(3,0)=tempdouble;
	ros::param::get("/RightCam/Distortion/D5",tempdouble);
	r_dist.at<double>(4,0)=tempdouble;
	
	int img_height,img_width,tempint;
	double pixel_width,pixel_height;
	cv::Size input_image_size;
		
	ros::param::get("/SimSettings/ImgHeight",tempint);
	img_height=tempint;
	ros::param::get("/SimSettings/ImgWidth",tempint);
	img_width=tempint;
	ros::param::get("/SimSettings/PixelHeight",tempdouble);
	pixel_height=tempdouble;
	ros::param::get("/SimSettings/PixelWidth",tempdouble);
	pixel_width=tempdouble;
	//rectify mappings calculate
	
	input_image_size.height=img_height;
	input_image_size.width=img_width;
	
	cv::Mat rect_left_rot,rect_right_rot;
	cv::Mat proj_left,proj_right;
	cv::Mat q_mapping;
					
	cv::stereoRectify(l_k,l_dist,r_k,r_dist,input_image_size,rightmatrix,r_translation,  //input
					  rect_left_rot,rect_right_rot,proj_left,proj_right,q_mapping,CV_CALIB_ZERO_DISPARITY);   //output
	
	/////////////////
	///////Save to File
	////////////////
	
	file<<"LeftCamera"<<"{";
		file<<"intrinsics"<<"{";
			file<<"K"<<l_k;
			file<<"D"<<l_dist;
		file<<"}";
	    file<<"extrinsics"<<"{";
			file<<"T"<<TL;
			file<<"R"<<RL;
			file<<"T_CV"<<T_CVL;
			file<<"R_CV"<<R_CVL;
		file<<"}";
	file<<"}";
	file<<"RightCamera"<<"{";
		file<<"intrinsics"<<"{";
			file<<"K"<<r_k;
			file<<"D"<<r_dist;
		file<<"}";
	    file<<"extrinsics"<<"{";
			file<<"T"<<TR;
			file<<"R"<<RR;
			file<<"T_CV"<<T_CVR;
			file<<"R_CV"<<R_CVR;
		file<<"}";
	file<<"}";
	file<<"Stereo"<<"{";
		file<<"Baseline"<<"{";
			file<<"R"<<rightmatrix;
			file<<"corrected_T"<<r_translation;
		file<<"}";
		file<<"Rectification"<<"{";
			file<<"Rotation_Right"<<rect_right_rot;
			file<<"Rotation_Left"<<rect_left_rot;
		file<<"}";
		file<<"LeftProjection"<<proj_left;
		file<<"RightProjection"<<proj_right;
		file<<"QMapping"<<q_mapping;
	file<<"}";
	file<<"ImageSettings"<<"{";
		file<<"ImgHeight"<<img_height;
		file<<"ImgWidth"<<img_width;
		file<<"PixelWidth"<<pixel_width;
		file<<"PixelHeight"<<pixel_height;
	file<<"}";

	//l_rect_proj.convertTo(l_rect_proj,CV_64FC1);
	//r_rect_proj.convertTo(r_rect_proj,CV_64FC1);
	
	//rectify required Rotation and translation to be 64 bit double types
 //	cv::initUndistortRectifyMap(l_k,l_dist,l_rect_rot,l_rect_k,input_image_size,CV_32FC1,l_rect_map_1,l_rect_map_2);
//	cv::initUndistortRectifyMap(r_k,r_dist,r_rect_rot,r_rect_k,input_image_size,CV_32FC1,r_rect_map_1,r_rect_map_2);

	
	///////////////////////////
	//////////FAULT CHECKING CODE
	////////////////////////
   /* cv::Mat x,p1,p2,t,disp;
	x=cv::Mat(4,1,CV_64F);
	x.at<double>(0,0)=22.0;
	x.at<double>(1,0)=17.449;
	x.at<double>(2,0)=50.99;
	x.at<double>(3,0)=1.0;
	
	ROS_INFO_STREAM("mapping   "<<q_mapping);
	
	
	ROS_INFO_STREAM("X :"<<x);
	
	ROS_INFO_STREAM(proj_left);
	ROS_INFO_STREAM(proj_right);
	p1=proj_left*x;
	p2=proj_right*x;
	
	p1.at<double>(0,0)/= p1.at<double>(2,0);
	p1.at<double>(1,0)/= p1.at<double>(2,0);
	
	p2.at<double>(0,0)/= p2.at<double>(2,0);
	p2.at<double>(1,0)/= p2.at<double>(2,0);
	
	cv::Mat column;
	column=cv::Mat(4,1,CV_64F);
	column.at<double>(0,0)=p1.at<double>(0,0);
	column.at<double>(1,0)=p1.at<double>(1,0);
	column.at<double>(2,0)=p1.at<double>(0,0)-p2.at<double>(0,0);
	column.at<double>(3,0)=1.0;
	
	t=q_mapping*column;
	t.at<double>(0,0)/= t.at<double>(3,0);
	t.at<double>(1,0)/= t.at<double>(3,0);
	t.at<double>(2,0)/= t.at<double>(3,0);
	t.at<double>(3,0)/= t.at<double>(3,0);
	
	ROS_INFO_STREAM(" t :"<<t);
	//p1=cv::Mat(4,1,CV_64F);
	//x=cv::Mat(4,1,CV_64F);
	//x=cv::Mat(4,1,CV_64F);
	*/
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
