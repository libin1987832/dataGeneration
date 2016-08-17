#include <te/Matcher.h>

Matcher::Matcher()
{

	tf2::Matrix3x3 rotation;
	rotation.setRPY(0,0,M_PI/4.0);
	
	cv::Mat R;
	R=cv::Mat(3,3,CV_64FC1);
	
	
	
	
	
	
	
	R.at<double>(0,0)=rotation.getRow(0).getX();
	R.at<double>(0,1)=rotation.getRow(0).getY();
	R.at<double>(0,2)=rotation.getRow(0).getZ();
	
	R.at<double>(1,0)=rotation.getRow(1).getX();
	R.at<double>(1,1)=rotation.getRow(1).getY();
	R.at<double>(1,2)=rotation.getRow(1).getZ();
	
	R.at<double>(2,0)=rotation.getRow(2).getX();
	R.at<double>(2,1)=rotation.getRow(2).getY();
	R.at<double>(2,2)=rotation.getRow(2).getZ();


	cv::Mat translation,output,input;
	cv::Mat transform;
	
	translation=cv::Mat(3,1,CV_64FC1);
	
	transform=cv::Mat(4,4,CV_64FC1);
	
	cv::Mat ROI_R(transform,cv::Rect(0,0,3,3));
	R.copyTo(ROI_R);
	
	
	
	ROS_INFO_STREAM("Rotation Matrix");
	std::cout<<"\n"<<R<<"\n";
	
	ROS_INFO_STREAM("transform Matrix");
	std::cout<<"\n"<<transform<<"\n";
		
	ROS_INFO_STREAM("completed");
	ros::spin();
}
				  
cv::Mat Matcher::getRotation(double roll,double pitch,double yaw)
 {
	double costerm,sinterm;
	cv::Mat RollxMatrix;
		costerm=cos(roll);
		sinterm=sin(roll);
	
		RollxMatrix=cv::Mat(3,3,CV_64FC1);
		RollxMatrix.at<double>(0,0)=1.0;
		RollxMatrix.at<double>(0,1)=0.0;
		RollxMatrix.at<double>(0,2)=0.0;
		
		RollxMatrix.at<double>(1,0)=0.0;
		RollxMatrix.at<double>(1,1)=costerm;
		RollxMatrix.at<double>(1,2)=-sinterm;
		
		RollxMatrix.at<double>(2,0)=0.0;
		RollxMatrix.at<double>(2,1)=sinterm;
		RollxMatrix.at<double>(2,2)=costerm;
	 
	 	cv::Mat PitchyMatrix;
		costerm=cos(pitch);
		sinterm=sin(pitch);
	
		PitchyMatrix=cv::Mat(3,3,CV_64FC1);
		PitchyMatrix.at<double>(0,0)=costerm;
		PitchyMatrix.at<double>(0,1)=0.0;
		PitchyMatrix.at<double>(0,2)=sinterm;
		
		PitchyMatrix.at<double>(1,0)=0.0;
		PitchyMatrix.at<double>(1,1)=1.0;
		PitchyMatrix.at<double>(1,2)=0.0;
		
		PitchyMatrix.at<double>(2,0)=-sinterm;
		PitchyMatrix.at<double>(2,1)=0.0;
		PitchyMatrix.at<double>(2,2)=costerm;
	 
	 
	 
	 	 cv::Mat YawzMatrix;
		costerm=cos(yaw);
		sinterm=sin(yaw);
	
		YawzMatrix=cv::Mat(3,3,CV_64FC1);
		YawzMatrix.at<double>(0,0)=costerm;
		YawzMatrix.at<double>(0,1)=-sinterm;
		YawzMatrix.at<double>(0,2)=0.0;
		
		YawzMatrix.at<double>(1,0)=sinterm;
		YawzMatrix.at<double>(1,1)=costerm;
		YawzMatrix.at<double>(1,2)=0.0;
		
		YawzMatrix.at<double>(2,0)=0.0;
		YawzMatrix.at<double>(2,1)=0.0;
		YawzMatrix.at<double>(2,2)=1.0;
		
	 cv::Mat ans;
	 ans=YawzMatrix*PitchyMatrix*RollxMatrix;
		return ans;;
}
				  
				  
				  
				  
				  
				  
				  
				  
