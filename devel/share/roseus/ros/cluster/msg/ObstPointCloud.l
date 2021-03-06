;; Auto-generated. Do not edit!


(when (boundp 'cluster::ObstPointCloud)
  (if (not (find-package "CLUSTER"))
    (make-package "CLUSTER"))
  (shadow 'ObstPointCloud (find-package "CLUSTER")))
(unless (find-package "CLUSTER::OBSTPOINTCLOUD")
  (make-package "CLUSTER::OBSTPOINTCLOUD"))

(in-package "ROS")
;;//! \htmlinclude ObstPointCloud.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cluster::ObstPointCloud
  :super ros::object
  :slots (_header _points ))

(defmethod cluster::ObstPointCloud
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:points __points) (let (r) (dotimes (i 0) (push (instance cluster::PointXYZI :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _points __points)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cluster/PointXYZI[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cluster/PointXYZI[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cluster/PointXYZI[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance cluster::PointXYZI :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cluster::ObstPointCloud :md5sum-) "79c2a2dcd23491ef5cd30ba218c627c6")
(setf (get cluster::ObstPointCloud :datatype-) "cluster/ObstPointCloud")
(setf (get cluster::ObstPointCloud :definition-)
      "Header           header
PointXYZI[]      points
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
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: cluster/PointXYZI
float32 x
float32 y
float32 z
float32 intensity
")



(provide :cluster/ObstPointCloud "79c2a2dcd23491ef5cd30ba218c627c6")


