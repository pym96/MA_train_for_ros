;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::PowerManagementSampleAndStatusData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'PowerManagementSampleAndStatusData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::POWERMANAGEMENTSAMPLEANDSTATUSDATA")
  (make-package "RM_MSGS::POWERMANAGEMENTSAMPLEANDSTATUSDATA"))

(in-package "ROS")
;;//! \htmlinclude PowerManagementSampleAndStatusData.msg.html


(defclass rm_msgs::PowerManagementSampleAndStatusData
  :super ros::object
  :slots (_chassis_power _chassis_expect_power _capacity_recent_charge_power _capacity_remain_charge _capacity_expect_charge_power _state_machine_running_state _power_management_protection_info _power_management_topology _stamp ))

(defmethod rm_msgs::PowerManagementSampleAndStatusData
  (:init
   (&key
    ((:chassis_power __chassis_power) 0.0)
    ((:chassis_expect_power __chassis_expect_power) 0.0)
    ((:capacity_recent_charge_power __capacity_recent_charge_power) 0.0)
    ((:capacity_remain_charge __capacity_remain_charge) 0.0)
    ((:capacity_expect_charge_power __capacity_expect_charge_power) 0)
    ((:state_machine_running_state __state_machine_running_state) 0)
    ((:power_management_protection_info __power_management_protection_info) 0)
    ((:power_management_topology __power_management_topology) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _chassis_power (float __chassis_power))
   (setq _chassis_expect_power (float __chassis_expect_power))
   (setq _capacity_recent_charge_power (float __capacity_recent_charge_power))
   (setq _capacity_remain_charge (float __capacity_remain_charge))
   (setq _capacity_expect_charge_power (round __capacity_expect_charge_power))
   (setq _state_machine_running_state (round __state_machine_running_state))
   (setq _power_management_protection_info (round __power_management_protection_info))
   (setq _power_management_topology (round __power_management_topology))
   (setq _stamp __stamp)
   self)
  (:chassis_power
   (&optional __chassis_power)
   (if __chassis_power (setq _chassis_power __chassis_power)) _chassis_power)
  (:chassis_expect_power
   (&optional __chassis_expect_power)
   (if __chassis_expect_power (setq _chassis_expect_power __chassis_expect_power)) _chassis_expect_power)
  (:capacity_recent_charge_power
   (&optional __capacity_recent_charge_power)
   (if __capacity_recent_charge_power (setq _capacity_recent_charge_power __capacity_recent_charge_power)) _capacity_recent_charge_power)
  (:capacity_remain_charge
   (&optional __capacity_remain_charge)
   (if __capacity_remain_charge (setq _capacity_remain_charge __capacity_remain_charge)) _capacity_remain_charge)
  (:capacity_expect_charge_power
   (&optional __capacity_expect_charge_power)
   (if __capacity_expect_charge_power (setq _capacity_expect_charge_power __capacity_expect_charge_power)) _capacity_expect_charge_power)
  (:state_machine_running_state
   (&optional __state_machine_running_state)
   (if __state_machine_running_state (setq _state_machine_running_state __state_machine_running_state)) _state_machine_running_state)
  (:power_management_protection_info
   (&optional __power_management_protection_info)
   (if __power_management_protection_info (setq _power_management_protection_info __power_management_protection_info)) _power_management_protection_info)
  (:power_management_topology
   (&optional __power_management_topology)
   (if __power_management_topology (setq _power_management_topology __power_management_topology)) _power_management_topology)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; float32 _chassis_power
    4
    ;; float32 _chassis_expect_power
    4
    ;; float32 _capacity_recent_charge_power
    4
    ;; float32 _capacity_remain_charge
    4
    ;; uint8 _capacity_expect_charge_power
    1
    ;; uint8 _state_machine_running_state
    1
    ;; uint8 _power_management_protection_info
    1
    ;; uint8 _power_management_topology
    1
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _chassis_power
       (sys::poke _chassis_power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _chassis_expect_power
       (sys::poke _chassis_expect_power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _capacity_recent_charge_power
       (sys::poke _capacity_recent_charge_power (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _capacity_remain_charge
       (sys::poke _capacity_remain_charge (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _capacity_expect_charge_power
       (write-byte _capacity_expect_charge_power s)
     ;; uint8 _state_machine_running_state
       (write-byte _state_machine_running_state s)
     ;; uint8 _power_management_protection_info
       (write-byte _power_management_protection_info s)
     ;; uint8 _power_management_topology
       (write-byte _power_management_topology s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _chassis_power
     (setq _chassis_power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _chassis_expect_power
     (setq _chassis_expect_power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _capacity_recent_charge_power
     (setq _capacity_recent_charge_power (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _capacity_remain_charge
     (setq _capacity_remain_charge (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _capacity_expect_charge_power
     (setq _capacity_expect_charge_power (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _state_machine_running_state
     (setq _state_machine_running_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _power_management_protection_info
     (setq _power_management_protection_info (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _power_management_topology
     (setq _power_management_topology (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::PowerManagementSampleAndStatusData :md5sum-) "65aea0c4cfd1f7e0707186c9fe85ead2")
(setf (get rm_msgs::PowerManagementSampleAndStatusData :datatype-) "rm_msgs/PowerManagementSampleAndStatusData")
(setf (get rm_msgs::PowerManagementSampleAndStatusData :definition-)
      "float32 chassis_power
float32 chassis_expect_power
float32 capacity_recent_charge_power
float32 capacity_remain_charge
uint8 capacity_expect_charge_power
uint8 state_machine_running_state
uint8 power_management_protection_info
uint8 power_management_topology

time stamp

")



(provide :rm_msgs/PowerManagementSampleAndStatusData "65aea0c4cfd1f7e0707186c9fe85ead2")


