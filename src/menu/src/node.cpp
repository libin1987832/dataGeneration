#include "menu/Manager.h"
int main(int argc, char **argv)
{
	ros::init(argc,argv,"menu_node");
	Manager main_;
	main_.action_start_=true;
	main_.start();
	ros::spin();
	return 0;
}
