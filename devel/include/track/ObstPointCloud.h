// Generated by gencpp from file track/ObstPointCloud.msg
// DO NOT EDIT!


#ifndef TRACK_MESSAGE_OBSTPOINTCLOUD_H
#define TRACK_MESSAGE_OBSTPOINTCLOUD_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <track/PointXYZI.h>

namespace track
{
template <class ContainerAllocator>
struct ObstPointCloud_
{
  typedef ObstPointCloud_<ContainerAllocator> Type;

  ObstPointCloud_()
    : header()
    , points()  {
    }
  ObstPointCloud_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , points(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::vector< ::track::PointXYZI_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::track::PointXYZI_<ContainerAllocator> >::other >  _points_type;
  _points_type points;





  typedef boost::shared_ptr< ::track::ObstPointCloud_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::track::ObstPointCloud_<ContainerAllocator> const> ConstPtr;

}; // struct ObstPointCloud_

typedef ::track::ObstPointCloud_<std::allocator<void> > ObstPointCloud;

typedef boost::shared_ptr< ::track::ObstPointCloud > ObstPointCloudPtr;
typedef boost::shared_ptr< ::track::ObstPointCloud const> ObstPointCloudConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::track::ObstPointCloud_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::track::ObstPointCloud_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace track

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'track': ['/home/avenue/Desktop/rslidar_perception_ws/src/track/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::track::ObstPointCloud_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::track::ObstPointCloud_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::track::ObstPointCloud_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::track::ObstPointCloud_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::track::ObstPointCloud_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::track::ObstPointCloud_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::track::ObstPointCloud_<ContainerAllocator> >
{
  static const char* value()
  {
    return "79c2a2dcd23491ef5cd30ba218c627c6";
  }

  static const char* value(const ::track::ObstPointCloud_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x79c2a2dcd23491efULL;
  static const uint64_t static_value2 = 0x5cd30ba218c627c6ULL;
};

template<class ContainerAllocator>
struct DataType< ::track::ObstPointCloud_<ContainerAllocator> >
{
  static const char* value()
  {
    return "track/ObstPointCloud";
  }

  static const char* value(const ::track::ObstPointCloud_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::track::ObstPointCloud_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header           header\n\
PointXYZI[]      points\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: track/PointXYZI\n\
float32 x\n\
float32 y\n\
float32 z\n\
float32 intensity\n\
";
  }

  static const char* value(const ::track::ObstPointCloud_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::track::ObstPointCloud_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.points);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ObstPointCloud_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::track::ObstPointCloud_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::track::ObstPointCloud_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "points[]" << std::endl;
    for (size_t i = 0; i < v.points.size(); ++i)
    {
      s << indent << "  points[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::track::PointXYZI_<ContainerAllocator> >::stream(s, indent + "    ", v.points[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // TRACK_MESSAGE_OBSTPOINTCLOUD_H
