#include <simulator/Path.h>

Path::Path()
{
	initialized =false;
}

void Path::newPath(std::string dir,std::string p)
{
	path_transformations.clear();
	incremental_transforms.clear();
	
	geometry_msgs::Transform pose_cm_to_world;
	//generate the pose transforms
	
	for(int Index=0;Index<=3;Index++)
	{
		
		pose_cm_to_world.translation.x=0.0;
		pose_cm_to_world.translation.y=15.0*(((double) Index)/3.0);
		pose_cm_to_world.translation.z=0.0;
		
		tf2::Quaternion rot;
		rot.setRPY(0,0,0);	
		pose_cm_to_world.rotation.x=rot.x();
		pose_cm_to_world.rotation.y=rot.y();
		pose_cm_to_world.rotation.z=rot.z();
		pose_cm_to_world.rotation.w=rot.w();

		path_transformations.push_back(pose_cm_to_world);
	}	
	
	//TODO get setings from parameter server
	for(int Index=1;Index<=5;Index++)
	{
				
		pose_cm_to_world.translation.x=0.0;
		pose_cm_to_world.translation.y=15.0;
		pose_cm_to_world.translation.z=0.0;
		
		double angle;
		angle=( (double) Index)/5.0;
		
		angle*=M_PI/2.0;
		
		tf2::Quaternion rot;
		rot.setRPY(0,0,angle);	
		pose_cm_to_world.rotation.x=rot.x();
		pose_cm_to_world.rotation.y=rot.y();
		pose_cm_to_world.rotation.z=rot.z();
		pose_cm_to_world.rotation.w=rot.w();
		path_transformations.push_back(pose_cm_to_world);

	}
	
	//Calculate Incremental Transforms

		tf2::Transform odom_pose;
		geometry_msgs::Transform odom;
		tf2::convert(path_transformations[0],odom_pose);
		
	
		for(int index=0;index<(path_transformations.size()-1);index++)
		{
			geometry_msgs::Transform temp_rel,prev,current;
			tf2::Transform tf_rel,tf_prev,tf_current;
			prev=path_transformations[index];
			current=path_transformations[index+1];
			
			tf2::convert(prev,tf_prev);
			tf2::convert(current,tf_current);
		
		
			tf_prev=tf_prev.inverse();
			tf_rel.mult(tf_prev,tf_current);
			tf2::convert(tf_rel,temp_rel);
			
			odom_pose*=tf_rel;
			//odom_pose.mult(tf_rel,odom_pose);
		 	tf2::convert(odom_pose,odom);
			incremental_transforms.push_back(odom);
		}


	

	initialized=true;
	
	cv::FileStorage f(dir,cv::FileStorage::WRITE);
	f<<"Points"<<"[";
	for(int Index=0;Index<path_transformations.size();Index++)
	{
		f<<"{";
		f<<"Translation"<<"{";
			f<<"X"<<path_transformations[Index].translation.x;
			f<<"Y"<<path_transformations[Index].translation.y;
			f<<"Z"<<path_transformations[Index].translation.z;
		f<<"}";
		f<<"Rotation"<<"{";
			f<<"x"<<path_transformations[Index].rotation.x;
			f<<"y"<<path_transformations[Index].rotation.y;
			f<<"z"<<path_transformations[Index].rotation.z;
			f<<"w"<<path_transformations[Index].rotation.w;
		f<<"}";
		f<<"}";
	}
	f<<"]";
	f<<"Incremental"<<"[";
	for(int Index=0;Index<incremental_transforms.size();Index++)
	{
		f<<"{";
		f<<"Translation"<<"{";
			f<<"X"<<incremental_transforms[Index].translation.x;
			f<<"Y"<<incremental_transforms[Index].translation.y;
			f<<"Z"<<incremental_transforms[Index].translation.z;
		f<<"}";
		f<<"Rotation"<<"{";
			f<<"x"<<incremental_transforms[Index].rotation.x;
			f<<"y"<<incremental_transforms[Index].rotation.y;
			f<<"z"<<incremental_transforms[Index].rotation.z;
			f<<"w"<<incremental_transforms[Index].rotation.w;
		f<<"}";
		f<<"}";
	}
	f<<"]";
	//for(int Index=0;Index<path_transformations.size
	ROS_INFO_STREAM("Path Generated, saved to: "<<dir);
}

geometry_msgs::Transform Path::getTransform(int index)
{
	return path_transformations[index];
}

int Path::getTotalPoses()
{
	return path_transformations.size();
}