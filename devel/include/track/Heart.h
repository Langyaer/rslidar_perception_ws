// Generated by gencpp from file track/Heart.msg
// DO NOT EDIT!


#ifndef TRACK_MESSAGE_HEART_H
#define TRACK_MESSAGE_HEART_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace track
{
template <class ContainerAllocator>
struct Heart_
{
  typedef Heart_<ContainerAllocator> Type;

  Heart_()
    : process_id(0)
    , process_name()  {
    }
  Heart_(const ContainerAllocator& _alloc)
    : process_id(0)
    , process_name(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _process_id_type;
  _process_id_type process_id;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _process_name_type;
  _process_name_type process_name;





  typedef boost::shared_ptr< ::track::Heart_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::track::Heart_<ContainerAllocator> const> ConstPtr;

}; // struct Heart_

typedef ::track::Heart_<std::allocator<void> > Heart;

typedef boost::shared_ptr< ::track::Heart > HeartPtr;
typedef boost::shared_ptr< ::track::Heart const> HeartConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::track::Heart_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::track::Heart_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace track

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'track': ['/home/avenue/Desktop/rslidar_perception_ws/src/track/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::track::Heart_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::track::Heart_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::track::Heart_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::track::Heart_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::track::Heart_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::track::Heart_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::track::Heart_<ContainerAllocator> >
{
  static const char* value()
  {
    return "718b78ec4cfdf2ec3139a2f37b006d8e";
  }

  static const char* value(const ::track::Heart_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x718b78ec4cfdf2ecULL;
  static const uint64_t static_value2 = 0x3139a2f37b006d8eULL;
};

template<class ContainerAllocator>
struct DataType< ::track::Heart_<ContainerAllocator> >
{
  static const char* value()
  {
    return "track/Heart";
  }

  static const char* value(const ::track::Heart_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::track::Heart_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32  process_id\n\
string process_name\n\
";
  }

  static const char* value(const ::track::Heart_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::track::Heart_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.process_id);
      stream.next(m.process_name);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Heart_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::track::Heart_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::track::Heart_<ContainerAllocator>& v)
  {
    s << indent << "process_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.process_id);
    s << indent << "process_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.process_name);
  }
};

} // namespace message_operations
} // namespace ros

#endif // TRACK_MESSAGE_HEART_H
