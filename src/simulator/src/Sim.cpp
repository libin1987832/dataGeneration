#include "simulator/Sim.h"

Sim::Sim()
{
	std::stringstream ss_name_server;
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
	
	ROS_INFO_STREAM(ros::this_node::getName()<<"-- Initialized");
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

	ROS_INFO_STREAM("CONFIGURED");
	server_config_->setSucceeded();
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
															 
															 
													
/****************************************8

ACTION LIBRARY CALLBACKS
********************************************/
//void Sim::callbackConfig(const actionlib::SimpleClientGoalState& state,
//					const blackbox_matcher::configCameraResultConstPtr& result)
//{
	//wait_front=false;
//}


/****************************************8

INTERNAL METHODS

********************************************/	

void Sim::genNames(std::string u,std::string s,std::string n,std::string r,std::string w)
{
	genTransformNames(u,s,n,r,w);
	genTopicNames(u,s,n,r,w);

}

void Sim::genTransformNames(std::string u,std::string s,std::string n,std::string r,std::string w)
{
	
	std::string start,relstart,buffer;
	std::string cm_n,l_n,r_n,l_cv_n,r_cv_n;//name Prefixes
	cm_n="centre_mass";
	l_n="left_frame";
	r_n="right_frame";
	l_cv_n="cv_left_frame";
	r_cv_n="cv_right_frame";
	//Transform Names Generation
	//Simulation
	start="";
	start+=u;
	start+="/";
	//world
	buffer=start;
	buffer+=w;
	//store it in each frame
	sim.world_frame.data=buffer;
	noise.world_frame.data=buffer;
	rectified.world_frame.data=buffer;
	//TODO publishers
	
	//////////
	////sim
	/////
	sim.ID.data=s;
	relstart=start;
	relstart+=s;
	relstart+="/";	

	buffer=relstart;
	buffer+=cm_n;	
	sim.cm.data=buffer;
	
	buffer=relstart;
	buffer+=l_n;
	sim.left.data=buffer;
	
	buffer=relstart;
	buffer+=r_n;
	sim.right.data=buffer;
	
	buffer=relstart;
	buffer+=l_cv_n;
	sim.left_cv.data=buffer;
	
	buffer=relstart;
	buffer+=r_cv_n;
	sim.right_cv.data=buffer;
		//////////
	////noise
	/////
	noise.ID.data=n;
	relstart=start;
	relstart+=n;
	relstart+="/";	

	buffer=relstart;
	buffer+=cm_n;	
	noise.cm.data=buffer;
	
	buffer=relstart;
	buffer+=l_n;
	noise.left.data=buffer;
	
	buffer=relstart;
	buffer+=r_n;
	noise.right.data=buffer;
	
	buffer=relstart;
	buffer+=l_cv_n;
	noise.left_cv.data=buffer;
	
	buffer=relstart;
	buffer+=r_cv_n;
	noise.right_cv.data=buffer;
		//////////
	////rectified
	/////
	rectified.ID.data=r;
	relstart=start;
	relstart+=r;
	relstart+="/";	

	buffer=relstart;
	buffer+=cm_n;	
	rectified.cm.data=buffer;
	
	buffer=relstart;
	buffer+=l_n;
	rectified.left.data=buffer;
	
	buffer=relstart;
	buffer+=r_n;
	rectified.right.data=buffer;
	
	buffer=relstart;
	buffer+=l_cv_n;
	rectified.left_cv.data=buffer;
	
	buffer=relstart;
	buffer+=r_cv_n;
	rectified.right_cv.data=buffer;
	
}

void Sim::genTopicNames(std::string u,std::string s,std::string n,std::string r,std::string w)
{
	std::string rel,match,estimate,map;
	std::string start,buffer;
	//TODO Get from parameter server, the name prefixes
	
	rel="relative_point_cloud";
	match="pixel_matches";
	estimate="motion_estimation";
	map="point_map";
	
	start="";
	start+="/";
	start+=u;
	start+="/";
	
	buffer=start;
	buffer+=rel;
	topic_settings_.RelativeCloudTopic.data=buffer;

	
	buffer=start;
	buffer+=match;
	topic_settings_.MatchesTopic.data=buffer;
	
	buffer=start;
	buffer+=n;
	buffer+="/";
	buffer+=estimate;
	topic_settings_.NoisyEstimationTopic.data=buffer;
	
		
	buffer=start;
	buffer+=s;
	buffer+="/";
	buffer+=estimate;
	topic_settings_.OriginalTopic.data=buffer;

	buffer=start;
	buffer+=r;
	buffer+="/";
	buffer+=estimate;
	topic_settings_.RectifiedEstimationTopic.data=buffer;
	
	buffer=start;
	buffer+=map;
	buffer+="/";
	buffer+=w;
	topic_settings_.MapTopic.data=buffer;
}

void Sim::genBodyTransforms()
{
	
	//Create the Transforms
	double tempdouble,yaw,pitch,roll;//holds double value from parameter server
	geometry_msgs::Transform temptransform;
	tf2::Quaternion tempquat;
	
	//Left Camera Settings
	
	ros::param::get("/LeftCam/Translation/X",tempdouble);
	temptransform.translation.x=tempdouble;
	ros::param::get("/LeftCam/Translation/Y",tempdouble);
	temptransform.translation.y=tempdouble;
	ros::param::get("/LeftCam/Translation/Z",tempdouble);
	temptransform.translation.z=tempdouble;
	
	ros::param::get("/LeftCam/Rotation/Yaw",yaw);
	ros::param::get("/LeftCam/Rotation/Pitch",pitch);
	ros::param::get("/LeftCam/Rotation/Roll",roll);
	yaw*=(1/180.0)*M_PI; //convert to radians
	pitch*=(1/180.0)*M_PI;
	roll*=(1/180.0)*M_PI;
	
	tempquat.setRPY(roll,pitch,yaw);
	temptransform.rotation.x=tempquat.x();
	temptransform.rotation.y=tempquat.y();
	temptransform.rotation.z=tempquat.z();
	temptransform.rotation.w=tempquat.w();
	
	settings_cm_l=temptransform;
	//To opencv frame
	temptransform.translation.x=0.0;
	temptransform.translation.y=0.0;
	temptransform.translation.z=0.0;
	yaw=0.0;
	pitch=0.0;
	roll=-0.5*M_PI;
	
	tempquat.setRPY(roll,pitch,yaw);
	temptransform.rotation.x=tempquat.x();
	temptransform.rotation.y=tempquat.y();
	temptransform.rotation.z=tempquat.z();
	temptransform.rotation.w=tempquat.w();
	
	settings_l_cv=temptransform;
	//Right Camera Settings
	ros::param::get("/RightCam/Translation/X",tempdouble);
	temptransform.translation.x=tempdouble;
	ros::param::get("/RightCam/Translation/Y",tempdouble);
	temptransform.translation.y=tempdouble;
	ros::param::get("/RightCam/Translation/Z",tempdouble);
	temptransform.translation.z=tempdouble;
	
	ros::param::get("/RightCam/Rotation/Yaw",yaw);
	ros::param::get("/RightCam/Rotation/Pitch",pitch);
	ros::param::get("/RightCam/Rotation/Roll",roll);
	yaw*=(1/180.0)*M_PI; //convert to radians
	pitch*=(1/180.0)*M_PI;
	roll*=(1/180.0)*M_PI;
	
	tempquat.setRPY(roll,pitch,yaw);
	temptransform.rotation.x=tempquat.x();
	temptransform.rotation.y=tempquat.y();
	temptransform.rotation.z=tempquat.z();
	temptransform.rotation.w=tempquat.w();

	settings_cm_r=temptransform;
	
	//convert to opencv co ordinates
	temptransform.translation.x=0.0;
	temptransform.translation.y=0.0;
	temptransform.translation.z=0.0;
	
	yaw=0.0;
	pitch=0.0;
	roll=-0.5*M_PI;
	
	tempquat.setRPY(roll,pitch,yaw);
	temptransform.rotation.x=tempquat.x();
	temptransform.rotation.y=tempquat.y();
	temptransform.rotation.z=tempquat.z();
	temptransform.rotation.w=tempquat.w();
	
	settings_r_cv=temptransform;
	/////////////	
	//Populate Stamped Transforms
	////////////
		//Original
	s_cm.header.frame_id=sim.world_frame.data;
	s_cm.child_frame_id=sim.cm.data;
	
	s_cm_to_left.transform=settings_cm_l;
	s_cm_to_left.header.frame_id=sim.cm.data;
	s_cm_to_left.child_frame_id=sim.left.data;
	
	s_left_to_cv.transform=settings_l_cv;
	s_left_to_cv.header.frame_id=sim.left.data;
	s_left_to_cv.child_frame_id=sim.left_cv.data;
	
	s_cm_to_right.transform=settings_cm_r;
	s_cm_to_right.header.frame_id=sim.cm.data;
	s_cm_to_right.child_frame_id=sim.right.data;
	
	s_right_to_cv.transform=settings_r_cv;
	s_right_to_cv.header.frame_id=sim.right.data;
	s_right_to_cv.child_frame_id=sim.right_cv.data;
		//Noisy
	n_cm.header.frame_id=noise.world_frame.data;
	n_cm.child_frame_id=noise.cm.data;
	
	n_cm_to_left.transform=settings_cm_l;
	n_cm_to_left.header.frame_id=noise.cm.data;
	n_cm_to_left.child_frame_id=noise.left.data;
	
	n_left_to_cv.transform=settings_l_cv;
	n_left_to_cv.header.frame_id=noise.left.data;
	n_left_to_cv.child_frame_id=noise.left_cv.data;
	
	n_cm_to_right.transform=settings_cm_r;
	n_cm_to_right.header.frame_id=noise.cm.data;
	n_cm_to_right.child_frame_id=noise.right.data;
	
	n_right_to_cv.transform=settings_r_cv;
	n_right_to_cv.header.frame_id=noise.right.data;
	n_right_to_cv.child_frame_id=noise.right_cv.data;
		//Rectified
	r_cm.header.frame_id=rectified.world_frame.data;
	r_cm.child_frame_id=rectified.cm.data;
	
	r_cm_to_left.transform=settings_cm_l;
	r_cm_to_left.header.frame_id=rectified.cm.data;
	r_cm_to_left.child_frame_id=rectified.left.data;
	
	r_left_to_cv.transform=settings_l_cv;
	r_left_to_cv.header.frame_id=rectified.left.data;
	r_left_to_cv.child_frame_id=rectified.left_cv.data;
	
	r_cm_to_right.transform=settings_cm_r;
	r_cm_to_right.header.frame_id=rectified.cm.data;
	r_cm_to_right.child_frame_id=rectified.right.data;
	
	r_right_to_cv.transform=settings_r_cv;
	r_right_to_cv.header.frame_id=rectified.right.data;
	r_right_to_cv.child_frame_id=rectified.right_cv.data;

	
}

void Sim::genPointCloud()
{
	PointCloud.clear();
		
	int seedstart,totalpoints;
	double AvgZ,AvgY,AvgX,stdX,stdY,stdZ;
	ros::param::get("/WorldSettings/Mean_Z",AvgZ);
	ros::param::get("/WorldSettings/Mean_Y",AvgY);
	ros::param::get("/WorldSettings/Mean_X",AvgX);
	
	ros::param::get("/WorldSettings/StdDev_Z",stdZ);
	ros::param::get("/WorldSettings/StdDev_Y",stdY);
	ros::param::get("/WorldSettings/StdDev_X",stdX);
	
	ros::param::get("/WorldSettings/SeedStart",seedstart);
	ros::param::get("/WorldSettings/TotalPoints",totalpoints);

	boost::mt19937 rng(seedstart);
	boost::normal_distribution<> X_distribution(AvgX,stdX);
	boost::normal_distribution<> Y_distribution(AvgY,stdY);
	boost::normal_distribution<> Z_distribution(AvgZ,stdZ);
	boost::variate_generator<boost::mt19937&,boost::normal_distribution<> > Xvar_nor(rng,X_distribution);
	boost::variate_generator<boost::mt19937&,boost::normal_distribution<> > Yvar_nor(rng,Y_distribution);
	boost::variate_generator<boost::mt19937&,boost::normal_distribution<> > Zvar_nor(rng,Z_distribution);
	
	for(int index=0;index<totalpoints;index++)
	{
		double d1,d2,d3;
		pcl::PointXYZ Pnt;
		Pnt.x=Xvar_nor();
		Pnt.y= Yvar_nor();
		Pnt.z= Zvar_nor();
		PointCloud.push_back(Pnt);
	}
	PointCloud.header.frame_id=sim.world_frame.data;
	PointCloud.header.stamp=pcl_conversions::toPCL(ros::Time::now());
	pub_original_map=handle_.advertise<pcl::PointCloud<pcl::PointXYZ> > (topic_settings_.MapTopic.data,1,true);
	pub_original_map.publish(PointCloud);
	
}

void Sim::genPath()
{
	
	tf2::Transform pose_cm_to_world;
	//generate the pose transforms
	
	geometry_msgs::TransformStamped buffer_stamped;	
	buffer_stamped.header.frame_id=sim.world_frame.data;
	buffer_stamped.child_frame_id=sim.cm.data;
	for(int Index=0;Index<3;Index++)
	{
		geometry_msgs::Transform tf_world_to_cm;
		tf2::Vector3 translation(0.0,15.0*(((double) Index)/8.0),0.0);
		pose_cm_to_world.setOrigin(translation);
		
		tf2::Quaternion rot;
		rot.setRPY(0,0,0);	
		pose_cm_to_world.setRotation(rot);
		tf_world_to_cm=tf2::toMsg(pose_cm_to_world);
		
		buffer_stamped.transform=tf_world_to_cm;	
		
		path_transforms_.push_back(buffer_stamped);
	}	
	
	//TODO get setings from parameter server

/*	for(int Index=1;Index<=2;Index++)
	{
		geometry_msgs::Transform tf_world_to_cm;
		tf2::Vector3 translation(0.0,15.0,0.0);
		pose_cm_to_world.setOrigin(translation);
		
		
		double angle;
		angle= 1.0/((double) Index);
		angle*=M_PI;
		
		tf2::Quaternion rot;
		rot.setRPY(0,0,angle);	
		pose_cm_to_world.setRotation(rot);
		tf_world_to_cm=tf2::toMsg(pose_cm_to_world.inverse());
		
		buffer_stamped.transform=tf_world_to_cm;			
		path_transforms_.push_back(buffer_stamped);

	}*/

	/*
	for(int Index=0;Index<=40;Index++)
	{
		geometry_msgs::Transform tf_world_to_cm;
		tf2::Vector3 translation((double) Index,15.0-((double) Index),3.0*sin(2*M_PI*(((double)Index)/40.0)));
		pose_cm_to_world.setOrigin(translation);
		
		double angler,anglep,angley;
		angley=sin(2*M_PI*((double)Index)/10.0);
		angler=sin(2*M_PI*((double)Index)/10.0);
		anglep=sin(2*M_PI*((double)Index)/10.0);

		tf2::Quaternion rot;
		rot.setRPY(M_PI/18.0*angler,M_PI/18.0*anglep,5.*M_PI/4.0 + M_PI/18.0*angley);
		pose_cm_to_world.setRotation(rot);
		tf_world_to_cm=tf2::toMsg(pose_cm_to_world.inverse());

		buffer_stamped.transform=tf_world_to_cm;			
		path_transforms_.push_back(buffer_stamped);
	}
	
*/
	
}

///////////////
/////////Publisher Methods
//////////////

void Sim::pubCurrentTransforms(ros::Time time_computed)
{
	//original
	s_cm_to_left.header.stamp=time_computed;
	s_left_to_cv.header.stamp=time_computed;
	s_cm_to_right.header.stamp=time_computed;
	s_right_to_cv.header.stamp=time_computed;
	s_cm.header.stamp=time_computed;
	//rectified
	r_cm_to_left.header.stamp=time_computed;
	r_left_to_cv.header.stamp=time_computed;
	r_cm_to_right.header.stamp=time_computed;
	r_right_to_cv.header.stamp=time_computed;
	r_cm.header.stamp=time_computed;
	//noisy
	n_cm_to_left.header.stamp=time_computed;
	n_left_to_cv.header.stamp=time_computed;
	n_cm_to_right.header.stamp=time_computed;
	n_right_to_cv.header.stamp=time_computed;
	n_cm.header.stamp=time_computed;
	///Publish transforms
	
	bc_s_cm.sendTransform(s_cm);
	bc_s_left_cv.sendTransform(s_left_to_cv);
	bc_s_cm_left.sendTransform(s_cm_to_left);
	bc_s_cm_right.sendTransform(s_cm_to_right);
	bc_s_right_cv.sendTransform(s_right_to_cv);


}

void Sim::genRelativeTransformations()
{

	tf2_ros::Buffer my_buffer;
	tf2_ros::TransformListener my_listener(my_buffer);
	pcl::PointCloud<pcl::PointXYZ> relative_cloud;
	relative_cloud.header.frame_id=sim.left_cv.data;
	ros::Time previous_simulated_time;

	sensor_frames_.clear();
	for(int pose_index=0;pose_index<path_transforms_.size();pose_index++)
	{
		geometry_msgs::TransformStamped world_to_cm_tf;
		s_cm=path_transforms_[pose_index];
		bool transformed_complete=false;
		while(!transformed_complete)
		{
			ros::Time simulated_time=ros::Time::now();
			pubCurrentTransforms(simulated_time);
			try
			{
				tf::Quaternion m;
				tf::Vector3 k;
				world_to_cm_tf=my_buffer.lookupTransform(sim.left_cv.data,sim.world_frame.data,simulated_time);
				tf::Quaternion conversion_quat(world_to_cm_tf.transform.rotation.x,
											   world_to_cm_tf.transform.rotation.y,
											   world_to_cm_tf.transform.rotation.z,
											   world_to_cm_tf.transform.rotation.w);
				
				tf::Vector3 conversion_vect(world_to_cm_tf.transform.translation.x,
											world_to_cm_tf.transform.translation.y,
											world_to_cm_tf.transform.translation.z);
				tf::Transform rigid_transform_world_to_rel(conversion_quat,conversion_vect);
				pcl_ros::transformPointCloud(PointCloud,relative_cloud,rigid_transform_world_to_rel);
				if(pose_index>0)
				{
					//calculate incremental change
					geometry_msgs::TransformStamped incremental_change_tf;
					incremental_change_tf=my_buffer.lookupTransform(sim.cm.data,simulated_time,sim.cm.data,previous_simulated_time,sim.world_frame.data);
					incremental_transforms_.push_back(incremental_change_tf);
				}
				previous_simulated_time=simulated_time;			
				transformed_complete=true;
			}
			catch(tf2::TransformException &ex)
			{
				//ROS_WARN("%s",ex.what());
				continue;
			}
		}
		addToRelativeFrame(relative_cloud,pose_index);
		
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

void Sim::extractBaseLineParameters()
{
	tf2_ros::Buffer my_buffer;
	tf2_ros::TransformListener my_listener(my_buffer);
	bool transformed_complete=false;
	while(!transformed_complete)
		{
			ros::Time simulated_time=ros::Time::now();
			s_cm=path_transforms_[0];
			pubCurrentTransforms(simulated_time);
			try
			{
				geometry_msgs::TransformStamped temp_baseline;
				temp_baseline=my_buffer.lookupTransform(sim.left_cv.data,sim.right_cv.data,simulated_time);//Transform from camera to world frame (right to left)
				baseline_r_to_l=temp_baseline.transform;
				transformed_complete=true;
			}
			catch(tf2::TransformException &ex)
			{
				//ROS_WARN("%s",ex.what());
				continue;
			}
		}
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
