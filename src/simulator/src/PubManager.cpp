#include <simulator/PubManager.h>

PubManager::PubManager()
{
	set_transform_prefixes("centre_mass","left_frame","right_frame","cv_left_frame","cv_right_frame");
	set_name("one","world","path");

	
	std::string name;
	ros::param::get("/Names/Matcher",name);
	name+="/config";
	client_config_match_= new actionlib::SimpleActionClient<matcher::configMatchAction>(name,true);
	client_config_match_->waitForServer();
	
	ros::param::get("/Names/Matcher",name);
	name+="/save";
	client_save_match_=new actionlib::SimpleActionClient<matcher::saveMatchesAction>(name,true);
	client_save_match_->waitForServer();

}

////////////////////////////////////////
///////////Configuration functions
////////////////////////////////////
void PubManager::set_transform_prefixes(std::string cm,std::string l,std::string r,std::string lcv,std::string rcv)
{
	prefix_cm=cm;
	prefix_left=l;
	prefix_right=r;
	prefix_lcv=lcv;
	prefix_rcv=rcv;
}

void PubManager::set_name(std::string unique,std::string m,std::string p)
{
	unique_ID=unique;
	world_name=m;
	path_name=p;
}

void PubManager::genNames()
{
	//topic names
		std::string rel,match;
		//helper strings
		std::string start,buffer;
		rel="relative_point_cloud";
		match="pixel_matches";
	
		start="/";
		start+=unique_ID;
		start+="/";
		//Relative cloud topic
		buffer=start;
		buffer+=rel;
		topic_settings_.RelativeCloudTopic.data=buffer;
		//matcher topic
		buffer=start;
		buffer+=match;
		topic_settings_.MatchesTopic.data=buffer;
	//gen transform names
		//world frame name
		transform_settings_.ID.data=unique_ID;
		transform_settings_.world_frame.data=world_name;
		// cannot have"/" starting character for transform name
		start="";
		start+=unique_ID;
		start+="/";
		//centre of mass frame
		buffer=start;
		buffer+=prefix_cm;
		transform_settings_.cm.data=buffer;
		//left frame
		buffer=start;
		buffer+=prefix_left;
		transform_settings_.left.data=buffer;
		//right frame
		buffer=start;
		buffer+=prefix_right;
		transform_settings_.right.data=buffer;
		//lcv frame
		buffer=start;
		buffer+=prefix_lcv;
		transform_settings_.left_cv.data=buffer;
		//rcv frame
		buffer=start;
		buffer+=prefix_rcv;
		transform_settings_.right_cv.data=buffer;
	
		ROS_INFO_STREAM(topic_settings_);
		ROS_INFO_STREAM(transform_settings_);
		//Store the names in a transformstamped message
		cm.header.frame_id=world_name;
		cm.child_frame_id=transform_settings_.cm.data;
	
		left.header.frame_id=transform_settings_.cm.data;
		left.child_frame_id=transform_settings_.left.data;
	
		leftcv.header.frame_id=transform_settings_.left.data;
		leftcv.child_frame_id=transform_settings_.left_cv.data;
	
		right.header.frame_id=transform_settings_.cm.data;
		right.child_frame_id=transform_settings_.right.data;
	
		rightcv.header.frame_id=transform_settings_.right.data;
		rightcv.child_frame_id=transform_settings_.right_cv.data;
		
		
}

bool PubManager::loadCamera(std::string directory)
{
	bool Error=false;
	try
	{
		cv::FileStorage config(directory,cv::FileStorage::READ);
		ROS_INFO_STREAM("FILE FOUND");
		///////////////
		///////////////Load transforms
		//////////////
		cv::Mat tempR,tempT;
		cv::FileNode nodeleft,noderight,nodeext;
		geometry_msgs::Transform temptransform;
		tf2::Quaternion *tempquat;
		
		nodeleft=config["LeftCamera"];
		nodeext=nodeleft["extrinsics"];
		//left frame
		nodeext["T"]>>tempT;
		nodeext["R"]>>tempR;
		temptransform.translation.x=tempT.at<double>(0,0);
		temptransform.translation.y=tempT.at<double>(1,0);
		temptransform.translation.z=tempT.at<double>(2,0);
	
		tempquat=new tf2::Quaternion(tempR.at<double>(0,0),
									 tempR.at<double>(1,0),
									 tempR.at<double>(2,0),
									 tempR.at<double>(3,0));
		
		temptransform.rotation.x=tempquat->x();
		temptransform.rotation.y=tempquat->y();
		temptransform.rotation.z=tempquat->z();
		temptransform.rotation.w=tempquat->w();
		
		left.transform=temptransform;
		//left cv frame;
		nodeext["T_CV"]>>tempT;
		nodeext["R_CV"]>>tempR;
		temptransform.translation.x=tempT.at<double>(0,0);
		temptransform.translation.y=tempT.at<double>(1,0);
		temptransform.translation.z=tempT.at<double>(2,0);

		tempquat=new tf2::Quaternion(tempR.at<double>(0,0),
									 tempR.at<double>(1,0),
									 tempR.at<double>(2,0),
									 tempR.at<double>(3,0));
		
		temptransform.rotation.x=tempquat->x();
		temptransform.rotation.y=tempquat->y();
		temptransform.rotation.z=tempquat->z();
		temptransform.rotation.w=tempquat->w();

		leftcv.transform=temptransform;

		//RIGHT frame
		noderight=config["RightCamera"];
		nodeext=noderight["extrinsics"];
		
		
		nodeext["T"]>>tempT;
		nodeext["R"]>>tempR;
		temptransform.translation.x=tempT.at<double>(0,0);
		temptransform.translation.y=tempT.at<double>(1,0);
		temptransform.translation.z=tempT.at<double>(2,0);
		
		tempquat=new tf2::Quaternion(tempR.at<double>(0,0),
									 tempR.at<double>(1,0),
									 tempR.at<double>(2,0),
									 tempR.at<double>(3,0));
		
		temptransform.rotation.x=tempquat->x();
		temptransform.rotation.y=tempquat->y();
		temptransform.rotation.z=tempquat->z();
		temptransform.rotation.w=tempquat->w();
		right.transform=temptransform;
		//left cv frame;
		nodeext["T_CV"]>>tempT;
		nodeext["R_CV"]>>tempR;
		temptransform.translation.x=tempT.at<double>(0,0);
		temptransform.translation.y=tempT.at<double>(1,0);
		temptransform.translation.z=tempT.at<double>(2,0);
		
		tempquat=new tf2::Quaternion(tempR.at<double>(0,0),
									 tempR.at<double>(1,0),
									 tempR.at<double>(2,0),
									 tempR.at<double>(3,0));
		
		temptransform.rotation.x=tempquat->x();
		temptransform.rotation.y=tempquat->y();
		temptransform.rotation.z=tempquat->z();
		temptransform.rotation.w=tempquat->w();
		rightcv.transform=temptransform;
		
		config.release();
		pub_rel_output = handle_.advertise<shared_files::RelativeFrame>(topic_settings_.RelativeCloudTopic.data, 100);
		matcher::configMatchGoal tempg;
		tempg.TopicName=topic_settings_.RelativeCloudTopic;
		tempg.CameraDirectory.data=directory;
		
		client_config_match_->sendGoalAndWait(tempg);
		
		ROS_INFO_STREAM("Camera options configured from: "<<directory);
	}
   	catch(cv::Exception& e)
   	{
    	const char * err_msg = e.what();
		//ROS_WARN("%s",ex.what());
		ROS_INFO_STREAM(e.what());
		Error=true;
	}
	return Error;
}

void PubManager::genWorld(std::string dir)
{
	current_world.newMap(dir,world_name);
	
}

void PubManager::genPath(std::string dir)
{
	current_path.newPath(dir,path_name);
}

bool PubManager::loadPath(std::string dir)
{
}

bool PubManager::loadWorld(std::string dir)
{
}

void PubManager::genRelative(std::string dir)
{
	sensor_frames_.clear();
	tf2_ros::Buffer my_buffer;
	tf2_ros::TransformListener my_listener(my_buffer);
	pcl::PointCloud<pcl::PointXYZ> relative_cloud;
	relative_cloud.header.frame_id=world_name;

	for(int pindex=0;pindex<current_path.getTotalPoses();pindex++)
	{
		ros::Time simulated,previous;
		bool complete=false;
		simulated=publishTransform(pindex);
		geometry_msgs::TransformStamped world_to_sensor;
		while(!complete)
		{
			try
			{
				tf::Quaternion m;
				tf::Vector3 k;
				world_to_sensor=my_buffer.lookupTransform(transform_settings_.left_cv.data,transform_settings_.world_frame.data,simulated);
				tf::Quaternion conversion_quat(world_to_sensor.transform.rotation.x,
											   world_to_sensor.transform.rotation.y,
											   world_to_sensor.transform.rotation.z,
											   world_to_sensor.transform.rotation.w);
				
				tf::Vector3 conversion_vect(world_to_sensor.transform.translation.x,
											world_to_sensor.transform.translation.y,
											world_to_sensor.transform.translation.z);
				tf::Transform rigid_transform_world_to_rel(conversion_quat,conversion_vect);
				pcl_ros::transformPointCloud(current_world.getMap(),relative_cloud,rigid_transform_world_to_rel);
				previous=simulated;
				complete=true;
			}
			catch(tf2::TransformException &ex)
			{
				continue;
			}	
		
		}
	addNewFrame(relative_cloud);
	}	
}

ros::Time PubManager::publishTransform(int pose_number)
{
	cm.transform = current_path.getTransform(pose_number);
	ros::Time simulated_time=ros::Time::now();
	
	cm.header.stamp=simulated_time;
	left.header.stamp=simulated_time;
	right.header.stamp=simulated_time;
	leftcv.header.stamp=simulated_time;
	rightcv.header.stamp=simulated_time;
	
	bc_cm.sendTransform(cm);
	bc_left.sendTransform(left);
	bc_left_cv.sendTransform(leftcv);
	bc_right.sendTransform(right);
	bc_right_cv.sendTransform(rightcv);
	
	return simulated_time;
}
	
void PubManager::addNewFrame(pcl::PointCloud<pcl::PointXYZ> rel)
{
	int frame_no,total_points;
	total_points=rel.size();
	frame_no=sensor_frames_.size();
	
	shared_files::RelativeFrame tempframe;
	tempframe.FrameNumber.data=frame_no;
	for(int point_index=0;point_index<total_points;point_index++)
	{
		shared_files::RelativePoint temppoint;
		
		temppoint.identification.data=point_index;
		temppoint.coord.x=rel.at(point_index).x;
		temppoint.coord.y=rel.at(point_index).y;
		temppoint.coord.z=rel.at(point_index).z;
		tempframe.Relative.push_back(temppoint);
	}
	sensor_frames_.push_back(tempframe);
	
}

void PubManager::playback(double rate)
{
	ROS_INFO_STREAM("Beginning Playback");
	for(int pose_number=0;pose_number<current_path.getTotalPoses();pose_number++)
	{
		ROS_INFO_STREAM("Pose number: " << pose_number);
		ros::Duration d(rate);
		publishTransform(pose_number);
		d.sleep();
		pub_rel_output.publish(sensor_frames_[pose_number]);
		
	}
	ROS_INFO_STREAM("Playback Complete");
}

void PubManager::saveData(std::string relDir,std::string matchDir)
{
	saveRelativeData(relDir);
	matcher::saveMatchesGoal tempg;
	
	tempg.saveDirectory.data=matchDir;
	client_save_match_->sendGoalAndWait(tempg);
	
}

void PubManager::saveRelativeData(std::string dir)
{
	
	cv::FileStorage saveFile(dir,cv::FileStorage::WRITE);
	//coord=cv::Mat(3,1,CV_64FC1);
	
	saveFile<<"Frames"<<"[";
	for(int frame_index=0;frame_index<sensor_frames_.size();frame_index++)
	{
		//get relative data
		int frameid;
		
		frameid=sensor_frames_[frame_index].FrameNumber.data;
		//copy to xml file
		saveFile<<"{";
			saveFile<<"FrameNumber"<<frameid;
			saveFile<<"RelativePoints"<<"[";
			for(int point_index=0;point_index<sensor_frames_[frame_index].Relative.size();point_index++)
			{
				cv::Mat coord;
				coord=cv::Mat(3,1,CV_64FC1);
				int pointid;
				pointid=sensor_frames_[frame_index].Relative[point_index].identification.data;
				coord.at<double>(0,0)=sensor_frames_[frame_index].Relative[point_index].coord.x;
				coord.at<double>(1,0)=sensor_frames_[frame_index].Relative[point_index].coord.y;
				coord.at<double>(2,0)=sensor_frames_[frame_index].Relative[point_index].coord.z;
				//save to file
				saveFile<<"{";
					saveFile<<"PointID"<<pointid;
					saveFile<<"Coordinate"<<coord;
				saveFile<<"}";
				
			}
			saveFile<<"]";
		saveFile<<"}";
	}
	saveFile<<"]";
	saveFile.release();
	ROS_INFO_STREAM("RelativeData stored at "<<dir);
}




