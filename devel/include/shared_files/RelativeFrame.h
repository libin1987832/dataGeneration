// Generated by gencpp from file shared_files/RelativeFrame.msg
// DO NOT EDIT!


#ifndef SHARED_FILES_MESSAGE_RELATIVEFRAME_H
#define SHARED_FILES_MESSAGE_RELATIVEFRAME_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <shared_files/RelativePoint.h>
#include <std_msgs/Int32.h>

namespace shared_files
{
template <class ContainerAllocator>
struct RelativeFrame_
{
  typedef RelativeFrame_<ContainerAllocator> Type;

  RelativeFrame_()
    : PointCloudRelative()
    , FrameNumber()  {
    }
  RelativeFrame_(const ContainerAllocator& _alloc)
    : PointCloudRelative(_alloc)
    , FrameNumber(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::shared_files::RelativePoint_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::shared_files::RelativePoint_<ContainerAllocator> >::other >  _PointCloudRelative_type;
  _PointCloudRelative_type PointCloudRelative;

   typedef  ::std_msgs::Int32_<ContainerAllocator>  _FrameNumber_type;
  _FrameNumber_type FrameNumber;




  typedef boost::shared_ptr< ::shared_files::RelativeFrame_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::shared_files::RelativeFrame_<ContainerAllocator> const> ConstPtr;

}; // struct RelativeFrame_

typedef ::shared_files::RelativeFrame_<std::allocator<void> > RelativeFrame;

typedef boost::shared_ptr< ::shared_files::RelativeFrame > RelativeFramePtr;
typedef boost::shared_ptr< ::shared_files::RelativeFrame const> RelativeFrameConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::shared_files::RelativeFrame_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::shared_files::RelativeFrame_<ContainerAllocator> >::stream(s, "", v);
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
struct IsFixedSize< ::shared_files::RelativeFrame_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::shared_files::RelativeFrame_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::shared_files::RelativeFrame_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::shared_files::RelativeFrame_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::shared_files::RelativeFrame_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::shared_files::RelativeFrame_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::shared_files::RelativeFrame_<ContainerAllocator> >
{
  static const char* value()
  {
    return "aed8a9c8614008d5571c40635b45b623";
  }

  static const char* value(const ::shared_files::RelativeFrame_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xaed8a9c8614008d5ULL;
  static const uint64_t static_value2 = 0x571c40635b45b623ULL;
};

template<class ContainerAllocator>
struct DataType< ::shared_files::RelativeFrame_<ContainerAllocator> >
{
  static const char* value()
  {
    return "shared_files/RelativeFrame";
  }

  static const char* value(const ::shared_files::RelativeFrame_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::shared_files::RelativeFrame_<ContainerAllocator> >
{
  static const char* value()
  {
    return "shared_files/RelativePoint[] PointCloudRelative\n\
std_msgs/Int32 FrameNumber\n\
\n\
================================================================================\n\
MSG: shared_files/RelativePoint\n\
geometry_msgs/Point coord\n\
std_msgs/Int32 identification\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: std_msgs/Int32\n\
int32 data\n\
";
  }

  static const char* value(const ::shared_files::RelativeFrame_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::shared_files::RelativeFrame_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.PointCloudRelative);
      stream.next(m.FrameNumber);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RelativeFrame_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::shared_files::RelativeFrame_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::shared_files::RelativeFrame_<ContainerAllocator>& v)
  {
    s << indent << "PointCloudRelative[]" << std::endl;
    for (size_t i = 0; i < v.PointCloudRelative.size(); ++i)
    {
      s << indent << "  PointCloudRelative[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::shared_files::RelativePoint_<ContainerAllocator> >::stream(s, indent + "    ", v.PointCloudRelative[i]);
    }
    s << indent << "FrameNumber: ";
    s << std::endl;
    Printer< ::std_msgs::Int32_<ContainerAllocator> >::stream(s, indent + "  ", v.FrameNumber);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SHARED_FILES_MESSAGE_RELATIVEFRAME_H
