; Auto-generated. Do not edit!


(cl:in-package pocky_vision-msg)


;//! \htmlinclude ROI_array_top.msg.html

(cl:defclass <ROI_array_top> (roslisp-msg-protocol:ros-message)
  ((ROI_top_list
    :reader ROI_top_list
    :initarg :ROI_top_list
    :type (cl:vector pocky_vision-msg:ROI_top)
   :initform (cl:make-array 0 :element-type 'pocky_vision-msg:ROI_top :initial-element (cl:make-instance 'pocky_vision-msg:ROI_top))))
)

(cl:defclass ROI_array_top (<ROI_array_top>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ROI_array_top>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ROI_array_top)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pocky_vision-msg:<ROI_array_top> is deprecated: use pocky_vision-msg:ROI_array_top instead.")))

(cl:ensure-generic-function 'ROI_top_list-val :lambda-list '(m))
(cl:defmethod ROI_top_list-val ((m <ROI_array_top>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pocky_vision-msg:ROI_top_list-val is deprecated.  Use pocky_vision-msg:ROI_top_list instead.")
  (ROI_top_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ROI_array_top>) ostream)
  "Serializes a message object of type '<ROI_array_top>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ROI_top_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ROI_top_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ROI_array_top>) istream)
  "Deserializes a message object of type '<ROI_array_top>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ROI_top_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ROI_top_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pocky_vision-msg:ROI_top))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ROI_array_top>)))
  "Returns string type for a message object of type '<ROI_array_top>"
  "pocky_vision/ROI_array_top")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ROI_array_top)))
  "Returns string type for a message object of type 'ROI_array_top"
  "pocky_vision/ROI_array_top")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ROI_array_top>)))
  "Returns md5sum for a message object of type '<ROI_array_top>"
  "355919cc8ce59f1f4229b0fb075cd563")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ROI_array_top)))
  "Returns md5sum for a message object of type 'ROI_array_top"
  "355919cc8ce59f1f4229b0fb075cd563")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ROI_array_top>)))
  "Returns full string definition for message of type '<ROI_array_top>"
  (cl:format cl:nil "ROI_top[] ROI_top_list~%~%================================================================================~%MSG: pocky_vision/ROI_top~%string  top_box~%float64 top_CenterX~%float64 top_CenterY~%float64 top_Angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ROI_array_top)))
  "Returns full string definition for message of type 'ROI_array_top"
  (cl:format cl:nil "ROI_top[] ROI_top_list~%~%================================================================================~%MSG: pocky_vision/ROI_top~%string  top_box~%float64 top_CenterX~%float64 top_CenterY~%float64 top_Angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ROI_array_top>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ROI_top_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ROI_array_top>))
  "Converts a ROS message object to a list"
  (cl:list 'ROI_array_top
    (cl:cons ':ROI_top_list (ROI_top_list msg))
))
