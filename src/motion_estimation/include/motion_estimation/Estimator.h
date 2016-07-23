#ifndef ESTIMATION_MOTION_HEADERS_H
	#define ESTIMATION_MOTION_HEADERS_H


	#include <shared_files//standard_ros_headers.h>
	#include <shared_files//standard_c_headers.h>
	#include <shared_files//standard_action_headers.h>
	#include <shared_files//standard_boost_headers.h>
	#include <shared_files//standard_transform_headers.h>
	#include <shared_files//standard_opencv_headers.h>
	#include <shared_files//standard_transform_communication_headers.h>

	#include <geometry_msgs/Point32.h>
	#include <geometry_msgs/Point.h>
	#include <geometry_msgs/PointStamped.h>
	#include <tf2/LinearMath/Matrix3x3.h>
	///////////
	//Action Libraries
	//////////////
	#include <motion_estimation/configMotionEstimationAction.h>
	/////////////
	//External messages
	//////////
	#include <shared_files/MatchFrame.h>
	#include <shared_files/TransformNames.h>
	#include <shared_files/TopicNames.h>

	//#include <shared_msgs/FrameEstimate.h>
	//#include <shared_msgs/PointEstimate.h>
	//#include <shared_msgs/PointSet.h>

	#include <math.h>
class Estimator
{
	private:
	//class declarations
		ros::NodeHandle handle_;
		cv::Mat Q_;
		shared_files::TransformNames settings_tname;
		shared_files::TopicNames settings_topname;
		std::vector<shared_files::MatchFrame> data;
	//Publishers and listeners
		ros::Subscriber sub_matches_;
		ros::Publisher pub_points_;
		//callbacks
			void callbackMatches(const shared_files::MatchFrameConstPtr &msg);
	//action libraries
		actionlib::SimpleActionServer<motion_estimation::configMotionEstimationAction> *server_config_;
		//callbacks
			void config_server_action(const motion_estimation::configMotionEstimationGoalConstPtr &goal);
	//private functions

	public:
	//constructors
		Estimator();

};
#endif
	
	