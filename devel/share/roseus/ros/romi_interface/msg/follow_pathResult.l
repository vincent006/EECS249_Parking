;; Auto-generated. Do not edit!


(when (boundp 'romi_interface::follow_pathResult)
  (if (not (find-package "ROMI_INTERFACE"))
    (make-package "ROMI_INTERFACE"))
  (shadow 'follow_pathResult (find-package "ROMI_INTERFACE")))
(unless (find-package "ROMI_INTERFACE::FOLLOW_PATHRESULT")
  (make-package "ROMI_INTERFACE::FOLLOW_PATHRESULT"))

(in-package "ROS")
;;//! \htmlinclude follow_pathResult.msg.html


(defclass romi_interface::follow_pathResult
  :super ros::object
  :slots (_is_goal ))

(defmethod romi_interface::follow_pathResult
  (:init
   (&key
    ((:is_goal __is_goal) nil)
    )
   (send-super :init)
   (setq _is_goal __is_goal)
   self)
  (:is_goal
   (&optional (__is_goal :null))
   (if (not (eq __is_goal :null)) (setq _is_goal __is_goal)) _is_goal)
  (:serialization-length
   ()
   (+
    ;; bool _is_goal
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _is_goal
       (if _is_goal (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _is_goal
     (setq _is_goal (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get romi_interface::follow_pathResult :md5sum-) "42057c1ec965897941ec1232a3d488c4")
(setf (get romi_interface::follow_pathResult :datatype-) "romi_interface/follow_pathResult")
(setf (get romi_interface::follow_pathResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Define the result
bool is_goal

")



(provide :romi_interface/follow_pathResult "42057c1ec965897941ec1232a3d488c4")


