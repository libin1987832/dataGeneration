// Generated by gencpp from file simulator/newSimulationGoal.msg
// DO NOT EDIT!


#ifndef SIMULATOR_MESSAGE_NEWSIMULATIONGOAL_H
#define SIMULATOR_MESSAGE_NEWSIMULATIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Empty.h>

namespace simulator
{
template <class ContainerAllocator>
struct newSimulationGoal_
{
  typedef newSimulationGoal_<ContainerAllocator> Type;

  newSimulationGoal_()
    : f()  {
    }
  newSimulationGoal_(const ContainerAllocator& _alloc)
    : f(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Empty_<ContainerAllocator>  _f_type;
  _f_type f;




  typedef boost::shared_ptr< ::simulator::newSimulationGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simulator::newSimulationGoal_<ContainerAllocator> const> ConstPtr;

}; // struct newSimulationGoal_

typedef ::simulator::newSimulationGoal_<std::allocator<void> > newSimulationGoal;

typedef boost::shared_ptr< ::simulator::newSimulationGoal > newSimulationGoalPtr;
typedef boost::shared_ptr< ::simulator::newSimulationGoal const> newSimulationGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simulator::newSimulationGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simulator::newSimulationGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace simulator

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'simulator': ['/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/simulator/msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'shared_files': ['/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::simulator::newSimulationGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simulator::newSimulationGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulator::newSimulationGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulator::newSimulationGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulator::newSimulationGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulator::newSimulationGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simulator::newSimulationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "642b38fc4dd0ec355df479902644b5b6";
  }

  static const char* value(const ::simulator::newSimulationGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x642b38fc4dd0ec35ULL;
  static const uint64_t static_value2 = 0x5df479902644b5b6ULL;
};

template<class ContainerAllocator>
struct DataType< ::simulator::newSimulationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simulator/newSimulationGoal";
  }

  static const char* value(const ::simulator::newSimulationGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simulator::newSimulationGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#goal definition\n\
std_msgs/Empty f\n\
\n\
================================================================================\n\
MSG: std_msgs/Empty\n\
";
  }

  static const char* value(const ::simulator::newSimulationGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simulator::newSimulationGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.f);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct newSimulationGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simulator::newSimulationGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simulator::newSimulationGoal_<ContainerAllocator>& v)
  {
    s << indent << "f: ";
    s << std::endl;
    Printer< ::std_msgs::Empty_<ContainerAllocator> >::stream(s, indent + "  ", v.f);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMULATOR_MESSAGE_NEWSIMULATIONGOAL_H
