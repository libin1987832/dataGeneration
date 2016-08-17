#include "simulator/Sim.h"

Sim::Sim()
{
	std::stringstream ss_name_server;
	ss_name_server<<ros::this_node::getName()<<"/data";
	server_data_= new actionlib::SimpleActionServer<simulator::genDataAction>
								(ss_name_server.str(),
								 boost::bind(&Sim::genDataServerAction,this,_1),false);
	server_data_->start();
	
	ROS_INFO_STREAM(ros::this_node::getName()<<"-- Initialized");
	ros::spin();
}

void Sim::genDataServerAction(const simulator::genDataGoalConstPtr &goal)
{
	bool error=false;
	_publishers.clear();
	PubManager single_seq_;
	if(goal->new_prefixes.data==true)
	{
		single_seq_.set_transform_prefixes(goal->cm.data,goal->l.data,goal->r.data,goal->lcv.data,goal->rcv.data);
	}
	single_seq_.set_name(goal->unique_id.data,goal->world_name.data,goal->path_name.data);
	single_seq_.genNames();
	if(!single_seq_.loadCamera("/home/ryan/GitHub_WorkSpace/data/defaultConfig.xml"))
	{
		if(goal->load_world.data)
		{
			///load
		}
		else
		{
			single_seq_.genWorld(goal->world_dir.data);
		}
		if(goal->load_path.data)
		{
			//load a path
		}
		else
		{
			single_seq_.genPath(goal->path_dir.data);
		}
		
		if(!error)
		{
			single_seq_.genRelative("s");
			single_seq_.playback(0.2);
			
			std::string relative_directory,data_directory;
			ros::param::get("/Options/RelativeDir",relative_directory);
			ros::param::get("/Options/DataDir",data_directory);
			
			single_seq_.saveData(relative_directory,data_directory);
			
		}
		
	}
	else
	{	
		ROS_INFO_STREAM("Camera load fail");
		error=true;
	}
		
		
		
	if(error)
	{
		server_data_->setAborted();
		ROS_INFO_STREAM("Aborted");
	}
	else
	{
		server_data_->setSucceeded();
		ROS_INFO_STREAM("DATA GENERATED");
	}
	
}

/*	std::stringstream ss_name_server;
	ss_name_server<<ros::this_node::getName()<<"/config";
	server_config_= new actionlib::SimpleActionServer<simulator::configSimulationAction>
								(ss_name_server.str(),
								 boost::bind(&Sim::configServerAction,this,_1),false);
	server_config_->start();	
	ss_name_server.str("");
	ss_name_server<<ros::this_node::getName()<<"/newSimulation";
	server_new_simulation_=new actionlib::SimpleActionServer<simulator::newSimulationAction>
															(ss_name_server.str(),
															 boost::bind(&Sim::startSimulation,this,_1),false);
	server_new_simulation_->start();												 
	ros::spinOnce();
		
	std::string matcher_name;
	ros::param::get("/Names/Matcher",matcher_name);
	matcher_name+="/config";
	
	client_config_matcher_= new actionlib::SimpleActionClient<blackbox_matcher::configCameraAction>(matcher_name,true);
	client_config_matcher_->waitForServer();
	
	
	ros::spin();
}


void Sim::configServerAction(const simulator::configSimulationGoalConstPtr &goal)
{
	genNames(goal->unique_id.data,goal->original_id.data,goal->noisy_id.data,goal->ideal_id.data,goal->world_name.data);
	genBodyTransforms();
	//TODO generate path and points only if requested
//	if(goal->new_world.data)
//	{
		genPointCloud();
	//}
	//if(goal->new_path.data)
//	{
		genPath();
	//}
		genRelativeTransformations();
		extractBaseLineParameters();
	
	//

	//publish other topics
	pub_rel_output=handle_.advertise<shared_files::RelativeFrame>(topic_settings_.RelativeCloudTopic.data,10,false);
	
	configureOtherNodes();

}
															 
void Sim::startSimulation(const simulator::newSimulationGoalConstPtr &goal)
{
	bool sequence_finished=false;
	bool close_requested=false;
	double looprate;
	int frame_number=0;
	ros::param::get("/PathSettings/RefreshRate",looprate);

	ros::Duration t(1);
	t.sleep();
	ros::Rate loop(looprate);
	ROS_INFO_STREAM("STREAMING DATA");
	int total_frames_=path_transforms_.size();
	while((ros::ok())&&(!sequence_finished))
	{	
		if(!server_new_simulation_->isPreemptRequested())
		{
			if(frame_number<total_frames_)
			{		
				int t;
				t=frame_number+1;
				ROS_INFO_STREAM("publishing "<<t<<"/"<<total_frames_);
				ros::Time current_time;
				current_time=ros::Time::now();
				s_cm=path_transforms_[frame_number];
				
				pubCurrentTransforms(current_time);
				pub_rel_output.publish(sensor_frames_[frame_number]);		
				frame_number++;
				if(frame_number>=total_frames_)
				{
					//TODO wait for response
					ROS_INFO_STREAM("FINISHED FRAMES, CLOSING");
					sequence_finished=true;
				}
			
			}
		}
		else
		{
			sequence_finished=true;
			close_requested=true;
		}
		ros::spinOnce();
		loop.sleep();			  
	}
	
	if(close_requested)
	{
		server_new_simulation_->setPreempted();
	}
	else
	{
		server_new_simulation_->setSucceeded();
	}
}
															 
															 
													
/////////////////////////////////////////////

ACTION LIBRARY CALLBACKS
/////////////////////////////////////////////////
//void Sim::callbackConfig(const actionlib::SimpleClientGoalState& state,
//					const blackbox_matcher::configCameraResultConstPtr& result)
//{
	//wait_front=false;
//}


/////////////////////////////////////////

INTERNAL METHODS

//////////////////////////////////////////



void Sim::genPointCloud()
{-
	
}

void Sim::genPath()
{
	
	-
	

	
}


void Sim::genRelativeTransformations()
{

	-
	}	
}

void Sim::addToRelativeFrame(const pcl::PointCloud<pcl::PointXYZ> &relative_pcl,int frame_no)
{
	shared_files::RelativeFrame ANS;
	ANS.FrameNumber.data=frame_no;
	for(int point_index=0;point_index<PointCloud.size();point_index++)
	{
		if(relative_pcl.at(point_index).z>0)//only project if it is infront of the camera
		{
			shared_files::RelativePoint temp_point;
			temp_point.coord.x=relative_pcl.at(point_index).x;
			temp_point.coord.y=relative_pcl.at(point_index).y;
			temp_point.coord.z=relative_pcl.at(point_index).z;
			temp_point.identification.data=point_index;
			ANS.PointCloudRelative.push_back(temp_point);	
		}
	}
	sensor_frames_.push_back(ANS);
}



void Sim::configureOtherNodes()
{
	
	//--CONFIGURE OTHER NODES --//
	//--blackbox--//
	blackbox_matcher::configCameraGoal config_goal;
	shared_files::SettingsTransform n_t;
	shared_files::SettingsTransform r_t;
	//TODO double check the topic names are not required
	config_goal.base=baseline_r_to_l;
	
	n_t.w_cm=n_cm;
	n_t.cm_l=n_cm_to_left;
	n_t.l_cv=n_left_to_cv;
	n_t.cm_r=n_cm_to_right;
	n_t.r_cv=n_right_to_cv;
	
	r_t.w_cm=r_cm;
	r_t.cm_l=r_cm_to_left;
	r_t.l_cv=r_left_to_cv;
	r_t.cm_r=r_cm_to_right;
	r_t.r_cv=r_right_to_cv;
	
	config_goal.n_t=n_t;
	config_goal.r_t=r_t;
	config_goal.settings_topic=topic_settings_;
	
	client_config_matcher_->sendGoalAndWait(config_goal);
}
*/