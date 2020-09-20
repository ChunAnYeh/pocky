; Auto-generated. Do not edit!


(cl:in-package pocky_vision-msg)


;//! \htmlinclude vision_state.msg.html

(cl:defclass <vision_state> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:integer
    :initform 0))
)

(cl:defclass vision_state (<vision_state>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <vision_state>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'vision_state)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pocky_vision-msg:<vision_state> is deprecated: use pocky_vision-msg:vision_state instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <vision_state>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pocky_vision-msg:state-val is deprecated.  Use pocky_vision-msg:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <vision_state>) ostream)
  "Serializes a message object of type '<vision_state>"
  (cl:let* ((signed (cl:slot-value msg 'state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <vision_state>) istream)
  "Deserializes a message object of type '<vision_state>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<vision_state>)))
  "Returns string type for a message object of type '<vision_state>"
  "pocky_vision/vision_state")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'vision_state)))
  "Returns string type for a message object of type 'vision_state"
  "pocky_vision/vision_state")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<vision_state>)))
  "Returns md5sum for a message object of type '<vision_state>"
  "979940cbf4c11dcaa39d4ce8683ecc86")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'vision_state)))
  "Returns md5sum for a message object of type 'vision_state"
  "979940cbf4c11dcaa39d4ce8683ecc86")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<vision_state>)))
  "Returns full string definition for message of type '<vision_state>"
  (cl:format cl:nil "int64 state  ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'vision_state)))
  "Returns full string definition for message of type 'vision_state"
  (cl:format cl:nil "int64 state  ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <vision_state>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <vision_state>))
  "Converts a ROS message object to a list"
  (cl:list 'vision_state
    (cl:cons ':state (state msg))
))
