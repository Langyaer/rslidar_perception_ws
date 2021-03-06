; Auto-generated. Do not edit!


(cl:in-package track-msg)


;//! \htmlinclude ObstPointCloud.msg.html

(cl:defclass <ObstPointCloud> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (points
    :reader points
    :initarg :points
    :type (cl:vector track-msg:PointXYZI)
   :initform (cl:make-array 0 :element-type 'track-msg:PointXYZI :initial-element (cl:make-instance 'track-msg:PointXYZI))))
)

(cl:defclass ObstPointCloud (<ObstPointCloud>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObstPointCloud>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObstPointCloud)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name track-msg:<ObstPointCloud> is deprecated: use track-msg:ObstPointCloud instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObstPointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader track-msg:header-val is deprecated.  Use track-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'points-val :lambda-list '(m))
(cl:defmethod points-val ((m <ObstPointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader track-msg:points-val is deprecated.  Use track-msg:points instead.")
  (points m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObstPointCloud>) ostream)
  "Serializes a message object of type '<ObstPointCloud>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'points))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObstPointCloud>) istream)
  "Deserializes a message object of type '<ObstPointCloud>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'track-msg:PointXYZI))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObstPointCloud>)))
  "Returns string type for a message object of type '<ObstPointCloud>"
  "track/ObstPointCloud")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObstPointCloud)))
  "Returns string type for a message object of type 'ObstPointCloud"
  "track/ObstPointCloud")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObstPointCloud>)))
  "Returns md5sum for a message object of type '<ObstPointCloud>"
  "79c2a2dcd23491ef5cd30ba218c627c6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObstPointCloud)))
  "Returns md5sum for a message object of type 'ObstPointCloud"
  "79c2a2dcd23491ef5cd30ba218c627c6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObstPointCloud>)))
  "Returns full string definition for message of type '<ObstPointCloud>"
  (cl:format cl:nil "Header           header~%PointXYZI[]      points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: track/PointXYZI~%float32 x~%float32 y~%float32 z~%float32 intensity~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObstPointCloud)))
  "Returns full string definition for message of type 'ObstPointCloud"
  (cl:format cl:nil "Header           header~%PointXYZI[]      points~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: track/PointXYZI~%float32 x~%float32 y~%float32 z~%float32 intensity~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObstPointCloud>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObstPointCloud>))
  "Converts a ROS message object to a list"
  (cl:list 'ObstPointCloud
    (cl:cons ':header (header msg))
    (cl:cons ':points (points msg))
))
