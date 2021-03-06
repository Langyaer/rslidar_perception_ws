;; Auto-generated. Do not edit!


(when (boundp 'track::Center)
  (if (not (find-package "TRACK"))
    (make-package "TRACK"))
  (shadow 'Center (find-package "TRACK")))
(unless (find-package "TRACK::CENTER")
  (make-package "TRACK::CENTER"))

(in-package "ROS")
;;//! \htmlinclude Center.msg.html


(defclass track::Center
  :super ros::object
  :slots (_pos ))

(defmethod track::Center
  (:init
   (&key
    ((:pos __pos) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pos __pos)
   self)
  (:pos
   (&optional __pos)
   (if __pos (setq _pos __pos)) _pos)
  (:serialization-length
   ()
   (+
    ;; float32[3] _pos
    (* 4    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[3] _pos
     (dotimes (i 3)
       (sys::poke (elt _pos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[3] _pos
   (dotimes (i (length _pos))
     (setf (elt _pos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get track::Center :md5sum-) "223306f6c142640d35d04c4629b6586f")
(setf (get track::Center :datatype-) "track/Center")
(setf (get track::Center :definition-)
      "float32[3] pos
")



(provide :track/Center "223306f6c142640d35d04c4629b6586f")


