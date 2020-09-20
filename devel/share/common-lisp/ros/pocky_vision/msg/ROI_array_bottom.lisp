; Auto-generated. Do not edit!


(cl:in-package pocky_vision-msg)


;//! \htmlinclude ROI_array_bottom.msg.html

(cl:defclass <ROI_array_bottom> (roslisp-msg-protocol:ros-message)
  ((ROI_bottom_list
    :reader ROI_bottom_list
    :initarg :ROI_bottom_list
    :type (cl:vector pocky_vision-msg:ROI_bottom)
   :initform (cl:make-array 0 :element-type 'pocky_vision-msg:ROI_bottom :initial-element (cl:make-instance 'pocky_vision-msg:ROI_bottom))))
)

(cl:defclass ROI_array_bottom (<ROI_array_bottom>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ROI_array_bottom>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ROI_array_bottom)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pocky_vision-msg:<ROI_array_bottom> is deprecated: use pocky_vision-msg:ROI_array_bottom instead.")))

(cl:ensure-generic-function 'ROI_bottom_list-val :lambda-list '(m))
(cl:defmethod ROI_bottom_list-val ((m <ROI_array_bottom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pocky_vision-msg:ROI_bottom_list-val is deprecated.  Use pocky_vision-msg:ROI_bottom_list instead.")
  (ROI_bottom_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ROI_array_bottom>) ostream)
  "Serializes a message object of type '<ROI_array_bottom>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'ROI_bottom_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'ROI_bottom_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ROI_array_bottom>) istream)
  "Deserializes a message object of type '<ROI_array_bottom>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'ROI_bottom_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'ROI_bottom_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pocky_vision-msg:ROI_bottom))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ROI_array_bottom>)))
  "Returns string type for a message object of type '<ROI_array_bottom>"
  "pocky_vision/ROI_array_bottom")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ROI_array_bottom)))
  "Returns string type for a message object of type 'ROI_array_bottom"
  "pocky_vision/ROI_array_bottom")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ROI_array_bottom>)))
  "Returns md5sum for a message object of type '<ROI_array_bottom>"
  "dc30c6d1057454a4c58d21103c2cea31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ROI_array_bottom)))
  "Returns md5sum for a message object of type 'ROI_array_bottom"
  "dc30c6d1057454a4c58d21103c2cea31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ROI_array_bottom>)))
  "Returns full string definition for message of type '<ROI_array_bottom>"
  (cl:format cl:nil "ROI_bottom[] ROI_bottom_list~%~%================================================================================~%MSG: pocky_vision/ROI_bottom~%string bottom_box~%float64 bottom_CenterX~%float64 bottom_CenterY~%float64 bottom_Angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ROI_array_bottom)))
  "Returns full string definition for message of type 'ROI_array_bottom"
  (cl:format cl:nil "ROI_bottom[] ROI_bottom_list~%~%================================================================================~%MSG: pocky_vision/ROI_bottom~%string bottom_box~%float64 bottom_CenterX~%float64 bottom_CenterY~%float64 bottom_Angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ROI_array_bottom>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'ROI_bottom_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ROI_array_bottom>))
  "Converts a ROS message object to a list"
  (cl:list 'ROI_array_bottom
    (cl:cons ':ROI_bottom_list (ROI_bottom_list msg))
))
