// Generated by gencpp from file shared_files/TransformNames.msg
// DO NOT EDIT!


#ifndef SHARED_FILES_MESSAGE_TRANSFORMNAMES_H
#define SHARED_FILES_MESSAGE_TRANSFORMNAMES_H


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
#include <std_msgs/String.h>
#include <std_msgs/String.h>
#include <std_msgs/String.h>
#include <std_msgs/String.h>

namespace shared_files
{
template <class ContainerAllocator>
struct TransformNames_
{
  typedef TransformNames_<ContainerAllocator> Type;

  TransformNames_()
    : ID()
    , world_frame()
    , cm()
    , left()
    , right()
    , left_cv()
    , right_cv()  {
    }
  TransformNames_(const ContainerAllocator& _alloc)
    : ID(_alloc)
    , world_frame(_alloc)
    , cm(_alloc)
    , left(_alloc)
    , right(_alloc)
    , left_cv(_alloc)
    , right_cv(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::String_<ContainerAllocator>  _ID_type;
  _ID_type ID;

   typedef  ::std_msgs::String_<ContainerAllocator>  _world_frame_type;
  _world_frame_type world_frame;

   typedef  ::std_msgs::String_<ContainerAllocator>  _cm_type;
  _cm_type cm;

   typedef  ::std_msgs::String_<ContainerAllocator>  _left_type;
  _left_type left;

   typedef  ::std_msgs::String_<ContainerAllocator>  _right_type;
  _right_type right;

   typedef  ::std_msgs::String_<ContainerAllocator>  _left_cv_type;
  _left_cv_type left_cv;

   typedef  ::std_msgs::String_<ContainerAllocator>  _right_cv_type;
  _right_cv_type right_cv;




  typedef boost::shared_ptr< ::shared_files::TransformNames_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::shared_files::TransformNames_<ContainerAllocator> const> ConstPtr;

}; // struct TransformNames_

typedef ::shared_files::TransformNames_<std::allocator<void> > TransformNames;

typedef boost::shared_ptr< ::shared_files::TransformNames > TransformNamesPtr;
typedef boost::shared_ptr< ::shared_files::TransformNames const> TransformNamesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::shared_files::TransformNames_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::shared_files::TransformNames_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace shared_files

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'sensor_msgs': ['/opt/ros/indigo/share/sensor_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'shared_files': ['/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::shared_files::TransformNames_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::shared_files::TransformNames_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::shared_files::TransformNames_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::shared_files::TransformNames_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::shared_files::TransformNames_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::shared_files::TransformNames_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::shared_files::TransformNames_<ContainerAllocator> >
{
  static const char* value()
  {
    return "4e3bafaf758bd3b787741c857a93de9c";
  }

  static const char* value(const ::shared_files::TransformNames_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x4e3bafaf758bd3b7ULL;
  static const uint64_t static_value2 = 0x87741c857a93de9cULL;
};

template<class ContainerAllocator>
struct DataType< ::shared_files::TransformNames_<ContainerAllocator> >
{
  static const char* value()
  {
    return "shared_files/TransformNames";
  }

  static const char* value(const ::shared_files::TransformNames_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::shared_files::TransformNames_<ContainerAllocator> >
{
  static const char* value()
  {
    return "std_msgs/String ID\n\
std_msgs/String world_frame\n\
std_msgs/String cm\n\
std_msgs/String left\n\
std_msgs/String right\n\
std_msgs/String left_cv\n\
std_msgs/String right_cv\n\
\n\
================================================================================\n\
MSG: std_msgs/String\n\
string data\n\
";
  }

  static const char* value(const ::shared_files::TransformNames_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::shared_files::TransformNames_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ID);
      stream.next(m.world_frame);
      stream.next(m.cm);
      stream.next(m.left);
      stream.next(m.right);
      stream.next(m.left_cv);
      stream.next(m.right_cv);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct TransformNames_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::shared_files::TransformNames_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::shared_files::TransformNames_<ContainerAllocator>& v)
  {
    s << indent << "ID: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.ID);
    s << indent << "world_frame: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.world_frame);
    s << indent << "cm: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.cm);
    s << indent << "left: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.left);
    s << indent << "right: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.right);
    s << indent << "left_cv: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.left_cv);
    s << indent << "right_cv: ";
    s << std::endl;
    Printer< ::std_msgs::String_<ContainerAllocator> >::stream(s, indent + "  ", v.right_cv);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SHARED_FILES_MESSAGE_TRANSFORMNAMES_H
