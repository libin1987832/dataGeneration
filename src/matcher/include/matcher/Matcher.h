#ifndef MATCHER_HEADERS_H
	#define MATCHER_HEADERS_H

	#include <shared_files/standard_ros_headers.h>
	#include <shared_files/standard_c_headers.h>
	#include <shared_files/standard_action_headers.h>
	#include <shared_files/standard_boost_headers.h>
	#include <shared_files/standard_transform_headers.h>
	#include <shared_files/standard_opencv_headers.h>
	#include <shared_files/standard_transform_communication_headers.h>


	#include <geometry_msgs/Point32.h>
	#include <geometry_msgs/Point.h>
	#include <geometry_msgs/PointStamped.h>
	#include <tf2/LinearMath/Matrix3x3.h>

	//action library includes
	#include <matcher/configMatchAction.h>
	#include <matcher/saveMatchesAction.h>
	/////////////
	//External messages
	//////////
	#include <shared_files/MatchFrame.h>
	#include <shared_files/MatchingPoints.h>
	#include <shared_files/PixelMatch.h>

	#include <shared_files/RelativeFrame.h>
	#include <shared_files/RelativePoint.h>

	#include <math.h>
	#include <matcher/Frame.h>

class Matcher
{
	private:
		//class declarations
			ros::NodeHandle handle_;
			int frames_counted_;
		//servers
			//servers
			actionlib::SimpleActionServer<matcher::configMatchAction> *server_config_;
			actionlib::SimpleActionServer<matcher::saveMatchesAction> *server_save_;
			//functions
			void configServerAction(const matcher::configMatchGoalConstPtr &goal);
			void saveServerAction(const matcher::saveMatchesGoalConstPtr &goal);
		//Topics
			//Subscribers
			ros::Subscriber sub_left_pointcloud;
			std_msgs::String sub_name;
				//callbacks
				void callbackLeft(const shared_files::RelativeFrameConstPtr& msg_cloud);
		//Save Settings
			std::vector<Frame> dataset_;
		//OpenCV Camera Info
			cv::Mat left_projection,right_projection;
			cv::Mat q_mapping;
			double pixel_u_size,pixel_v_size;
			int image_height,image_width;
		//Random number generators
			boost::mt19937 rng;
			boost::normal_distribution<> *normal_distribution;
			boost::variate_generator<boost::mt19937&, 
                      boost::normal_distribution<> > *generator_nd;

	public:
	//constructors
		Matcher();
};
#endif
