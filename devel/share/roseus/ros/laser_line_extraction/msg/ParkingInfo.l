;; Auto-generated. Do not edit!


(when (boundp 'laser_line_extraction::ParkingInfo)
  (if (not (find-package "LASER_LINE_EXTRACTION"))
    (make-package "LASER_LINE_EXTRACTION"))
  (shadow 'ParkingInfo (find-package "LASER_LINE_EXTRACTION")))
(unless (find-package "LASER_LINE_EXTRACTION::PARKINGINFO")
  (make-package "LASER_LINE_EXTRACTION::PARKINGINFO"))

(in-package "ROS")
;;//! \htmlinclude ParkingInfo.msg.html


(defclass laser_line_extraction::ParkingInfo
  :super ros::object
  :slots (_isParking _width _depth _top_y _bottom_y _out_x _in_x ))

(defmethod laser_line_extraction::ParkingInfo
  (:init
   (&key
    ((:isParking __isParking) nil)
    ((:width __width) 0.0)
    ((:depth __depth) 0.0)
    ((:top_y __top_y) 0.0)
    ((:bottom_y __bottom_y) 0.0)
    ((:out_x __out_x) 0.0)
    ((:in_x __in_x) 0.0)
    )
   (send-super :init)
   (setq _isParking __isParking)
   (setq _width (float __width))
   (setq _depth (float __depth))
   (setq _top_y (float __top_y))
   (setq _bottom_y (float __bottom_y))
   (setq _out_x (float __out_x))
   (setq _in_x (float __in_x))
   self)
  (:isParking
   (&optional (__isParking :null))
   (if (not (eq __isParking :null)) (setq _isParking __isParking)) _isParking)
  (:width
   (&optional __width)
   (if __width (setq _width __width)) _width)
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:top_y
   (&optional __top_y)
   (if __top_y (setq _top_y __top_y)) _top_y)
  (:bottom_y
   (&optional __bottom_y)
   (if __bottom_y (setq _bottom_y __bottom_y)) _bottom_y)
  (:out_x
   (&optional __out_x)
   (if __out_x (setq _out_x __out_x)) _out_x)
  (:in_x
   (&optional __in_x)
   (if __in_x (setq _in_x __in_x)) _in_x)
  (:serialization-length
   ()
   (+
    ;; bool _isParking
    1
    ;; float32 _width
    4
    ;; float32 _depth
    4
    ;; float32 _top_y
    4
    ;; float32 _bottom_y
    4
    ;; float32 _out_x
    4
    ;; float32 _in_x
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _isParking
       (if _isParking (write-byte -1 s) (write-byte 0 s))
     ;; float32 _width
       (sys::poke _width (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _depth
       (sys::poke _depth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _top_y
       (sys::poke _top_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _bottom_y
       (sys::poke _bottom_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _out_x
       (sys::poke _out_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _in_x
       (sys::poke _in_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _isParking
     (setq _isParking (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _width
     (setq _width (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _depth
     (setq _depth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _top_y
     (setq _top_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _bottom_y
     (setq _bottom_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _out_x
     (setq _out_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _in_x
     (setq _in_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get laser_line_extraction::ParkingInfo :md5sum-) "d4b96bd09ad1afc3b3dc969864e27d31")
(setf (get laser_line_extraction::ParkingInfo :datatype-) "laser_line_extraction/ParkingInfo")
(setf (get laser_line_extraction::ParkingInfo :definition-)
      "bool isParking

float32 width
float32 depth

float32 top_y
float32 bottom_y
float32 out_x
float32 in_x
")



(provide :laser_line_extraction/ParkingInfo "d4b96bd09ad1afc3b3dc969864e27d31")


