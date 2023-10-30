; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude ClientMapSendData.msg.html

(cl:defclass <ClientMapSendData> (roslisp-msg-protocol:ros-message)
  ((target_position_x
    :reader target_position_x
    :initarg :target_position_x
    :type cl:float
    :initform 0.0)
   (target_position_y
    :reader target_position_y
    :initarg :target_position_y
    :type cl:float
    :initform 0.0)
   (target_position_z
    :reader target_position_z
    :initarg :target_position_z
    :type cl:float
    :initform 0.0)
   (command_keyboard
    :reader command_keyboard
    :initarg :command_keyboard
    :type cl:fixnum
    :initform 0)
   (target_robot_ID
    :reader target_robot_ID
    :initarg :target_robot_ID
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass ClientMapSendData (<ClientMapSendData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClientMapSendData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClientMapSendData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<ClientMapSendData> is deprecated: use rm_msgs-msg:ClientMapSendData instead.")))

(cl:ensure-generic-function 'target_position_x-val :lambda-list '(m))
(cl:defmethod target_position_x-val ((m <ClientMapSendData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:target_position_x-val is deprecated.  Use rm_msgs-msg:target_position_x instead.")
  (target_position_x m))

(cl:ensure-generic-function 'target_position_y-val :lambda-list '(m))
(cl:defmethod target_position_y-val ((m <ClientMapSendData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:target_position_y-val is deprecated.  Use rm_msgs-msg:target_position_y instead.")
  (target_position_y m))

(cl:ensure-generic-function 'target_position_z-val :lambda-list '(m))
(cl:defmethod target_position_z-val ((m <ClientMapSendData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:target_position_z-val is deprecated.  Use rm_msgs-msg:target_position_z instead.")
  (target_position_z m))

(cl:ensure-generic-function 'command_keyboard-val :lambda-list '(m))
(cl:defmethod command_keyboard-val ((m <ClientMapSendData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:command_keyboard-val is deprecated.  Use rm_msgs-msg:command_keyboard instead.")
  (command_keyboard m))

(cl:ensure-generic-function 'target_robot_ID-val :lambda-list '(m))
(cl:defmethod target_robot_ID-val ((m <ClientMapSendData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:target_robot_ID-val is deprecated.  Use rm_msgs-msg:target_robot_ID instead.")
  (target_robot_ID m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ClientMapSendData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ClientMapSendData>)))
    "Constants for message type '<ClientMapSendData>"
  '((:KEY_A . 65)
    (:KEY_H . 72)
    (:KEY_K . 75)
    (:KEY_L . 76)
    (:KEY_N . 78)
    (:KEY_O . 79)
    (:KEY_U . 85))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ClientMapSendData)))
    "Constants for message type 'ClientMapSendData"
  '((:KEY_A . 65)
    (:KEY_H . 72)
    (:KEY_K . 75)
    (:KEY_L . 76)
    (:KEY_N . 78)
    (:KEY_O . 79)
    (:KEY_U . 85))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClientMapSendData>) ostream)
  "Serializes a message object of type '<ClientMapSendData>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'target_position_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_keyboard)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_robot_ID)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'target_robot_ID)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClientMapSendData>) istream)
  "Deserializes a message object of type '<ClientMapSendData>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'target_position_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'command_keyboard)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'target_robot_ID)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'target_robot_ID)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClientMapSendData>)))
  "Returns string type for a message object of type '<ClientMapSendData>"
  "rm_msgs/ClientMapSendData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClientMapSendData)))
  "Returns string type for a message object of type 'ClientMapSendData"
  "rm_msgs/ClientMapSendData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClientMapSendData>)))
  "Returns md5sum for a message object of type '<ClientMapSendData>"
  "5ccfd8a27a3d104fd1e8e4702a1b153a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClientMapSendData)))
  "Returns md5sum for a message object of type 'ClientMapSendData"
  "5ccfd8a27a3d104fd1e8e4702a1b153a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClientMapSendData>)))
  "Returns full string definition for message of type '<ClientMapSendData>"
  (cl:format cl:nil "uint8 KEY_A = 65~%uint8 KEY_H = 72~%uint8 KEY_K = 75~%uint8 KEY_L = 76~%uint8 KEY_N = 78~%uint8 KEY_O = 79~%uint8 KEY_U = 85~%~%float32 target_position_x~%float32 target_position_y~%float32 target_position_z~%uint8 command_keyboard~%uint16 target_robot_ID~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClientMapSendData)))
  "Returns full string definition for message of type 'ClientMapSendData"
  (cl:format cl:nil "uint8 KEY_A = 65~%uint8 KEY_H = 72~%uint8 KEY_K = 75~%uint8 KEY_L = 76~%uint8 KEY_N = 78~%uint8 KEY_O = 79~%uint8 KEY_U = 85~%~%float32 target_position_x~%float32 target_position_y~%float32 target_position_z~%uint8 command_keyboard~%uint16 target_robot_ID~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClientMapSendData>))
  (cl:+ 0
     4
     4
     4
     1
     2
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClientMapSendData>))
  "Converts a ROS message object to a list"
  (cl:list 'ClientMapSendData
    (cl:cons ':target_position_x (target_position_x msg))
    (cl:cons ':target_position_y (target_position_y msg))
    (cl:cons ':target_position_z (target_position_z msg))
    (cl:cons ':command_keyboard (command_keyboard msg))
    (cl:cons ':target_robot_ID (target_robot_ID msg))
    (cl:cons ':stamp (stamp msg))
))
