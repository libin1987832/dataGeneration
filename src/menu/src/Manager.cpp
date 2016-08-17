#include "menu/Manager.h"


Manager::Manager()
{
	loop_rate_=1;
	std::stringstream ss_name_server;
	std::string simulator_name;
	action_completed_=false;
	action_start_=false;
	pathcount=0;
	worldcount=0;
	totalcount=0;

	
	ros::param::get("/Names/Simulator",simulator_name);
	simulator_name+="/data";
	client_data_= new actionlib::SimpleActionClient<simulator::genDataAction>(simulator_name,true);
	client_data_->waitForServer();
	/*ros::param::get("Names/Simulator",simulator_name);
	simulator_name+="/newSimulation";
	client_new_simulation_= new actionlib::SimpleActionClient<simulator::newSimulationAction>(simulator_name,true);
	client_new_simulation_->waitForServer();
	*/
	
	ROS_INFO_STREAM(""<<ros::this_node::getName()<<"--  Initialized");

}
										  

							
void Manager::start()
{	
	simulator::genDataGoal data_g_;
	
	data_g_.world_name.data="world";
	data_g_.unique_id.data="one";
	data_g_.path_name.data="Path";
	data_g_.new_prefixes.data=false;
	data_g_.load_world.data=false;
	data_g_.world_dir.data="/home/ryan/GitHub_WorkSpace/data/pointcloud/world.xml";
	data_g_.load_path.data=false;
	data_g_.path_dir.data="/home/ryan/GitHub_WorkSpace/data/path/Path.xml";
	/*std_msgs/String cm
	std_msgs/String l
	std_msgs/String r
	std_msgs/String lcv
	std_msgs/String rcv*/
	
	client_data_->sendGoalAndWait(data_g_);
	
	ROS_INFO_STREAM("COMPLETED DATA gen");
	
}
/*
//////////////////////

//ACTION LIBRARY CALLBACKS

/////////////////////

void Sequence::doneNewSimulation(const actionlib::SimpleClientGoalState& state,
					   const simulator::newSimulationResultConstPtr& result)
{
	ROS_INFO_STREAM("COMPLETED");
	//action_completed_=true;//TODO uncomment
}

///////////////////////////////

///INTERNAL METHODS
////////////////////	
*/
