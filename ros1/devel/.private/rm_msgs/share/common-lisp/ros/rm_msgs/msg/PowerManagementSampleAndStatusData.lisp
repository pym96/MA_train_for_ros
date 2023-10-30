; Auto-generated. Do not edit!


(cl:in-package rm_msgs-msg)


;//! \htmlinclude PowerManagementSampleAndStatusData.msg.html

(cl:defclass <PowerManagementSampleAndStatusData> (roslisp-msg-protocol:ros-message)
  ((chassis_power
    :reader chassis_power
    :initarg :chassis_power
    :type cl:float
    :initform 0.0)
   (chassis_expect_power
    :reader chassis_expect_power
    :initarg :chassis_expect_power
    :type cl:float
    :initform 0.0)
   (capacity_recent_charge_power
    :reader capacity_recent_charge_power
    :initarg :capacity_recent_charge_power
    :type cl:float
    :initform 0.0)
   (capacity_remain_charge
    :reader capacity_remain_charge
    :initarg :capacity_remain_charge
    :type cl:float
    :initform 0.0)
   (capacity_expect_charge_power
    :reader capacity_expect_charge_power
    :initarg :capacity_expect_charge_power
    :type cl:fixnum
    :initform 0)
   (state_machine_running_state
    :reader state_machine_running_state
    :initarg :state_machine_running_state
    :type cl:fixnum
    :initform 0)
   (power_management_protection_info
    :reader power_management_protection_info
    :initarg :power_management_protection_info
    :type cl:fixnum
    :initform 0)
   (power_management_topology
    :reader power_management_topology
    :initarg :power_management_topology
    :type cl:fixnum
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass PowerManagementSampleAndStatusData (<PowerManagementSampleAndStatusData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PowerManagementSampleAndStatusData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PowerManagementSampleAndStatusData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rm_msgs-msg:<PowerManagementSampleAndStatusData> is deprecated: use rm_msgs-msg:PowerManagementSampleAndStatusData instead.")))

(cl:ensure-generic-function 'chassis_power-val :lambda-list '(m))
(cl:defmethod chassis_power-val ((m <PowerManagementSampleAndStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:chassis_power-val is deprecated.  Use rm_msgs-msg:chassis_power instead.")
  (chassis_power m))

(cl:ensure-generic-function 'chassis_expect_power-val :lambda-list '(m))
(cl:defmethod chassis_expect_power-val ((m <PowerManagementSampleAndStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:chassis_expect_power-val is deprecated.  Use rm_msgs-msg:chassis_expect_power instead.")
  (chassis_expect_power m))

(cl:ensure-generic-function 'capacity_recent_charge_power-val :lambda-list '(m))
(cl:defmethod capacity_recent_charge_power-val ((m <PowerManagementSampleAndStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:capacity_recent_charge_power-val is deprecated.  Use rm_msgs-msg:capacity_recent_charge_power instead.")
  (capacity_recent_charge_power m))

(cl:ensure-generic-function 'capacity_remain_charge-val :lambda-list '(m))
(cl:defmethod capacity_remain_charge-val ((m <PowerManagementSampleAndStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:capacity_remain_charge-val is deprecated.  Use rm_msgs-msg:capacity_remain_charge instead.")
  (capacity_remain_charge m))

(cl:ensure-generic-function 'capacity_expect_charge_power-val :lambda-list '(m))
(cl:defmethod capacity_expect_charge_power-val ((m <PowerManagementSampleAndStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:capacity_expect_charge_power-val is deprecated.  Use rm_msgs-msg:capacity_expect_charge_power instead.")
  (capacity_expect_charge_power m))

(cl:ensure-generic-function 'state_machine_running_state-val :lambda-list '(m))
(cl:defmethod state_machine_running_state-val ((m <PowerManagementSampleAndStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:state_machine_running_state-val is deprecated.  Use rm_msgs-msg:state_machine_running_state instead.")
  (state_machine_running_state m))

(cl:ensure-generic-function 'power_management_protection_info-val :lambda-list '(m))
(cl:defmethod power_management_protection_info-val ((m <PowerManagementSampleAndStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:power_management_protection_info-val is deprecated.  Use rm_msgs-msg:power_management_protection_info instead.")
  (power_management_protection_info m))

(cl:ensure-generic-function 'power_management_topology-val :lambda-list '(m))
(cl:defmethod power_management_topology-val ((m <PowerManagementSampleAndStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:power_management_topology-val is deprecated.  Use rm_msgs-msg:power_management_topology instead.")
  (power_management_topology m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <PowerManagementSampleAndStatusData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rm_msgs-msg:stamp-val is deprecated.  Use rm_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PowerManagementSampleAndStatusData>) ostream)
  "Serializes a message object of type '<PowerManagementSampleAndStatusData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'chassis_power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'chassis_expect_power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'capacity_recent_charge_power))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'capacity_remain_charge))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'capacity_expect_charge_power)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state_machine_running_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_management_protection_info)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_management_topology)) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PowerManagementSampleAndStatusData>) istream)
  "Deserializes a message object of type '<PowerManagementSampleAndStatusData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'chassis_power) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'chassis_expect_power) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'capacity_recent_charge_power) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'capacity_remain_charge) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'capacity_expect_charge_power)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'state_machine_running_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_management_protection_info)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'power_management_topology)) (cl:read-byte istream))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PowerManagementSampleAndStatusData>)))
  "Returns string type for a message object of type '<PowerManagementSampleAndStatusData>"
  "rm_msgs/PowerManagementSampleAndStatusData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PowerManagementSampleAndStatusData)))
  "Returns string type for a message object of type 'PowerManagementSampleAndStatusData"
  "rm_msgs/PowerManagementSampleAndStatusData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PowerManagementSampleAndStatusData>)))
  "Returns md5sum for a message object of type '<PowerManagementSampleAndStatusData>"
  "65aea0c4cfd1f7e0707186c9fe85ead2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PowerManagementSampleAndStatusData)))
  "Returns md5sum for a message object of type 'PowerManagementSampleAndStatusData"
  "65aea0c4cfd1f7e0707186c9fe85ead2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PowerManagementSampleAndStatusData>)))
  "Returns full string definition for message of type '<PowerManagementSampleAndStatusData>"
  (cl:format cl:nil "float32 chassis_power~%float32 chassis_expect_power~%float32 capacity_recent_charge_power~%float32 capacity_remain_charge~%uint8 capacity_expect_charge_power~%uint8 state_machine_running_state~%uint8 power_management_protection_info~%uint8 power_management_topology~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PowerManagementSampleAndStatusData)))
  "Returns full string definition for message of type 'PowerManagementSampleAndStatusData"
  (cl:format cl:nil "float32 chassis_power~%float32 chassis_expect_power~%float32 capacity_recent_charge_power~%float32 capacity_remain_charge~%uint8 capacity_expect_charge_power~%uint8 state_machine_running_state~%uint8 power_management_protection_info~%uint8 power_management_topology~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PowerManagementSampleAndStatusData>))
  (cl:+ 0
     4
     4
     4
     4
     1
     1
     1
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PowerManagementSampleAndStatusData>))
  "Converts a ROS message object to a list"
  (cl:list 'PowerManagementSampleAndStatusData
    (cl:cons ':chassis_power (chassis_power msg))
    (cl:cons ':chassis_expect_power (chassis_expect_power msg))
    (cl:cons ':capacity_recent_charge_power (capacity_recent_charge_power msg))
    (cl:cons ':capacity_remain_charge (capacity_remain_charge msg))
    (cl:cons ':capacity_expect_charge_power (capacity_expect_charge_power msg))
    (cl:cons ':state_machine_running_state (state_machine_running_state msg))
    (cl:cons ':power_management_protection_info (power_management_protection_info msg))
    (cl:cons ':power_management_topology (power_management_topology msg))
    (cl:cons ':stamp (stamp msg))
))
