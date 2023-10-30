;; Auto-generated. Do not edit!


(when (boundp 'node_demo::UserType)
  (if (not (find-package "NODE_DEMO"))
    (make-package "NODE_DEMO"))
  (shadow 'UserType (find-package "NODE_DEMO")))
(unless (find-package "NODE_DEMO::USERTYPE")
  (make-package "NODE_DEMO::USERTYPE"))

(in-package "ROS")
;;//! \htmlinclude UserType.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass node_demo::UserType
  :super ros::object
  :slots (_demo_header _demo_bool _demo_byte _demo_floats ))

(defmethod node_demo::UserType
  (:init
   (&key
    ((:demo_header __demo_header) (instance std_msgs::Header :init))
    ((:demo_bool __demo_bool) nil)
    ((:demo_byte __demo_byte) 0)
    ((:demo_floats __demo_floats) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _demo_header __demo_header)
   (setq _demo_bool __demo_bool)
   (setq _demo_byte (round __demo_byte))
   (setq _demo_floats __demo_floats)
   self)
  (:demo_header
   (&rest __demo_header)
   (if (keywordp (car __demo_header))
       (send* _demo_header __demo_header)
     (progn
       (if __demo_header (setq _demo_header (car __demo_header)))
       _demo_header)))
  (:demo_bool
   (&optional (__demo_bool :null))
   (if (not (eq __demo_bool :null)) (setq _demo_bool __demo_bool)) _demo_bool)
  (:demo_byte
   (&optional __demo_byte)
   (if __demo_byte (setq _demo_byte __demo_byte)) _demo_byte)
  (:demo_floats
   (&optional __demo_floats)
   (if __demo_floats (setq _demo_floats __demo_floats)) _demo_floats)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _demo_header
    (send _demo_header :serialization-length)
    ;; bool _demo_bool
    1
    ;; byte _demo_byte
    1
    ;; float32[] _demo_floats
    (* 4    (length _demo_floats)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _demo_header
       (send _demo_header :serialize s)
     ;; bool _demo_bool
       (if _demo_bool (write-byte -1 s) (write-byte 0 s))
     ;; byte _demo_byte
       (write-byte _demo_byte s)
     ;; float32[] _demo_floats
     (write-long (length _demo_floats) s)
     (dotimes (i (length _demo_floats))
       (sys::poke (elt _demo_floats i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _demo_header
     (send _demo_header :deserialize buf ptr-) (incf ptr- (send _demo_header :serialization-length))
   ;; bool _demo_bool
     (setq _demo_bool (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; byte _demo_byte
     (setq _demo_byte (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _demo_byte 127) (setq _demo_byte (- _demo_byte 256)))
   ;; float32[] _demo_floats
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _demo_floats (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _demo_floats i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get node_demo::UserType :md5sum-) "78526411b17121c33eed9a69a6cc32f7")
(setf (get node_demo::UserType :datatype-) "node_demo/UserType")
(setf (get node_demo::UserType :definition-)
      "Header demo_header
bool demo_bool
byte demo_byte
float32[] demo_floats

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :node_demo/UserType "78526411b17121c33eed9a69a6cc32f7")


