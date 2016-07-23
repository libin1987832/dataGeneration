#include "blackbox_matcher/Matcher.h"

Matcher::Matcher()
{
	std::stringstream ss_name_server;
	ss_name_server<<ros::this_node::getName()<<"/config";
	server_config_= new actionlib::SimpleActionServer<blackbox_matcher::configCameraAction>
											(ss_name_server.str(),
											 boost::bind(&Matcher::configServerAction,this,_1),false);
	server_config_->start();	
	ros::spinOnce();
	std::string name;
	ros::param::get("/Names/Motion",name);
	name+="/config";
	client_motion_= new actionlib::SimpleActionClient<motion_estimation::configMotionEstimationAction>(name,true);
	client_motion_->waitForServer();

	ROS_INFO_STREAM(ros::this_node::getName()<<"-- Initialized");
	ros::spin();
}

void Matcher::configServerAction(const blackbox_matcher::configCameraGoalConstPtr &goal)
{
	frames_counted_=0;
	Settings=*goal;
	//Re initialize Opencv
	
	l_k=cv::Mat::zeros(3,3,CV_64FC1);
	r_k=cv::Mat::zeros(3,3,CV_64FC1);
	
	rodriguez_l=cv::Mat::zeros(1,3,CV_64FC1);
	rodriguez_r=cv::Mat::zeros(1,3,CV_64FC1);
	
	l_rot=cv::Mat::zeros(3,3,CV_64FC1);//64 bit as Rodeiguez angles require 64 bit precision
	l_trans=cv::Mat::zeros(3,1,CV_64FC1);
	r_rot=cv::Mat::zeros(3,3,CV_64FC1);
	r_trans=cv::Mat::zeros(3,1,CV_64FC1);
	l_dist=cv::Mat::zeros(5,1,CV_64FC1);
	r_dist=cv::Mat::zeros(5,1,CV_64FC1);
	pub_match_output=handle_.advertise<shared_files::MatchFrame>(Settings.settings_topic.MatchesTopic.data,10,false);
	initiateMatrices();

	sub_left_pointcloud=handle_.subscribe(Settings.settings_topic.RelativeCloudTopic.data,10,&Matcher::callbackLeft,this);
	ros::spinOnce();
	ROS_INFO_STREAM("BLACKBOX");
	server_config_->setSucceeded();
}

/////////////////
/////SUBSCRIBER CALLBACKS
////////////////

void Matcher::callbackLeft(const shared_files::RelativeFrameConstPtr& msg_cloud)
{
	ROS_INFO_STREAM("called");
	
	shared_files::MatchFrame ANS;
	ANS.frame_id=msg_cloud->FrameNumber;
	for(int index=0;index<msg_cloud->PointCloudRelative.size();index++)
	{
			shared_files::MatchingPoints current_point;
			std::vector<cv::Point3d> input_point;
			std::vector<cv::Point2d> project_right,project_left;
			cv::Point3d temppoint;
			
			temppoint.x=msg_cloud->PointCloudRelative[index].coord.x;
			temppoint.y=msg_cloud->PointCloudRelative[index].coord.y;
			temppoint.z=msg_cloud->PointCloudRelative[index].coord.z;
			input_point.push_back(temppoint);
			
			cv::projectPoints(input_point,rodriguez_l,l_trans,l_k,l_dist,project_left);
			cv::projectPoints(input_point,rodriguez_r,r_trans,r_k,l_dist,project_right);
	
			//get ideal rectified
			cv::Mat homogenous=cv::Mat::ones(4,1,CV_64FC1);
			cv::Mat outputpixel;
			cv::Point2d rect_l,rect_r;
			
			homogenous.at<double>(0,0)=temppoint.x;
			homogenous.at<double>(1,0)=temppoint.y;
			homogenous.at<double>(2,0)=temppoint.z;
			
			
			outputpixel=l_rect_proj*homogenous;
			outputpixel.at<double>(0,0)/=outputpixel.at<double>(2,0);
			outputpixel.at<double>(1,0)/=outputpixel.at<double>(2,0);
			rect_l.x=outputpixel.at<double>(0,0);
			rect_l.y=outputpixel.at<double>(1,0);
			
			outputpixel=r_rect_proj*homogenous;
			outputpixel.at<double>(0,0)/=outputpixel.at<double>(2,0);
			outputpixel.at<double>(1,0)/=outputpixel.at<double>(2,0);
			rect_r.x=outputpixel.at<double>(0,0);
			rect_r.y=outputpixel.at<double>(1,0);
			
			bool project=true;
			//check width bounds
			//TODO Figure out how to check if they are within bounds
			if((project_left[0].x<0.0)||(project_left[0].x>(double)img_width))
			{
				project=false;				
			}
			if((project_right[0].x<0.0)||(project_right[0].x>(double)img_width))
			{
				project=false;				
			}
			if((rect_l.x<0.0)||(rect_l.x>(double)img_width))
			{
				project=false;				
			}
			if((rect_r.x<0.0)||(rect_r.x>(double)img_width))
			{
				project=false;				
			}
			//check height bounds
			
			if((project_left[0].y<0.0)||(project_left[0].y>(double)img_height))
			{
				project=false;				
			}
			if((project_right[0].y<0.0)||(project_right[0].y>(double)img_height))
			{
				project=false;				
			}
			if((rect_l.y<0.0)||(rect_l.y>(double)img_height))
			{
				project=false;				
			}
			if((rect_r.y<0.0)||(rect_r.y>(double)img_height))
			{
				project=false;				
			}			
			if(project)
			{
				current_point.NumberID.data=msg_cloud->PointCloudRelative[index].identification.data;

				
				current_point.Rectified.u.data=rect_l.x;  //change
				current_point.Rectified.v.data=rect_l.y;
				current_point.Rectified.Disparity.data=rect_l.x-rect_r.x;
				
				cv::Point2d lnoise,rnoise;
						
				lnoise=add_noise(rect_l);
				rnoise=add_noise(rect_r);			
				current_point.Noise.u.data=lnoise.x;
				current_point.Noise.v.data=lnoise.y;
				current_point.Noise.Disparity.data=lnoise.x-rnoise.x;
				
				ANS.Frame.push_back(current_point);
			}
	

		}
		if(ANS.Frame.size()==0)
		{
			
			ROS_INFO_STREAM("NO POINTS PROJECTED");
		}
		else
		{
			//TODO Create an Image
			pub_match_output.publish(ANS);
		}
		frames_counted_=frames_counted_+1;
		
}



/************************
PRIVATE FUNCTIONS

*************************/


void Matcher::initiateMatrices()
{
	////////////////
	//temporary variables
	///////////////////
	double yaw,pitch,roll;
	double tempdouble;
	int tempint;
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
	tf2::Matrix3x3 leftrotation,rightrotation;
	tf2::Quaternion q_r(Settings.base.rotation.x,
					    Settings.base.rotation.y,
					    Settings.base.rotation.z,
					    Settings.base.rotation.w);
	

	l_trans.at<double>(0,0)=0.0; //set camera translation as 0 for left camera "i.e as world co ordinate"
	l_trans.at<double>(1,0)=0.0;
	l_trans.at<double>(2,0)=0.0;
	
	rightrotation.setRotation(q_r);
	l_rot.at<double>(0,0)=1.0;
	l_rot.at<double>(0,1)=0.0;
	l_rot.at<double>(0,2)=0.0;
	l_rot.at<double>(1,0)=0.0;
	l_rot.at<double>(1,1)=1.0;
	l_rot.at<double>(1,2)=0.0;
	l_rot.at<double>(2,0)=0.0;
	l_rot.at<double>(2,1)=0.0;
	l_rot.at<double>(2,2)=1.0;
	
	r_rot.at<double>(0,0)=rightrotation.getColumn(0).getX();///for some reason columns
	r_rot.at<double>(0,1)=rightrotation.getColumn(0).getY();//have to be used here
	r_rot.at<double>(0,2)=rightrotation.getColumn(0).getZ();//instead of rows
	r_rot.at<double>(1,0)=rightrotation.getColumn(1).getX();//formatting of matrix3x3
	r_rot.at<double>(1,1)=rightrotation.getColumn(1).getY();//seems to be opposite way
	r_rot.at<double>(1,2)=rightrotation.getColumn(1).getZ();
	r_rot.at<double>(2,0)=rightrotation.getColumn(2).getX();
	r_rot.at<double>(2,1)=rightrotation.getColumn(2).getY();
	r_rot.at<double>(2,2)=rightrotation.getColumn(2).getZ();
	

	r_trans.at<double>(0,0)=Settings.base.translation.x;
	r_trans.at<double>(1,0)=Settings.base.translation.y;	
	r_trans.at<double>(2,0)=Settings.base.translation.z;
	r_trans=-1.0*r_rot*r_trans;  //TODO DOUBLE CHECK THIS


	cv::Rodrigues(r_rot,rodriguez_r);
	cv::Rodrigues(l_rot,rodriguez_l);

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
	
					
	cv::stereoRectify(l_k,l_dist,r_k,r_dist,input_image_size,r_rot,r_trans,  //input
					  l_rect_rot,r_rect_rot,l_rect_proj,r_rect_proj,q_mapping,CV_CALIB_ZERO_DISPARITY);   //output
	l_rect_proj.convertTo(l_rect_proj,CV_64FC1);
	r_rect_proj.convertTo(r_rect_proj,CV_64FC1);
	
	//rectify required Rotation and translation to be 64 bit double types
	cv::initUndistortRectifyMap(l_k,l_dist,l_rect_rot,l_rect_k,input_image_size,CV_32FC1,l_rect_map_1,l_rect_map_2);
	cv::initUndistortRectifyMap(r_k,r_dist,r_rect_rot,r_rect_k,input_image_size,CV_32FC1,r_rect_map_1,r_rect_map_2);

	ros::param::get("SimSettings/PixelStdDev",tempint);
	std_dev_pixel=tempint;
	
	motion_estimation::configMotionEstimationGoal map_goal;
	std_msgs::Float64 temp;
	
	temp.data=q_mapping.at<double>(0,1);
	map_goal.QRow_one.push_back(temp);
	temp.data=q_mapping.at<double>(0,2);
	map_goal.QRow_one.push_back(temp);
	temp.data=q_mapping.at<double>(0,3);
	map_goal.QRow_one.push_back(temp);
	temp.data=q_mapping.at<double>(0,4);
	map_goal.QRow_one.push_back(temp);

	temp.data=q_mapping.at<double>(1,0);
	map_goal.QRow_two.push_back(temp);
	temp.data=q_mapping.at<double>(1,1);
	map_goal.QRow_two.push_back(temp);
	temp.data=q_mapping.at<double>(1,2);
	map_goal.QRow_two.push_back(temp);
	temp.data=q_mapping.at<double>(1,3);
	map_goal.QRow_two.push_back(temp);
	
	temp.data=q_mapping.at<double>(2,0);
	map_goal.QRow_three.push_back(temp);
	temp.data=q_mapping.at<double>(2,1);
	map_goal.QRow_three.push_back(temp);
	temp.data=q_mapping.at<double>(2,2);
	map_goal.QRow_three.push_back(temp);
	temp.data=q_mapping.at<double>(2,3);
	map_goal.QRow_three.push_back(temp);
	
	temp.data=q_mapping.at<double>(3,0);
	map_goal.QRow_four.push_back(temp);
	temp.data=q_mapping.at<double>(3,1);
	map_goal.QRow_four.push_back(temp);
	temp.data=q_mapping.at<double>(3,2);
	map_goal.QRow_four.push_back(temp);
	temp.data=q_mapping.at<double>(3,3);
	map_goal.QRow_four.push_back(temp);
	
	map_goal.tname=Settings.settings_transform;
	map_goal.topname=Settings.settings_topic;
	
	client_motion_->sendGoalAndWait(map_goal);

}

/**************
ACTION LIBRARY CALLBACK FUNCTIONS

*****************************/
cv::Point2d Matcher::add_noise(cv::Point2d original)
{
	boost::normal_distribution<> X_distribution(0.0,(double) std_dev_pixel);
	boost::normal_distribution<> Y_distribution(0.0,(double) std_dev_pixel);
	boost::variate_generator<boost::mt19937&,boost::normal_distribution<> > Xvar_nor(rng,X_distribution);
	boost::variate_generator<boost::mt19937&,boost::normal_distribution<> > Yvar_nor(rng,Y_distribution);
	cv::Point2d Ans;
	bool inBounds=false;
	while(!inBounds)
	{
		double noise_x,noise_y;
		noise_x=Xvar_nor();
		noise_y=Yvar_nor();
		noise_x+=original.x;
		noise_y+=original.y;
		if((noise_x>=0.0)&&(noise_y>=0))
		{
			if((noise_x<=(double) img_width)&&(noise_y<= (double) img_height))
			{
				inBounds=true;
				Ans.x=noise_x;
				Ans.y=noise_y;
			}
		}
	}
	return Ans;
						
}
