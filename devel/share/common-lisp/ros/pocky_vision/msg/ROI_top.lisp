; Auto-generated. Do not edit!


(cl:in-package pocky_vision-msg)


;//! \htmlinclude ROI_top.msg.html

(cl:defclass <ROI_top> (roslisp-msg-protocol:ros-message)
  ((top_box
    :reader top_box
    :initarg :top_box
    :type cl:string
    :initform "")
   (top_CenterX
    :reader top_CenterX
    :initarg :top_CenterX
    :type cl:float
    :initform 0.0)
   (top_CenterY
    :reader top_CenterY
    :initarg :top_CenterY
    :type cl:float
    :initform 0.0)
   (top_Angle
    :reader top_Angle
    :initarg :top_Angle
    :type cl:float
    :initform 0.0))
)

(cl:defclass ROI_top (<ROI_top>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ROI_top>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ROI_top)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pocky_vision-msg:<ROI_top> is deprecated: use pocky_vision-msg:ROI_top instead.")))

(cl:ensure-generic-function 'top_box-val :lambda-list '(m))
(cl:defmethod top_box-val ((m <ROI_top>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pocky_vision-msg:top_box-val is deprecated.  Use pocky_vision-msg:top_box instead.")
  (top_box m))

(cl:ensure-generic-function 'top_CenterX-val :lambda-list '(m))
(cl:defmethod top_CenterX-val ((m <ROI_top>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pocky_vision-msg:top_CenterX-val is deprecated.  Use pocky_vision-msg:top_CenterX instead.")
  (top_CenterX m))

(cl:ensure-generic-function 'top_CenterY-val :lambda-list '(m))
(cl:defmethod top_CenterY-val ((m <ROI_top>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pocky_vision-msg:top_CenterY-val is deprecated.  Use pocky_vision-msg:top_CenterY instead.")
  (top_CenterY m))

(cl:ensure-generic-function 'top_Angle-val :lambda-list '(m))
(cl:defmethod top_Angle-val ((m <ROI_top>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pocky_vision-msg:top_Angle-val is deprecated.  Use pocky_vision-msg:top_Angle instead.")
  (top_Angle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ROI_top>) ostream)
  "Serializes a message object of type '<ROI_top>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'top_box))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'top_box))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'top_CenterX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'top_CenterY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'top_Angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ROI_top>) istream)
  "Deserializes a message object of type '<ROI_top>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'top_box) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'top_box) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'top_CenterX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'top_CenterY) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'top_Angle) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ROI_top>)))
  "Returns string type for a message object of type '<ROI_top>"
  "pocky_vision/ROI_top")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ROI_top)))
  "Returns string type for a message object of type 'ROI_top"
  "pocky_vision/ROI_top")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ROI_top>)))
  "Returns md5sum for a message object of type '<ROI_top>"
  "3d377af5cd089c7785cff2ae8dcde5c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ROI_top)))
  "Returns md5sum for a message object of type 'ROI_top"
  "3d377af5cd089c7785cff2ae8dcde5c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ROI_top>)))
  "Returns full string definition for message of type '<ROI_top>"
  (cl:format cl:nil "string  top_box~%float64 top_CenterX~%float64 top_CenterY~%float64 top_Angle~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ROI_top)))
  "Returns full string definition for message of type 'ROI_top"
  (cl:format cl:nil "string  top_box~%float64 top_CenterX~%float64 top_CenterY~%float64 top_Angle~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ROI_top>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'top_box))
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ROI_top>))
  "Converts a ROS message object to a list"
  (cl:list 'ROI_top
    (cl:cons ':top_box (top_box msg))
    (cl:cons ':top_CenterX (top_CenterX msg))
    (cl:cons ':top_CenterY (top_CenterY msg))
    (cl:cons ':top_Angle (top_Angle msg))
))
