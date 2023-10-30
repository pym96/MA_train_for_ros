;; Auto-generated. Do not edit!


(when (boundp 'rm_msgs::ClientMapReceiveData)
  (if (not (find-package "RM_MSGS"))
    (make-package "RM_MSGS"))
  (shadow 'ClientMapReceiveData (find-package "RM_MSGS")))
(unless (find-package "RM_MSGS::CLIENTMAPRECEIVEDATA")
  (make-package "RM_MSGS::CLIENTMAPRECEIVEDATA"))

(in-package "ROS")
;;//! \htmlinclude ClientMapReceiveData.msg.html


(defclass rm_msgs::ClientMapReceiveData
  :super ros::object
  :slots (_target_robot_ID _target_position_x _target_position_y _stamp ))

(defmethod rm_msgs::ClientMapReceiveData
  (:init
   (&key
    ((:target_robot_ID __target_robot_ID) 0)
    ((:target_position_x __target_position_x) 0.0)
    ((:target_position_y __target_position_y) 0.0)
    ((:stamp __stamp) (instance ros::time :init))
    )
   (send-super :init)
   (setq _target_robot_ID (round __target_robot_ID))
   (setq _target_position_x (float __target_position_x))
   (setq _target_position_y (float __target_position_y))
   (setq _stamp __stamp)
   self)
  (:target_robot_ID
   (&optional __target_robot_ID)
   (if __target_robot_ID (setq _target_robot_ID __target_robot_ID)) _target_robot_ID)
  (:target_position_x
   (&optional __target_position_x)
   (if __target_position_x (setq _target_position_x __target_position_x)) _target_position_x)
  (:target_position_y
   (&optional __target_position_y)
   (if __target_position_y (setq _target_position_y __target_position_y)) _target_position_y)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; uint16 _target_robot_ID
    2
    ;; float32 _target_position_x
    4
    ;; float32 _target_position_y
    4
    ;; time _stamp
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _target_robot_ID
       (write-word _target_robot_ID s)
     ;; float32 _target_position_x
       (sys::poke _target_position_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _target_position_y
       (sys::poke _target_position_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _target_robot_ID
     (setq _target_robot_ID (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; float32 _target_position_x
     (setq _target_position_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _target_position_y
     (setq _target_position_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rm_msgs::ClientMapReceiveData :md5sum-) "c57a5847a34ebf54851115481ec4e6ab")
(setf (get rm_msgs::ClientMapReceiveData :datatype-) "rm_msgs/ClientMapReceiveData")
(setf (get rm_msgs::ClientMapReceiveData :definition-)
      "uint16 target_robot_ID
float32 target_position_x
float32 target_position_y

time stamp

")



(provide :rm_msgs/ClientMapReceiveData "c57a5847a34ebf54851115481ec4e6ab")


