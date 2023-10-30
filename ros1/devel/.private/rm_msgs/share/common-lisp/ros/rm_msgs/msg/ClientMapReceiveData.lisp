; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude ClientMapReceiveData.msg.html

(cl:defclass <ClientMapReceiveData> (roslisp-msg-protocol:ros-message)
  ((target_robot_ID
    :reader target_robot_ID
    :initarg :target_robot_ID
    :type cl:fixnum
    :initform 0)
   (target_position_x
    :reader target_position_x
    :initarg :target_position_x
    :type cl:float
    :initform 0.0)
   (target_position_y
    :reader target_position_y
    :initarg :target_position_y
    :type cl:float
    :initform 0.0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass ClientMapReceiveData (<ClientMapReceiveData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClientMapReceiveData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClientMapReceiveData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<ClientMapReceiveData> is deprecated: use rm_msgs-msg:ClientMapReceiveData instead.")))

(cl:ensure-generic-function 'target_robot_ID-val :lambda-list '(m))
(cl:defmethod target_robot_ID-val ((m <ClientMapReceiveData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:target_robot_ID-val is deprecated.  Use rm_msgs-msg:target_robot_ID instead.")
  (target_robot_ID m))

(cl:ensure-generic-function 'target_position_x-val :lambda-list '(m))
(cl:defmethod target_position_x-val ((m <ClientMapReceiveData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:target_position_x-val is deprecated.  Use rm_msgs-msg:target_position_x instead.")
  (target_position_x m))

(cl:ensure-generic-function 'target_position_y-val :lambda-list '(m))
(cl:defmethod target_position_y-val ((m <ClientMapReceiveData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:target_position_y-val is deprecated.  Use rm_msgs-msg:target_position_y instead.")
  (target_position_y m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ClientMapReceiveData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClientMapReceiveData>) ostream)
  "Serializes a message object of type '<ClientMapReceiveData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_robot_ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'target_robot_ID)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_position_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_position_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClientMapReceiveData>) istream)
  "Deserializes a message object of type '<ClientMapReceiveData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_robot_ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'target_robot_ID)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_position_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_position_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClientMapReceiveData>)))
  "Returns string type for a message object of type '<ClientMapReceiveData>"
  "rm_msgs/ClientMapReceiveData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClientMapReceiveData)))
  "Returns string type for a message object of type 'ClientMapReceiveData"
  "rm_msgs/ClientMapReceiveData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClientMapReceiveData>)))
  "Returns md5sum for a message object of type '<ClientMapReceiveData>"
  "c57a5847a34ebf54851115481ec4e6ab")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClientMapReceiveData)))
  "Returns md5sum for a message object of type 'ClientMapReceiveData"
  "c57a5847a34ebf54851115481ec4e6ab")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClientMapReceiveData>)))
  "Returns full string definition for message of type '<ClientMapReceiveData>"
  (cl:format cl:nil "uint16 target_robot_ID~%float32 target_position_x~%float32 target_position_y~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClientMapReceiveData)))
  "Returns full string definition for message of type 'ClientMapReceiveData"
  (cl:format cl:nil "uint16 target_robot_ID~%float32 target_position_x~%float32 target_position_y~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClientMapReceiveData>))
  (cl:+ 0
     2
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClientMapReceiveData>))
  "Converts a ROS message object to a list"
  (cl:list 'ClientMapReceiveData
    (cl:cons ':target_robot_ID (target_robot_ID msg))
    (cl:cons ':target_position_x (target_position_x msg))
    (cl:cons ':target_position_y (target_position_y msg))
    (cl:cons ':stamp (stamp msg))
))
