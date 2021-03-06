// Generated by gencpp from file simulator/genDataGoal.msg
// DO NOT EDIT!


#ifndef SIMULATOR_MESSAGE_GENDATAGOAL_H
#define SIMULATOR_MESSAGE_GENDATAGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/String.h>
#include <std_msgs/String.h>
#include <std_msgs/String.h>
#include <std_msgs/Bool.h>
#include <std_msgs/String.h>
#include <std_msgs/String.h>
#include <std_msgs/String.h>
#include <std_msgs/String.h>
#include <std_msgs/String.h>
#include <std_msgs/Bool.h>
#include <std_msgs/String.h>
#include <std_msgs/Bool.h>
#include <std_msgs/String.h>

namespace simulator
{
template <class ContainerAllocator>
struct genDataGoal_
{
  typedef genDataGoal_<ContainerAllocator> Type;

  genDataGoal_()
    : world_name()
    , unique_id()
    , path_name()
    , new_prefixes()
    , cm()
    , l()
    , r()
    , lcv()
    , rcv()
    , load_world()
    , world_dir()
    , load_path()
    , path_dir()  {
    }
  genDataGoal_(const ContainerAllocator& _alloc)
    : world_name(_alloc)
    , unique_id(_alloc)
    , path_name(_alloc)
    , new_prefixes(_alloc)
    , cm(_alloc)
    , l(_alloc)
    , r(_alloc)
    , lcv(_alloc)
    , rcv(_alloc)
    , load_world(_alloc)
    , world_dir(_alloc)
    , load_path(_alloc)
    , path_dir(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::String_<ContainerAllocator>  _world_name_type;
  _world_name_type world_name;

   typedef  ::std_msgs::String_<ContainerAllocator>  _unique_id_type;
  _unique_id_type unique_id;

   typedef  ::std_msgs::String_<ContainerAllocator>  _path_name_type;
  _path_name_type path_name;

   typedef  ::std_msgs::Bool_<ContainerAllocator>  _new_prefixes_type;
  _new_prefixes_type new_prefixes;

   typedef  ::std_msgs::String_<ContainerAllocator>  _cm_type;
  _cm_type cm;

   typedef  ::std_msgs::String_<ContainerAllocator>  _l_type;
  _l_type l;

   typedef  ::std_msgs::String_<ContainerAllocator>  _r_type;
  _r_type r;

   typedef  ::std_msgs::String_<ContainerAllocator>  _lcv_type;
  _lcv_type lcv;

   typedef  ::std_msgs::String_<ContainerAllocator>  _rcv_type;
  _rcv_type rcv;

   typedef  ::std_msgs::Bool_<ContainerAllocator>  _load_world_type;
  _load_world_type load_world;

   typedef  ::std_msgs::String_<ContainerAllocator>  _world_dir_type;
  _world_dir_type world_dir;

   typedef  ::std_msgs::Bool_<ContainerAllocator>  _load_path_type;
  _load_path_type load_path;

   typedef  ::std_msgs::String_<ContainerAllocator>  _path_dir_type;
  _path_dir_type path_dir;




  typedef boost::shared_ptr< ::simulator::genDataGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::simulator::genDataGoal_<ContainerAllocator> const> ConstPtr;

}; // struct genDataGoal_

typedef ::simulator::genDataGoal_<std::allocator<void> > genDataGoal;

typedef boost::shared_ptr< ::simulator::genDataGoal > genDataGoalPtr;
typedef boost::shared_ptr< ::simulator::genDataGoal const> genDataGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::simulator::genDataGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::simulator::genDataGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace simulator

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'simulator': ['/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/simulator/msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'actionlib_msgs': ['/opt/ros/indigo/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'shared_files': ['/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::simulator::genDataGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::simulator::genDataGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulator::genDataGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::simulator::genDataGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulator::genDataGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::simulator::genDataGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::simulator::genDataGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6834f4b1422f960c74621775242b1f5c";
  }

  static const char* value(const ::simulator::genDataGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6834f4b1422f960cULL;
  static const uint64_t static_value2 = 0x74621775242b1f5cULL;
};

template<class ContainerAllocator>
struct DataType< ::simulator::genDataGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "simulator/genDataGoal";
  }

  static const char* value(const ::simulator::genDataGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::simulator::genDataGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
std_msgs/String world_name\n\
std_msgs/String unique_id\n\
std_msgs/String path_name\n\
std_msgs/Bool new_prefixes\n\
std_msgs/String cm\n\
std_msgs/String l\n\
std_msgs/String r\n\
std_msgs/String lcv\n\
std_msgs/String rcv\n\
std_msgs/Bool load_world\n\
std_msgs/String world_dir\n\
std_msgs/Bool load_path\n\
std_msgs/String path_dir\n\
\n\
================================================================================\n\
MSG: std_msgs/String\n\
string data\n\
\n\
================================================================================\n\
MSG: std_msgs/Bool\n\
bool data\n\
";
  }

  static const char* value(const ::simulator::genDataGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::simulator::genDataGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.world_name);
      stream.next(m.unique_id);
      stream.next(m.path_name);
      stream.next(m.new_prefixes);
      stream.next(m.cm);
      stream.next(m.l);
      stream.next(m.r);
      stream.next(m.lcv);
      stream.next(m.rcv);
      stream.next(m.load_world);
      stream.next(m.world_dir);
      stream.next(m.load_path);
      stream.next(m.path_dir);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct genDataGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::simulator::genDataGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::simulator::genDataGoal_<ContainerAllocator>& v)
  {
    s << indent << "world_name: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.world_name);
    s << indent << "unique_id: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.unique_id);
    s << indent << "path_name: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.path_name);
    s << indent << "new_prefixes: ";
    s << std::endl;
    Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "  ", v.new_prefixes);
    s << indent << "cm: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.cm);
    s << indent << "l: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.l);
    s << indent << "r: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.r);
    s << indent << "lcv: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.lcv);
    s << indent << "rcv: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.rcv);
    s << indent << "load_world: ";
    s << std::endl;
    Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "  ", v.load_world);
    s << indent << "world_dir: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.world_dir);
    s << indent << "load_path: ";
    s << std::endl;
    Printer< ::std_msgs::Bool_<ContainerAllocator> >::stream(s, indent + "  ", v.load_path);
    s << indent << "path_dir: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.path_dir);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SIMULATOR_MESSAGE_GENDATAGOAL_H
