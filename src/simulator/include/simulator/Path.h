#ifndef PATH_MANAGER_HEADER_H
	#define PATH_MANAGER_HEADER_H

	#include <shared_files/standard_ros_headers.h>
	#include <shared_files/standard_c_headers.h>
	#include <shared_files/standard_action_headers.h>
	#include <shared_files/standard_boost_headers.h>
	#include <shared_files/standard_transform_headers.h>
	#include <shared_files/standard_opencv_headers.h>
	#include <shared_files/standard_transform_communication_headers.h>

	/********************
	External LIbraries Includes
	********************/
	#include <shared_files/RelativeFrame.h>
	#include <shared_files/RelativePoint.h>
	#include <shared_files/TransformNames.h>
	#include <shared_files/TopicNames.h>
	#include <shared_files/SettingsTransform.h>

	#include <pcl_ros/point_cloud.h>
	#include <pcl/point_types.h>
	#include <pcl_ros/transforms.h>

	#include <tf2_geometry_msgs/tf2_geometry_msgs.h>
	//#include <simulator/PubManager.h>
class Path
{
	private:
		ros::NodeHandle handle_;
		bool initialized;
		std::vector<geometry_msgs::Transform> path_transformations;
		std::vector<geometry_msgs::Transform> incremental_transforms;
		//class declarations
		//pcl::PointCloud<pcl::PointXYZ> PointCloud;
		public:
	//constructors
			Path();
	//global declarations
			void newPath(std::string dir,std::string p);
			geometry_msgs::Transform getTransform(int index);
			int getTotalPoses();
	//	void newMap(std::string dir,std::string w_name);
	//action library functions
	//	void configServerAction(const simulator::configSimulationGoalConstPtr &goal);
	//	void startSimulation(const simulator::newSimulationGoalConstPtr &goal);


};

#endif