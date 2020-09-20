; Auto-generated. Do not edit!


(cl:in-package pocky_vision-msg)


;//! \htmlinclude ROI_bottom.msg.html

(cl:defclass <ROI_bottom> (roslisp-msg-protocol:ros-message)
  ((bottom_box
    :reader bottom_box
    :initarg :bottom_box
    :type cl:string
    :initform "")
   (bottom_CenterX
    :reader bottom_CenterX
    :initarg :bottom_CenterX
    :type cl:float
    :initform 0.0)
   (bottom_CenterY
    :reader bottom_CenterY
    :initarg :bottom_CenterY
    :type cl:float
    :initform 0.0)
   (bottom_Angle
    :reader bottom_Angle
    :initarg :bottom_Angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass ROI_bottom (<ROI_bottom>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ROI_bottom>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ROI_bottom)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pocky_vision-msg:<ROI_bottom> is deprecated: use pocky_vision-msg:ROI_bottom instead.")))

(cl:ensure-generic-function 'bottom_box-val :lambda-list '(m))
(cl:defmethod bottom_box-val ((m <ROI_bottom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pocky_vision-msg:bottom_box-val is deprecated.  Use pocky_vision-msg:bottom_box instead.")
  (bottom_box m))

(cl:ensure-generic-function 'bottom_CenterX-val :lambda-list '(m))
(cl:defmethod bottom_CenterX-val ((m <ROI_bottom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pocky_vision-msg:bottom_CenterX-val is deprecated.  Use pocky_vision-msg:bottom_CenterX instead.")
  (bottom_CenterX m))

(cl:ensure-generic-function 'bottom_CenterY-val :lambda-list '(m))
(cl:defmethod bottom_CenterY-val ((m <ROI_bottom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pocky_vision-msg:bottom_CenterY-val is deprecated.  Use pocky_vision-msg:bottom_CenterY instead.")
  (bottom_CenterY m))

(cl:ensure-generic-function 'bottom_Angle-val :lambda-list '(m))
(cl:defmethod bottom_Angle-val ((m <ROI_bottom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pocky_vision-msg:bottom_Angle-val is deprecated.  Use pocky_vision-msg:bottom_Angle instead.")
  (bottom_Angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ROI_bottom>) ostream)
  "Serializes a message object of type '<ROI_bottom>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bottom_box))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bottom_box))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bottom_CenterX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bottom_CenterY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'bottom_Angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ROI_bottom>) istream)
  "Deserializes a message object of type '<ROI_bottom>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bottom_box) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bottom_box) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bottom_CenterX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bottom_CenterY) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bottom_Angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ROI_bottom>)))
  "Returns string type for a message object of type '<ROI_bottom>"
  "pocky_vision/ROI_bottom")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ROI_bottom)))
  "Returns string type for a message object of type 'ROI_bottom"
  "pocky_vision/ROI_bottom")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ROI_bottom>)))
  "Returns md5sum for a message object of type '<ROI_bottom>"
  "a26b9311496d0733040a34bd19d4492d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ROI_bottom)))
  "Returns md5sum for a message object of type 'ROI_bottom"
  "a26b9311496d0733040a34bd19d4492d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ROI_bottom>)))
  "Returns full string definition for message of type '<ROI_bottom>"
  (cl:format cl:nil "string bottom_box~%float64 bottom_CenterX~%float64 bottom_CenterY~%float64 bottom_Angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ROI_bottom)))
  "Returns full string definition for message of type 'ROI_bottom"
  (cl:format cl:nil "string bottom_box~%float64 bottom_CenterX~%float64 bottom_CenterY~%float64 bottom_Angle~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ROI_bottom>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'bottom_box))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ROI_bottom>))
  "Converts a ROS message object to a list"
  (cl:list 'ROI_bottom
    (cl:cons ':bottom_box (bottom_box msg))
    (cl:cons ':bottom_CenterX (bottom_CenterX msg))
    (cl:cons ':bottom_CenterY (bottom_CenterY msg))
    (cl:cons ':bottom_Angle (bottom_Angle msg))
))
