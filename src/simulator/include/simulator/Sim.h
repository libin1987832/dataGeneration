#ifndef SIMULATION_MANAGER_HEADER_H
	#define SIMULATION_MANAGER_HEADER_H

	#include <shared_files/standard_ros_headers.h>
	#include <shared_files/standard_c_headers.h>
	#include <shared_files/standard_action_headers.h>
	#include <shared_files/standard_boost_headers.h>
	#include <shared_files/standard_transform_headers.h>
	#include <shared_files/standard_opencv_headers.h>
	#include <shared_files/standard_transform_communication_headers.h>


	//#include <image_transport/image_transport.h>
	//#include <cv_bridge/cv_bridge.h>
	//#include <sensor_msgs/image_encodings.h>  //image transport headers (default)

	#include <simulator/configSimulationAction.h>
	#include <simulator/newSimulationAction.h>
	/********************
	External LIbraries Includes
	********************/
	#include <shared_files/RelativeFrame.h>
	#include <shared_files/RelativePoint.h>
	#include <blackbox_matcher/configCameraAction.h>
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

class Sim
{
	private:
		//class declarations
			ros::NodeHandle handle_;
			int total_frames_;
			bool wait_front,visualize_;
			pcl::PointCloud<pcl::PointXYZ> PointCloud;
		//Transform declarations
	
			shared_files::TransformNames sim,noise,rectified;
			shared_files::TopicNames topic_settings_;
			//Camera Static transforms
			geometry_msgs::Transform settings_cm_l,settings_cm_r;
			geometry_msgs::Transform settings_r_cv,settings_l_cv;
			geometry_msgs::Transform baseline_r_to_l;
	
		//Transform Declarations
			//original simulation broadcasters & Transforms
				tf2_ros::TransformBroadcaster bc_s_cm,bc_s_left_cv,bc_s_cm_left,bc_s_cm_right,bc_s_right_cv;
				geometry_msgs::TransformStamped s_cm_to_left,s_left_to_cv,s_cm_to_right,s_right_to_cv,s_cm;
			//rectified transforms
				geometry_msgs::TransformStamped r_cm_to_left,r_left_to_cv,r_cm_to_right,r_right_to_cv,r_cm;
			//noisy transforms
				geometry_msgs::TransformStamped n_cm_to_left,n_left_to_cv,n_cm_to_right,n_right_to_cv,n_cm;
	
				//PATH transforms & output Information
				std::vector<geometry_msgs::TransformStamped> path_transforms_;
				std::vector<geometry_msgs::TransformStamped> incremental_transforms_;
				std::vector<shared_files::RelativeFrame> sensor_frames_;
			//OUTPUT PUBLISHERS
				ros::Publisher pub_rel_output;
				ros::Publisher pub_original_map;
			//Publisher Methods
			void pubCurrentTransforms(ros::Time time_computed);
			//ros::Publisher pub_full_path;
		//class methods
			void genNames(std::string u,std::string s,std::string n,std::string r,std::string w);
			void genTopicNames(std::string u,std::string s,std::string n,std::string r,std::string w);
			void genTransformNames(std::string u,std::string s,std::string n,std::string r,std::string w);
			void genBodyTransforms();
			void genPointCloud();
			void genPath();
			void genRelativeTransformations();
			void addToRelativeFrame(const pcl::PointCloud<pcl::PointXYZ> &relative_pcl,int frame_no);
			void extractBaseLineParameters();
			void configureOtherNodes();
		//action servers
			actionlib::SimpleActionServer<simulator::configSimulationAction> *server_config_;
			actionlib::SimpleActionServer<simulator::newSimulationAction> *server_new_simulation_;
			//callback functions
				void configServerAction(const simulator::configSimulationGoalConstPtr &goal);
				void startSimulation(const simulator::newSimulationGoalConstPtr &goal);
		//action clients
			actionlib::SimpleActionClient<blackbox_matcher::configCameraAction> *client_config_matcher_;
	public:
	//constructors
		Sim();
	//global declarations
	//action library functions
	//	void configServerAction(const simulator::configSimulationGoalConstPtr &goal);
	//	void startSimulation(const simulator::newSimulationGoalConstPtr &goal);


};

#endif