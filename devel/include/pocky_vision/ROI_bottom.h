// Generated by gencpp from file pocky_vision/ROI_bottom.msg
// DO NOT EDIT!


#ifndef POCKY_VISION_MESSAGE_ROI_BOTTOM_H
#define POCKY_VISION_MESSAGE_ROI_BOTTOM_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pocky_vision
{
template <class ContainerAllocator>
struct ROI_bottom_
{
  typedef ROI_bottom_<ContainerAllocator> Type;

  ROI_bottom_()
    : bottom_box()
    , bottom_CenterX(0.0)
    , bottom_CenterY(0.0)
    , bottom_Angle(0.0)  {
    }
  ROI_bottom_(const ContainerAllocator& _alloc)
    : bottom_box(_alloc)
    , bottom_CenterX(0.0)
    , bottom_CenterY(0.0)
    , bottom_Angle(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _bottom_box_type;
  _bottom_box_type bottom_box;

   typedef double _bottom_CenterX_type;
  _bottom_CenterX_type bottom_CenterX;

   typedef double _bottom_CenterY_type;
  _bottom_CenterY_type bottom_CenterY;

   typedef double _bottom_Angle_type;
  _bottom_Angle_type bottom_Angle;





  typedef boost::shared_ptr< ::pocky_vision::ROI_bottom_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pocky_vision::ROI_bottom_<ContainerAllocator> const> ConstPtr;

}; // struct ROI_bottom_

typedef ::pocky_vision::ROI_bottom_<std::allocator<void> > ROI_bottom;

typedef boost::shared_ptr< ::pocky_vision::ROI_bottom > ROI_bottomPtr;
typedef boost::shared_ptr< ::pocky_vision::ROI_bottom const> ROI_bottomConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pocky_vision::ROI_bottom_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pocky_vision::ROI_bottom_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pocky_vision::ROI_bottom_<ContainerAllocator1> & lhs, const ::pocky_vision::ROI_bottom_<ContainerAllocator2> & rhs)
{
  return lhs.bottom_box == rhs.bottom_box &&
    lhs.bottom_CenterX == rhs.bottom_CenterX &&
    lhs.bottom_CenterY == rhs.bottom_CenterY &&
    lhs.bottom_Angle == rhs.bottom_Angle;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pocky_vision::ROI_bottom_<ContainerAllocator1> & lhs, const ::pocky_vision::ROI_bottom_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pocky_vision

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::pocky_vision::ROI_bottom_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pocky_vision::ROI_bottom_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pocky_vision::ROI_bottom_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pocky_vision::ROI_bottom_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pocky_vision::ROI_bottom_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pocky_vision::ROI_bottom_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pocky_vision::ROI_bottom_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a26b9311496d0733040a34bd19d4492d";
  }

  static const char* value(const ::pocky_vision::ROI_bottom_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa26b9311496d0733ULL;
  static const uint64_t static_value2 = 0x040a34bd19d4492dULL;
};

template<class ContainerAllocator>
struct DataType< ::pocky_vision::ROI_bottom_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pocky_vision/ROI_bottom";
  }

  static const char* value(const ::pocky_vision::ROI_bottom_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pocky_vision::ROI_bottom_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string bottom_box\n"
"float64 bottom_CenterX\n"
"float64 bottom_CenterY\n"
"float64 bottom_Angle\n"
;
  }

  static const char* value(const ::pocky_vision::ROI_bottom_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pocky_vision::ROI_bottom_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.bottom_box);
      stream.next(m.bottom_CenterX);
      stream.next(m.bottom_CenterY);
      stream.next(m.bottom_Angle);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ROI_bottom_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pocky_vision::ROI_bottom_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pocky_vision::ROI_bottom_<ContainerAllocator>& v)
  {
    s << indent << "bottom_box: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.bottom_box);
    s << indent << "bottom_CenterX: ";
    Printer<double>::stream(s, indent + "  ", v.bottom_CenterX);
    s << indent << "bottom_CenterY: ";
    Printer<double>::stream(s, indent + "  ", v.bottom_CenterY);
    s << indent << "bottom_Angle: ";
    Printer<double>::stream(s, indent + "  ", v.bottom_Angle);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POCKY_VISION_MESSAGE_ROI_BOTTOM_H