#ifndef TTTTTTT_HEADERS_H
	#define TTTTTTT_HEADERS_H

	#include <shared_files/standard_ros_headers.h>
	#include <shared_files/standard_c_headers.h>
	#include <shared_files/standard_action_headers.h>
	#include <shared_files/standard_boost_headers.h>
	#include <shared_files/standard_transform_headers.h>
	#include <shared_files/standard_opencv_headers.h>
	#include <shared_files/standard_transform_communication_headers.h>


	#include <tf2/LinearMath/Matrix3x3.h>


	#include <math.h>


class Matcher
{
	private:
		//class declarations
			ros::NodeHandle handle_;
			int frames_counted_;
			cv::Mat getRotation(double roll,double pitch,double yaw);

	public:
	//constructors
		Matcher();
};
#endif
