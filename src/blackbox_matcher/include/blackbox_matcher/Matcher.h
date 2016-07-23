#ifndef MATCHER_HEADERS_H
	#define MATCHER_HEADERS_H

	//#include <ros/console.h>
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

	//action library includes
	#include <blackbox_matcher/configCameraAction.h>
	#include <motion_estimation/configMotionEstimationAction.h>
	/////////////
	//External messages
	//////////
	#include <shared_files/MatchFrame.h>
	#include <shared_files/MatchingPoints.h>
	#include <shared_files/PixelMatch.h>

	#include <shared_files/RelativeFrame.h>
	#include <shared_files/RelativePoint.h>

	#include <math.h>

class Matcher
{
	private:
		//class declarations
			ros::NodeHandle handle_;
			int frames_counted_;
			boost::mt19937 rng;
		//action servers
			actionlib::SimpleActionServer<blackbox_matcher::configCameraAction> *server_config_;
			blackbox_matcher::configCameraGoal Settings;
			//action library functions
				void configServerAction(const blackbox_matcher::configCameraGoalConstPtr &goal);	
		//action clients
			actionlib::SimpleActionClient<motion_estimation::configMotionEstimationAction> *client_motion_;
		//Settings Cameras
			int img_height,img_width;
			double pixel_height,pixel_width;
			int std_dev_pixel;
			//OPENCV declarations
				cv::Mat l_k,r_k;
				cv::Mat rodriguez_l,rodriguez_r;
				cv::Mat l_rot,l_trans;
				cv::Mat r_rot,r_trans;
				cv::Mat l_dist,r_dist;
				cv::Size input_image_size;
			//Rectified Matrices
				cv::Mat l_rect_rot,r_rect_rot;
				cv::Mat l_rect_proj,r_rect_proj;
				cv::Mat l_rect_map_1,l_rect_map_2;
				cv::Mat	r_rect_map_1,r_rect_map_2;
				cv::Mat l_rect_k,r_rect_k;
				cv::Mat q_mapping;
		//ROS Publisher & subscribers
			ros::Publisher pub_match_output;
			ros::Subscriber sub_left_pointcloud;
			//Callbacks
				void callbackLeft(const shared_files::RelativeFrameConstPtr& msg_cloud);
		//private functions
			void initiateMatrices();
			cv::Point2d add_noise(cv::Point2d original);
	public:
	//constructors
		Matcher();
		//global declarations
	//action library functions
//		void configServerAction(const blackbox_matcher::configCameraGoalConstPtr &goal);
	//action servers
//		
};
#endif
