#include <sequence_manager/Sequence.h>
int main(int argc, char **argv)
{
	ros::init(argc,argv,"sequences_node");
	Sequence manager;
	manager.action_start_=true;
	manager.start();
	return 0;
}
