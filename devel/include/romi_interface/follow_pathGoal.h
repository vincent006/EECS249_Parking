// Generated by gencpp from file romi_interface/follow_pathGoal.msg
// DO NOT EDIT!


#ifndef ROMI_INTERFACE_MESSAGE_FOLLOW_PATHGOAL_H
#define ROMI_INTERFACE_MESSAGE_FOLLOW_PATHGOAL_H


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
struct follow_pathGoal_
{
  typedef follow_pathGoal_<ContainerAllocator> Type;

  follow_pathGoal_()
    : path()  {
    }
  follow_pathGoal_(const ContainerAllocator& _alloc)
    : path(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _path_type;
  _path_type path;





  typedef boost::shared_ptr< ::romi_interface::follow_pathGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::romi_interface::follow_pathGoal_<ContainerAllocator> const> ConstPtr;

}; // struct follow_pathGoal_

typedef ::romi_interface::follow_pathGoal_<std::allocator<void> > follow_pathGoal;

typedef boost::shared_ptr< ::romi_interface::follow_pathGoal > follow_pathGoalPtr;
typedef boost::shared_ptr< ::romi_interface::follow_pathGoal const> follow_pathGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::romi_interface::follow_pathGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::romi_interface::follow_pathGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::romi_interface::follow_pathGoal_<ContainerAllocator1> & lhs, const ::romi_interface::follow_pathGoal_<ContainerAllocator2> & rhs)
{
  return lhs.path == rhs.path;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::romi_interface::follow_pathGoal_<ContainerAllocator1> & lhs, const ::romi_interface::follow_pathGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace romi_interface

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::romi_interface::follow_pathGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::romi_interface::follow_pathGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::romi_interface::follow_pathGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::romi_interface::follow_pathGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::romi_interface::follow_pathGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::romi_interface::follow_pathGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::romi_interface::follow_pathGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "7a8156bd9db798c344e3efbcdcb081c4";
  }

  static const char* value(const ::romi_interface::follow_pathGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x7a8156bd9db798c3ULL;
  static const uint64_t static_value2 = 0x44e3efbcdcb081c4ULL;
};

template<class ContainerAllocator>
struct DataType< ::romi_interface::follow_pathGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "romi_interface/follow_pathGoal";
  }

  static const char* value(const ::romi_interface::follow_pathGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::romi_interface::follow_pathGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Define the goal\n"
"float32[] path\n"
;
  }

  static const char* value(const ::romi_interface::follow_pathGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::romi_interface::follow_pathGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct follow_pathGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::romi_interface::follow_pathGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::romi_interface::follow_pathGoal_<ContainerAllocator>& v)
  {
    s << indent << "path[]" << std::endl;
    for (size_t i = 0; i < v.path.size(); ++i)
    {
      s << indent << "  path[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.path[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROMI_INTERFACE_MESSAGE_FOLLOW_PATHGOAL_H
