;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::ClientMapSendData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'ClientMapSendData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::CLIENTMAPSENDDATA")
  (make-package "RM_MSGS::CLIENTMAPSENDDATA"))

(in-package "ROS")
;;//! \htmlinclude ClientMapSendData.msg.html


(intern "*KEY_A*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_A* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_A* 65)
(intern "*KEY_H*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_H* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_H* 72)
(intern "*KEY_K*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_K* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_K* 75)
(intern "*KEY_L*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_L* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_L* 76)
(intern "*KEY_N*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_N* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_N* 78)
(intern "*KEY_O*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_O* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_O* 79)
(intern "*KEY_U*" (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(shadow '*KEY_U* (find-package "RM_MSGS::CLIENTMAPSENDDATA"))
(defconstant rm_msgs::ClientMapSendData::*KEY_U* 85)

(defun rm_msgs::ClientMapSendData-to-symbol (const)
  (cond
        ((= const 65) 'rm_msgs::ClientMapSendData::*KEY_A*)
        ((= const 72) 'rm_msgs::ClientMapSendData::*KEY_H*)
        ((= const 75) 'rm_msgs::ClientMapSendData::*KEY_K*)
        ((= const 76) 'rm_msgs::ClientMapSendData::*KEY_L*)
        ((= const 78) 'rm_msgs::ClientMapSendData::*KEY_N*)
        ((= const 79) 'rm_msgs::ClientMapSendData::*KEY_O*)
        ((= const 85) 'rm_msgs::ClientMapSendData::*KEY_U*)
        (t nil)))

(defclass rm_msgs::ClientMapSendData
  :super ros::object
  :slots (_target_position_x _target_position_y _target_position_z _command_keyboard _target_robot_ID _stamp ))

(defmethod rm_msgs::ClientMapSendData
  (:init
   (&key
    ((:target_position_x __target_position_x) 0.0)
    ((:target_position_y __target_position_y) 0.0)
    ((:target_position_z __target_position_z) 0.0)
    ((:command_keyboard __command_keyboard) 0)
    ((:target_robot_ID __target_robot_ID) 0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _target_position_x (float __target_position_x))
   (setq _target_position_y (float __target_position_y))
   (setq _target_position_z (float __target_position_z))
   (setq _command_keyboard (round __command_keyboard))
   (setq _target_robot_ID (round __target_robot_ID))
   (setq _stamp __stamp)
   self)
  (:target_position_x
   (&optional __target_position_x)
   (if __target_position_x (setq _target_position_x __target_position_x)) _target_position_x)
  (:target_position_y
   (&optional __target_position_y)
   (if __target_position_y (setq _target_position_y __target_position_y)) _target_position_y)
  (:target_position_z
   (&optional __target_position_z)
   (if __target_position_z (setq _target_position_z __target_position_z)) _target_position_z)
  (:command_keyboard
   (&optional __command_keyboard)
   (if __command_keyboard (setq _command_keyboard __command_keyboard)) _command_keyboard)
  (:target_robot_ID
   (&optional __target_robot_ID)
   (if __target_robot_ID (setq _target_robot_ID __target_robot_ID)) _target_robot_ID)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; float32 _target_position_x
    4
    ;; float32 _target_position_y
    4
    ;; float32 _target_position_z
    4
    ;; uint8 _command_keyboard
    1
    ;; uint16 _target_robot_ID
    2
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _target_position_x
       (sys::poke _target_position_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _target_position_y
       (sys::poke _target_position_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _target_position_z
       (sys::poke _target_position_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _command_keyboard
       (write-byte _command_keyboard s)
     ;; uint16 _target_robot_ID
       (write-word _target_robot_ID s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _target_position_x
     (setq _target_position_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_position_y
     (setq _target_position_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_position_z
     (setq _target_position_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _command_keyboard
     (setq _command_keyboard (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _target_robot_ID
     (setq _target_robot_ID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::ClientMapSendData :md5sum-) "5ccfd8a27a3d104fd1e8e4702a1b153a")
(setf (get rm_msgs::ClientMapSendData :datatype-) "rm_msgs/ClientMapSendData")
(setf (get rm_msgs::ClientMapSendData :definition-)
      "uint8 KEY_A = 65
uint8 KEY_H = 72
uint8 KEY_K = 75
uint8 KEY_L = 76
uint8 KEY_N = 78
uint8 KEY_O = 79
uint8 KEY_U = 85

float32 target_position_x
float32 target_position_y
float32 target_position_z
uint8 command_keyboard
uint16 target_robot_ID

time stamp

")



(provide :rm_msgs/ClientMapSendData "5ccfd8a27a3d104fd1e8e4702a1b153a")


