#include "motion_estimation/Estimator.h"

Estimator::Estimator()
{
	
	std::stringstream ss_name_server;
	ss_name_server<<ros::this_node::getName()<<"/config";
	server_config_= new actionlib::SimpleActionServer<motion_estimation::configMotionEstimationAction>
								(ss_name_server.str(),
								 boost::bind(&Estimator::config_server_action,this,_1),false);
	server_config_->start();
	ROS_INFO_STREAM(ros::this_node::getName()<<"--Initialized");
	ros::spin();
}

void Estimator::config_server_action(const motion_estimation::configMotionEstimationGoalConstPtr &goal)
{
	settings_topname=goal->topname;
	settings_tname=goal->tname;
	
	sub_matches_ = handle_.subscribe(settings_topname.MatchesTopic.data, 10, &Estimator::callbackMatches,this);
	//TODO configure Publisher 
	//pub_points_=handle_.advertise<shared_files::FrameEstimate>(goal->PubTopicName.data,10,true);	
	
	Q_=cv::Mat::zeros(4,4,CV_64FC1);
	Q_.at<double>(0,0)=goal->QRow_one[0].data;
	Q_.at<double>(0,1)=goal->QRow_one[1].data;
	Q_.at<double>(0,2)=goal->QRow_one[2].data;
	Q_.at<double>(0,3)=goal->QRow_one[3].data;
	
	Q_.at<double>(1,0)=goal->QRow_two[0].data;
	Q_.at<double>(1,1)=goal->QRow_two[1].data;
	Q_.at<double>(1,2)=goal->QRow_two[2].data;
	Q_.at<double>(1,3)=goal->QRow_two[3].data;

	Q_.at<double>(2,0)=goal->QRow_three[0].data;
	Q_.at<double>(2,1)=goal->QRow_three[1].data;
	Q_.at<double>(2,2)=goal->QRow_three[2].data;
	Q_.at<double>(2,3)=goal->QRow_three[3].data;
	
	Q_.at<double>(3,0)=goal->QRow_four[0].data;
	Q_.at<double>(3,1)=goal->QRow_four[1].data;
	Q_.at<double>(3,2)=goal->QRow_four[2].data;
	Q_.at<double>(3,3)=goal->QRow_four[3].data;
	
	ROS_INFO_STREAM("Q RECONFIGURED");
	server_config_->setSucceeded();
}

void Estimator::callbackMatches(const shared_files::MatchFrameConstPtr &msg)
{
	ROS_INFO_STREAM("FRAME number-- "<<msg->frame_id.data);
	data.push_back(*msg);
	ROS_INFO_STREAM("sizzzeez" <<data.size());
	if(data.size()==3)
	{
		ROS_INFO_STREAM("CALCULAITE STUFF");
	}
	/*int total_points=msg->Frame.size();
	if(total_points>0)
	{
		shared_msgs::FrameEstimate current_frame;
		current_frame.FrameNum.data=msg->frame_id.data;
		for(int point_index=0;point_index<total_points;point_index++)
		{
			shared_msgs::PointEstimate temp_point;//Individual point
			shared_msgs::PointSet t_set;//combined rectified and noisy structure

			cv::Mat calc,column_matrix; //xpixel, ypixel, disparity, 1
			column_matrix=cv::Mat::ones(4,1,CV_32FC1);
			column_matrix.at<float>(0,0)= msg->Frame[point_index].Rectified.u.data;
			column_matrix.at<float>(1,0)= msg->Frame[point_index].Rectified.v.data;
			column_matrix.at<float>(2,0)= msg->Frame[point_index].Rectified.Disparity.data;
			calc=Q_*column_matrix;
			calc.at<float>(0,0)/=calc.at<float>(3,0);
			calc.at<float>(1,0)/=calc.at<float>(3,0);
			calc.at<float>(2,0)/=calc.at<float>(3,0);
			
			//TODO calculate Co Variances 
			temp_point.Estimate.x=calc.at<float>(0,0);
			temp_point.Estimate.y=calc.at<float>(1,0);
			temp_point.Estimate.z=calc.at<float>(2,0);
			
			t_set.RectifiedPoint=temp_point;
			
			column_matrix=cv::Mat::ones(4,1,CV_32FC1);
			column_matrix.at<float>(0,0)= msg->Frame[point_index].Noise.u.data;
			column_matrix.at<float>(1,0)= msg->Frame[point_index].Noise.v.data;
			column_matrix.at<float>(2,0)= msg->Frame[point_index].Noise.Disparity.data;
			calc=Q_*column_matrix;
			
			calc.at<float>(0,0)/=calc.at<float>(3,0);
			calc.at<float>(1,0)/=calc.at<float>(3,0);
			calc.at<float>(2,0)/=calc.at<float>(3,0);
			//TODO calculate Co Variances 
			temp_point.Estimate.x=calc.at<float>(0,0);
			temp_point.Estimate.y=calc.at<float>(1,0);
			temp_point.Estimate.z=calc.at<float>(2,0);
			
			t_set.NoisyPoint=temp_point;
			t_set.PointID=msg->Frame[point_index].NumberID;
			current_frame.Points.push_back(t_set);
			
		}
		pub_points_.publish(current_frame);
	}
	else
	{
		ROS_WARN("NO MATCHING POINTS RECIEVED");
	}*/
}

