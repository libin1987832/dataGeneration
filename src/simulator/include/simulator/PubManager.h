#ifndef PUBLISHER_MANAGER_HEADER_H
	#define PUBLISHER_MANAGER_HEADER_H

	#include <shared_files/standard_ros_headers.h>
	#include <shared_files/standard_c_headers.h>
	#include <shared_files/standard_action_headers.h>
	#include <shared_files/standard_boost_headers.h>
	#include <shared_files/standard_transform_headers.h>
	#include <shared_files/standard_opencv_headers.h>
	#include <shared_files/standard_transform_communication_headers.h>

	///////////////////////
	//External Libraries Includes
	///////////////////////

		//custom ROS messages
	#include <shared_files/RelativeFrame.h>
	#include <shared_files/RelativePoint.h>

	#include <shared_files/TransformNames.h>
	#include <shared_files/TopicNames.h>
	#include <shared_files/SettingsTransform.h>
		//action libraries
	#include <matcher/configMatchAction.h>
	#include <matcher/saveMatchesAction.h>

	/////////////////////
	//Custom Classes
	////////////////////
	#include <simulator/Map.h>
	#include <simulator/Path.h>
	///////////////////
	//PCL 
	///////////////////
	#include <pcl_ros/point_cloud.h>
	#include <pcl/point_types.h>
	#include <pcl_ros/transforms.h>

	#include <tf2_geometry_msgs/tf2_geometry_msgs.h>

class PubManager
{
	private:
		//class declarations
			ros::NodeHandle handle_;
			std::string prefix_cm,prefix_left,prefix_right,prefix_lcv,prefix_rcv;
			std::string unique_ID,world_name,path_name;
			shared_files::TopicNames topic_settings_;
			shared_files::TransformNames transform_settings_;
			Map current_world;
			Path current_path;
			std::vector<shared_files::RelativeFrame> sensor_frames_;
			//Transform Declarations
			geometry_msgs::TransformStamped cm,left,right,leftcv,rightcv;
			tf2_ros::TransformBroadcaster bc_cm,bc_left_cv,bc_left,bc_right,bc_right_cv;
	
			ros::Publisher pub_rel_output;
			void addNewFrame(pcl::PointCloud<pcl::PointXYZ> rel);
			//private functions
			ros::Time publishTransform(int pose_number);
				//Action libraries
			actionlib::SimpleActionClient<matcher::configMatchAction> *client_config_match_;
			actionlib::SimpleActionClient<matcher::saveMatchesAction> *client_save_match_;
			
			void saveRelativeData(std::string dir);
	public:
	//constructors
		PubManager();
	//Class methods
		//configuration methods
		void set_transform_prefixes(std::string cm,std::string l,std::string r,std::string lcv,std::string rcv);
		void set_name(std::string unique,std::string m,std::string p);
		void genNames();
		void genWorld(std::string dir);
		void genPath(std::string dir);
		bool loadCamera(std::string directory);
		bool loadPath(std::string dir);
		bool loadWorld(std::string dir);
		void genRelative(std::string dir);
		void playback(double rate);
		void saveData(std::string relDir,std::string matchDir);

};

#endif