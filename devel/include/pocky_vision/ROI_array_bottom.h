// Generated by gencpp from file pocky_vision/ROI_array_bottom.msg
// DO NOT EDIT!


#ifndef POCKY_VISION_MESSAGE_ROI_ARRAY_BOTTOM_H
#define POCKY_VISION_MESSAGE_ROI_ARRAY_BOTTOM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <pocky_vision/ROI_bottom.h>

namespace pocky_vision
{
template <class ContainerAllocator>
struct ROI_array_bottom_
{
  typedef ROI_array_bottom_<ContainerAllocator> Type;

  ROI_array_bottom_()
    : ROI_bottom_list()  {
    }
  ROI_array_bottom_(const ContainerAllocator& _alloc)
    : ROI_bottom_list(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::pocky_vision::ROI_bottom_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::pocky_vision::ROI_bottom_<ContainerAllocator> >::other >  _ROI_bottom_list_type;
  _ROI_bottom_list_type ROI_bottom_list;





  typedef boost::shared_ptr< ::pocky_vision::ROI_array_bottom_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pocky_vision::ROI_array_bottom_<ContainerAllocator> const> ConstPtr;

}; // struct ROI_array_bottom_

typedef ::pocky_vision::ROI_array_bottom_<std::allocator<void> > ROI_array_bottom;

typedef boost::shared_ptr< ::pocky_vision::ROI_array_bottom > ROI_array_bottomPtr;
typedef boost::shared_ptr< ::pocky_vision::ROI_array_bottom const> ROI_array_bottomConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pocky_vision::ROI_array_bottom_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pocky_vision::ROI_array_bottom_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pocky_vision::ROI_array_bottom_<ContainerAllocator1> & lhs, const ::pocky_vision::ROI_array_bottom_<ContainerAllocator2> & rhs)
{
  return lhs.ROI_bottom_list == rhs.ROI_bottom_list;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pocky_vision::ROI_array_bottom_<ContainerAllocator1> & lhs, const ::pocky_vision::ROI_array_bottom_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pocky_vision

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pocky_vision::ROI_array_bottom_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pocky_vision::ROI_array_bottom_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pocky_vision::ROI_array_bottom_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pocky_vision::ROI_array_bottom_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pocky_vision::ROI_array_bottom_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pocky_vision::ROI_array_bottom_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pocky_vision::ROI_array_bottom_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dc30c6d1057454a4c58d21103c2cea31";
  }

  static const char* value(const ::pocky_vision::ROI_array_bottom_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdc30c6d1057454a4ULL;
  static const uint64_t static_value2 = 0xc58d21103c2cea31ULL;
};

template<class ContainerAllocator>
struct DataType< ::pocky_vision::ROI_array_bottom_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pocky_vision/ROI_array_bottom";
  }

  static const char* value(const ::pocky_vision::ROI_array_bottom_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pocky_vision::ROI_array_bottom_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ROI_bottom[] ROI_bottom_list\n"
"\n"
"================================================================================\n"
"MSG: pocky_vision/ROI_bottom\n"
"string bottom_box\n"
"float64 bottom_CenterX\n"
"float64 bottom_CenterY\n"
"float64 bottom_Angle\n"
;
  }

  static const char* value(const ::pocky_vision::ROI_array_bottom_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pocky_vision::ROI_array_bottom_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ROI_bottom_list);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ROI_array_bottom_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pocky_vision::ROI_array_bottom_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pocky_vision::ROI_array_bottom_<ContainerAllocator>& v)
  {
    s << indent << "ROI_bottom_list[]" << std::endl;
    for (size_t i = 0; i < v.ROI_bottom_list.size(); ++i)
    {
      s << indent << "  ROI_bottom_list[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::pocky_vision::ROI_bottom_<ContainerAllocator> >::stream(s, indent + "    ", v.ROI_bottom_list[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // POCKY_VISION_MESSAGE_ROI_ARRAY_BOTTOM_H
