; Auto-generated. Do not edit!


(cl:in-package romi_interface-msg)


;//! \htmlinclude follow_pathResult.msg.html

(cl:defclass <follow_pathResult> (roslisp-msg-protocol:ros-message)
  ((is_goal
    :reader is_goal
    :initarg :is_goal
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass follow_pathResult (<follow_pathResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <follow_pathResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'follow_pathResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name romi_interface-msg:<follow_pathResult> is deprecated: use romi_interface-msg:follow_pathResult instead.")))

(cl:ensure-generic-function 'is_goal-val :lambda-list '(m))
(cl:defmethod is_goal-val ((m <follow_pathResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader romi_interface-msg:is_goal-val is deprecated.  Use romi_interface-msg:is_goal instead.")
  (is_goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <follow_pathResult>) ostream)
  "Serializes a message object of type '<follow_pathResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'is_goal) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <follow_pathResult>) istream)
  "Deserializes a message object of type '<follow_pathResult>"
    (cl:setf (cl:slot-value msg 'is_goal) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<follow_pathResult>)))
  "Returns string type for a message object of type '<follow_pathResult>"
  "romi_interface/follow_pathResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'follow_pathResult)))
  "Returns string type for a message object of type 'follow_pathResult"
  "romi_interface/follow_pathResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<follow_pathResult>)))
  "Returns md5sum for a message object of type '<follow_pathResult>"
  "42057c1ec965897941ec1232a3d488c4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'follow_pathResult)))
  "Returns md5sum for a message object of type 'follow_pathResult"
  "42057c1ec965897941ec1232a3d488c4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<follow_pathResult>)))
  "Returns full string definition for message of type '<follow_pathResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%bool is_goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'follow_pathResult)))
  "Returns full string definition for message of type 'follow_pathResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Define the result~%bool is_goal~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <follow_pathResult>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <follow_pathResult>))
  "Converts a ROS message object to a list"
  (cl:list 'follow_pathResult
    (cl:cons ':is_goal (is_goal msg))
))
