// Generated by gencpp from file romi_interface/ParkingInfo.msg
// DO NOT EDIT!


#ifndef ROMI_INTERFACE_MESSAGE_PARKINGINFO_H
#define ROMI_INTERFACE_MESSAGE_PARKINGINFO_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace romi_interface
{
template <class ContainerAllocator>
struct ParkingInfo_
{
  typedef ParkingInfo_<ContainerAllocator> Type;

  ParkingInfo_()
    : isParking(false)
    , width(0.0)
    , depth(0.0)
    , top_y(0.0)
    , bottom_y(0.0)
    , out_x(0.0)
    , in_x(0.0)  {
    }
  ParkingInfo_(const ContainerAllocator& _alloc)
    : isParking(false)
    , width(0.0)
    , depth(0.0)
    , top_y(0.0)
    , bottom_y(0.0)
    , out_x(0.0)
    , in_x(0.0)  {
  (void)_alloc;
    }



   typedef uint8_t _isParking_type;
  _isParking_type isParking;

   typedef float _width_type;
  _width_type width;

   typedef float _depth_type;
  _depth_type depth;

   typedef float _top_y_type;
  _top_y_type top_y;

   typedef float _bottom_y_type;
  _bottom_y_type bottom_y;

   typedef float _out_x_type;
  _out_x_type out_x;

   typedef float _in_x_type;
  _in_x_type in_x;





  typedef boost::shared_ptr< ::romi_interface::ParkingInfo_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::romi_interface::ParkingInfo_<ContainerAllocator> const> ConstPtr;

}; // struct ParkingInfo_

typedef ::romi_interface::ParkingInfo_<std::allocator<void> > ParkingInfo;

typedef boost::shared_ptr< ::romi_interface::ParkingInfo > ParkingInfoPtr;
typedef boost::shared_ptr< ::romi_interface::ParkingInfo const> ParkingInfoConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::romi_interface::ParkingInfo_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::romi_interface::ParkingInfo_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::romi_interface::ParkingInfo_<ContainerAllocator1> & lhs, const ::romi_interface::ParkingInfo_<ContainerAllocator2> & rhs)
{
  return lhs.isParking == rhs.isParking &&
    lhs.width == rhs.width &&
    lhs.depth == rhs.depth &&
    lhs.top_y == rhs.top_y &&
    lhs.bottom_y == rhs.bottom_y &&
    lhs.out_x == rhs.out_x &&
    lhs.in_x == rhs.in_x;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::romi_interface::ParkingInfo_<ContainerAllocator1> & lhs, const ::romi_interface::ParkingInfo_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace romi_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::romi_interface::ParkingInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::romi_interface::ParkingInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::romi_interface::ParkingInfo_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::romi_interface::ParkingInfo_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::romi_interface::ParkingInfo_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::romi_interface::ParkingInfo_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::romi_interface::ParkingInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d4b96bd09ad1afc3b3dc969864e27d31";
  }

  static const char* value(const ::romi_interface::ParkingInfo_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd4b96bd09ad1afc3ULL;
  static const uint64_t static_value2 = 0xb3dc969864e27d31ULL;
};

template<class ContainerAllocator>
struct DataType< ::romi_interface::ParkingInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "romi_interface/ParkingInfo";
  }

  static const char* value(const ::romi_interface::ParkingInfo_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::romi_interface::ParkingInfo_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool isParking\n"
"\n"
"float32 width\n"
"float32 depth\n"
"\n"
"float32 top_y\n"
"float32 bottom_y\n"
"float32 out_x\n"
"float32 in_x\n"
;
  }

  static const char* value(const ::romi_interface::ParkingInfo_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::romi_interface::ParkingInfo_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.isParking);
      stream.next(m.width);
      stream.next(m.depth);
      stream.next(m.top_y);
      stream.next(m.bottom_y);
      stream.next(m.out_x);
      stream.next(m.in_x);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ParkingInfo_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::romi_interface::ParkingInfo_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::romi_interface::ParkingInfo_<ContainerAllocator>& v)
  {
    s << indent << "isParking: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.isParking);
    s << indent << "width: ";
    Printer<float>::stream(s, indent + "  ", v.width);
    s << indent << "depth: ";
    Printer<float>::stream(s, indent + "  ", v.depth);
    s << indent << "top_y: ";
    Printer<float>::stream(s, indent + "  ", v.top_y);
    s << indent << "bottom_y: ";
    Printer<float>::stream(s, indent + "  ", v.bottom_y);
    s << indent << "out_x: ";
    Printer<float>::stream(s, indent + "  ", v.out_x);
    s << indent << "in_x: ";
    Printer<float>::stream(s, indent + "  ", v.in_x);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROMI_INTERFACE_MESSAGE_PARKINGINFO_H