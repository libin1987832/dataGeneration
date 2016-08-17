#include <simulator/Map.h>

Map::Map()
{

}

void Map::newMap(std::string dir,std::string w_name)
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
	PointCloud.header.frame_id=w_name;
	
	///////////////
	///save
	//////////////
	cv::FileStorage f(dir,cv::FileStorage::WRITE);
	
	f<<"MetaData"<<"{";
		f<<"Name"<<w_name;
		f<<"TotalPoints"<<(int)PointCloud.size();
	f<<"}";
	f<<"Cloud"<<"[";
	for(int index=0;index<PointCloud.size();index++)
	{
		f<<"{";
			f<<"ID"<<index;
			f<<"X"<<PointCloud[index].x;
			f<<"Y"<<PointCloud[index].y;
			f<<"Z"<<PointCloud[index].z;
		f<<"}";
	}
	f<<"]";
	ROS_INFO_STREAM("map generated, saved to: "<<dir);
	//f<<"TotalPoints"<<1;
	f.release();
	//PointCloud.header.stamp=pcl_conversions::toPCL(ros::Time::now());
	//pub_original_map=handle_.advertise<pcl::PointCloud<pcl::PointXYZ> > (topic_settings_.MapTopic.data,1,true);
	//pub_original_map.publish(PointCloud);
}

void Map::publishMap(std::string topicname)
{
	PointCloud.header.stamp=pcl_conversions::toPCL(ros::Time::now());
	pub_original_map=handle_.advertise<pcl::PointCloud<pcl::PointXYZ> > (topicname,1,true);
	pub_original_map.publish(PointCloud);	
}

pcl::PointCloud<pcl::PointXYZ> Map::getMap()
{
	return PointCloud;
}


