#include "sequence_manager/Sequence.h"


Sequence::Sequence()
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
	simulator_name+="/config";
	client_config_= new actionlib::SimpleActionClient<simulator::configSimulationAction>(simulator_name,true);
	client_config_->waitForServer();
	ros::param::get("Names/Simulator",simulator_name);
	simulator_name+="/newSimulation";
	client_new_simulation_= new actionlib::SimpleActionClient<simulator::newSimulationAction>(simulator_name,true);
	client_new_simulation_->waitForServer();
	
	
	ROS_INFO_STREAM(""<<ros::this_node::getName()<<"--  Initialized");

}
											  

							
void Sequence::start()
{	
	ros::Rate r(loop_rate_);
	action_completed_=false;
	while((ros::ok())&&(action_completed_==false))
	{
		if(action_start_)
		{
			action_start_=false;
			pathcount=0;
			worldcount=0;
			totalcount=0;

			//TODO GENERATE A TRUly random identifier
			config_g_.world_name.data="world";
			config_g_.new_world.data=true;
			config_g_.path_name.data="path";
			config_g_.new_path.data=true;
			config_g_.unique_id.data="one";
			config_g_.original_id.data="simulation";
			config_g_.ideal_id.data="ideal";
			config_g_.noisy_id.data="noise";
			config_g_.new_camera.data=true;
			config_g_.visualize.data=true;
			config_g_.generate_graph.data=true;
			
			client_config_->sendGoalAndWait(config_g_);
			
			simulator::newSimulationGoal tempg;
			
			client_new_simulation_->sendGoal(tempg,
						boost::bind(&Sequence::doneNewSimulation,this,_1,_2),
						actionlib::SimpleActionClient<simulator::newSimulationAction>::SimpleActiveCallback(),
						actionlib::SimpleActionClient<simulator::newSimulationAction>::SimpleFeedbackCallback());
			
		}
		ros::spinOnce();
		r.sleep();
	}
}

/****************************************8

ACTION LIBRARY CALLBACKS

********************************************/

void Sequence::doneNewSimulation(const actionlib::SimpleClientGoalState& state,
					   const simulator::newSimulationResultConstPtr& result)
{
	ROS_INFO_STREAM("COMPLETED");
	//action_completed_=true;//TODO uncomment
}

/****************************************8

INTERNAL METHODS

********************************************/		

