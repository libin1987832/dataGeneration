
#include <ros/ros.h>
#include <std_msgs/String.h>

#include <tf2/transform_datatypes.h>
#include "tf2_geometry_msgs/tf2_geometry_msgs.h"



#include <tf2/LinearMath/Matrix3x3.h>
#include <tf2/LinearMath/Vector3.h>
#include <geometry_msgs/Vector3Stamped.h>
#include <math.h>

#include <shared_files/standard_opencv_headers.h>

int main(int argc, char **argv)
{
	ros::init(argc,argv,"testing_stuff");
	ros::NodeHandle handle_;
	
	tf2::Matrix3x3 rotation;
	rotation.setRPY(0,0,M_PI/4.0);

	cv::Mat R;
//	R=cv::Mat(3,3,CV_64FC1);
	
	
/*	double r11,r12,r13,r21,r22,r23,r31,r32,r33;
	r11=rotation.getRow(0).getX();
	r12=rotation.getRow(0).getY();
	r13=rotation.getRow(0).getZ();
	
	r11=rotation.getRow(0).getX();
	r12=rotation.getRow(0).getY();
	r13=rotation.getRow(0).getZ();
	
	r11=rotation.getRow(0).getX();
	r12=rotation.getRow(0).getY();
	r13=rotation.getRow(0).getZ();
	
	ROS_INFO_STREAM("["<<r11<<","<<r12<<","<<r13<<"]");*/
	ros::spin();
	return 0;
}
