#ifndef MAP_MANAGER_HEADER_H
	#define MAP_MANAGER_HEADER_H

	#include <shared_files/standard_ros_headers.h>
	#include <shared_files/standard_c_headers.h>
	#include <shared_files/standard_action_headers.h>
	#include <shared_files/standard_boost_headers.h>
	#include <shared_files/standard_transform_headers.h>
	#include <shared_files/standard_opencv_headers.h>
	#include <shared_files/standard_transform_communication_headers.h>

	#include <simulator/genDataAction.h>
	/********************
	External LIbraries Includes
	********************/
	#include <shared_files/RelativeFrame.h>
	#include <shared_files/RelativePoint.h>
//	#include <blackbox_matcher/configCameraAction.h>
//	#include <nav_msgs/Path.h>
//	#include <geometry_msgs/Pose.h>
//	#include <geometry_msgs/PoseStamped.h>
	#include <shared_files/TransformNames.h>
	#include <shared_files/TopicNames.h>
	#include <shared_files/SettingsTransform.h>

	#include <pcl_ros/point_cloud.h>
	#include <pcl/point_types.h>
	#include <pcl_ros/transforms.h>

	#include <tf2_geometry_msgs/tf2_geometry_msgs.h>

	//#include <simulator/PubManager.h>
class Map
{
	private:
		//class declarations
		ros::NodeHandle handle_;
		pcl::PointCloud<pcl::PointXYZ> PointCloud;
		ros::Publisher pub_original_map;
		public:
	//constructors
		Map();
	//global declarations
		void newMap(std::string dir,std::string w_name);
		void publishMap(std::string topicname);
		pcl::PointCloud<pcl::PointXYZ> getMap();
	//action library functions
	//	void configServerAction(const simulator::configSimulationGoalConstPtr &goal);
	//	void startSimulation(const simulator::newSimulationGoalConstPtr &goal);


};

#endif