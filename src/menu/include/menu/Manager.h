#ifndef MANAGER_CLASS_HEADER_H
	#define MANAGER_CLASS_HEADER_H
	
	#include <shared_files/standard_ros_headers.h>
	#include <shared_files/standard_c_headers.h>
	#include <shared_files/standard_action_headers.h>
	#include <shared_files/standard_boost_headers.h>
	#include <shared_files/standard_transform_headers.h>
	//INCLUDES FOR CUSTOM ACTIONS AND MESSAGES
	#include <simulator/genDataAction.h>
//	#include <simulator/newSimulationAction.h>


class Manager
{
	private:
		//class declarations
			int loop_rate_;
			ros::NodeHandle handle_;
			bool action_completed_;
		//simulation parameters
			std::string name_world,name_path,name_id;
			//simulator::genDataGoal data_g_;
			int pathcount,worldcount,totalcount;
		//action library Clients
			actionlib::SimpleActionClient<simulator::genDataAction> *client_data_;
		/*	actionlib::SimpleActionClient<simulator::newSimulationAction> *client_new_simulation_;
		//Action Callbacks
			void doneNewSimulation(const actionlib::SimpleClientGoalState& state,
								   const simulator::newSimulationResultConstPtr& result);
		//internal methods
*/
	public:
		//CONSTRUCTOR
		Manager();
		bool action_start_;
		//Class Methods
		void start();
};

#endif