#include <matcher/Matcher.h>

Matcher::Matcher()
{
	std::stringstream ss_name_server;
	ss_name_server<<ros::this_node::getName()<<"/config";
	server_config_= new actionlib::SimpleActionServer<matcher::configMatchAction>
											(ss_name_server.str(),
											 boost::bind(&Matcher::configServerAction,this,_1),false);
	server_config_->start();	
	ss_name_server.str("");
	ss_name_server<<ros::this_node::getName()<<"/save";
	server_save_=new actionlib::SimpleActionServer<matcher::saveMatchesAction>
											(ss_name_server.str(),
											 boost::bind(&Matcher::saveServerAction,this,_1),false);
	server_save_->start();

	normal_distribution = new boost::normal_distribution<>(0.0,5.0);//mean 0,std-dev 5 pixels
	generator_nd= new boost::variate_generator<boost::mt19937&, 
                           boost::normal_distribution<> >(rng,*normal_distribution);
	ros::spin();
	
	ROS_INFO_STREAM(ros::this_node::getName()<<"-- Initialized");
}

void Matcher::configServerAction(const matcher::configMatchGoalConstPtr &goal)
{
	ROS_INFO_STREAM("Configuring Matching Node");
	bool Error=false;
	try
	{
		cv::FileStorage camfile(goal->CameraDirectory.data,cv::FileStorage::READ);
		
		cv::FileNode node_stereo,node_rect,node_image;
		node_stereo=camfile["Stereo"];
		node_image=camfile["ImageSettings"];
		//node_rect=node_stereo["Rectification"];
		node_stereo["LeftProjection"]>>left_projection;
		node_stereo["RightProjection"]>>right_projection;
		node_stereo["QMapping"]>>q_mapping;
		node_image["ImgHeight"]>>image_height;
		node_image["ImgWidth"]>>image_width;
		node_image["PixelWidth"]>>pixel_u_size;
		node_image["PixelHeight"]>>pixel_v_size;
		camfile.release();
		frames_counted_=0;
		sub_name=goal->TopicName;
		sub_left_pointcloud=handle_.subscribe(sub_name.data,10,&Matcher::callbackLeft,this);
		dataset_.clear();
	}
	catch(cv::Exception& e)
   	{
    	const char * err_msg = e.what();
		//ROS_WARN("%s",ex.what());
		ROS_INFO_STREAM(e.what());
		Error=true;
	}

	if(Error)
	{
		ROS_INFO_STREAM("Match Configuration Failed");
		server_config_->setAborted();
	}
	else
	{
		ROS_INFO_STREAM("Success---");
		server_config_->setSucceeded();
	}
}

void Matcher::saveServerAction(const matcher::saveMatchesGoalConstPtr &goal)
{
	bool Error=false;
	
	try
	{
		cv::FileStorage saveFile(goal->saveDirectory.data,cv::FileStorage::WRITE);
		saveFile<<"Frame"<<"[";
		for(int frame_index=0;frame_index<dataset_.size();frame_index++)
		{
			saveFile<<"{";
				saveFile<<"FrameID"<<frame_index;
				saveFile<<"DataPoint"<<"[";
				for(int point_index=0;point_index<dataset_[frame_index].getTotalPoints();point_index++)
				{
					saveFile<<"{";
						saveFile<<"ID"<<dataset_[frame_index].getPoint(point_index).getID();
						saveFile<<"Projected"<<dataset_[frame_index].getPoint(point_index).getProjected();
						saveFile<<"LeftPixel"<<dataset_[frame_index].getPoint(point_index).getProjectedPixel(true);
						saveFile<<"RightPixel"<<dataset_[frame_index].getPoint(point_index).getProjectedPixel(false);
						if(dataset_[frame_index].getPoint(point_index).getProjected())
						{
							saveFile<<"Ideal"<<"{";
								saveFile<<"Disparity"<<dataset_[frame_index].getPoint(point_index).getDisparity(false);//get Ideal
								saveFile<<"Triangulated"<<dataset_[frame_index].getPoint(point_index).getTriangulated(false);
								//saveFile<<"Coordinate"<<dataset_[frame_index].getPoint(point_index).
							saveFile<<"}";
							saveFile<<"Noisy"<<"{";
								saveFile<<"Disparity"<<dataset_[frame_index].getPoint(point_index).getDisparity(true);
								saveFile<<"Triangulated"<<dataset_[frame_index].getPoint(point_index).getTriangulated(true);
								saveFile<<"LeftPixel"<<dataset_[frame_index].getPoint(point_index).getNoisyProjectedPixel(true);
								saveFile<<"RightPixel"<<dataset_[frame_index].getPoint(point_index).getNoisyProjectedPixel(false);
							saveFile<<"}";
						}
					saveFile<<"}";
				}
				saveFile<<"]";		
			saveFile<<"}";	
		}		
		saveFile<<"]";
		saveFile.release();
	}
	catch(cv::Exception& e)
   	{
    	const char * err_msg = e.what();
		//ROS_WARN("%s",ex.what());
		ROS_INFO_STREAM(e.what());
		Error=true;
	}
	
	
	if(Error)
	{
		server_save_->setAborted();
	}
	else
	{
		server_save_->setSucceeded();
	}
}


void Matcher::callbackLeft(const shared_files::RelativeFrameConstPtr& msg_cloud)
{
	Frame current_frame(left_projection,right_projection,q_mapping,image_height,image_width,generator_nd);
	
	for(int point_index=0;point_index<msg_cloud->Relative.size();point_index++)
	{

		current_frame.addPoint(msg_cloud->Relative[point_index]);
		//for debugging purposes
	/*	if(current_frame.getPoint(point_index).getProjected())
		{
			ROS_INFO_STREAM("original\n"<<msg_cloud->Relative[point_index]);		
			ROS_INFO_STREAM("triangulated \n"<<current_frame.getPoint(point_index).getTriangulated(false));
			ROS_INFO_STREAM("triangulated noisy\n"<<current_frame.getPoint(point_index).getTriangulated(true));
		}*/

	}
	dataset_.push_back(current_frame);	
}
