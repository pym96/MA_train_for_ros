; Auto-generated. Do not edit!


(cl:in-package node_demo-msg)


;//! \htmlinclude UserType.msg.html

(cl:defclass <UserType> (roslisp-msg-protocol:ros-message)
  ((demo_header
    :reader demo_header
    :initarg :demo_header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (demo_bool
    :reader demo_bool
    :initarg :demo_bool
    :type cl:boolean
    :initform cl:nil)
   (demo_byte
    :reader demo_byte
    :initarg :demo_byte
    :type cl:integer
    :initform 0)
   (demo_floats
    :reader demo_floats
    :initarg :demo_floats
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass UserType (<UserType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UserType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UserType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name node_demo-msg:<UserType> is deprecated: use node_demo-msg:UserType instead.")))

(cl:ensure-generic-function 'demo_header-val :lambda-list '(m))
(cl:defmethod demo_header-val ((m <UserType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader node_demo-msg:demo_header-val is deprecated.  Use node_demo-msg:demo_header instead.")
  (demo_header m))

(cl:ensure-generic-function 'demo_bool-val :lambda-list '(m))
(cl:defmethod demo_bool-val ((m <UserType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader node_demo-msg:demo_bool-val is deprecated.  Use node_demo-msg:demo_bool instead.")
  (demo_bool m))

(cl:ensure-generic-function 'demo_byte-val :lambda-list '(m))
(cl:defmethod demo_byte-val ((m <UserType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader node_demo-msg:demo_byte-val is deprecated.  Use node_demo-msg:demo_byte instead.")
  (demo_byte m))

(cl:ensure-generic-function 'demo_floats-val :lambda-list '(m))
(cl:defmethod demo_floats-val ((m <UserType>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader node_demo-msg:demo_floats-val is deprecated.  Use node_demo-msg:demo_floats instead.")
  (demo_floats m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UserType>) ostream)
  "Serializes a message object of type '<UserType>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'demo_header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'demo_bool) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'demo_byte)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'demo_floats))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'demo_floats))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UserType>) istream)
  "Deserializes a message object of type '<UserType>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'demo_header) istream)
    (cl:setf (cl:slot-value msg 'demo_bool) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'demo_byte)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'demo_floats) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'demo_floats)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UserType>)))
  "Returns string type for a message object of type '<UserType>"
  "node_demo/UserType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UserType)))
  "Returns string type for a message object of type 'UserType"
  "node_demo/UserType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UserType>)))
  "Returns md5sum for a message object of type '<UserType>"
  "78526411b17121c33eed9a69a6cc32f7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UserType)))
  "Returns md5sum for a message object of type 'UserType"
  "78526411b17121c33eed9a69a6cc32f7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UserType>)))
  "Returns full string definition for message of type '<UserType>"
  (cl:format cl:nil "Header demo_header~%bool demo_bool~%byte demo_byte~%float32[] demo_floats~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UserType)))
  "Returns full string definition for message of type 'UserType"
  (cl:format cl:nil "Header demo_header~%bool demo_bool~%byte demo_byte~%float32[] demo_floats~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UserType>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'demo_header))
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'demo_floats) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UserType>))
  "Converts a ROS message object to a list"
  (cl:list 'UserType
    (cl:cons ':demo_header (demo_header msg))
    (cl:cons ':demo_bool (demo_bool msg))
    (cl:cons ':demo_byte (demo_byte msg))
    (cl:cons ':demo_floats (demo_floats msg))
))
