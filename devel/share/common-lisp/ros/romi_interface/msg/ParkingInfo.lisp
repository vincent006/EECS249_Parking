; Auto-generated. Do not edit!


(cl:in-package romi_interface-msg)


;//! \htmlinclude ParkingInfo.msg.html

(cl:defclass <ParkingInfo> (roslisp-msg-protocol:ros-message)
  ((isParking
    :reader isParking
    :initarg :isParking
    :type cl:boolean
    :initform cl:nil)
   (width
    :reader width
    :initarg :width
    :type cl:float
    :initform 0.0)
   (depth
    :reader depth
    :initarg :depth
    :type cl:float
    :initform 0.0)
   (top_y
    :reader top_y
    :initarg :top_y
    :type cl:float
    :initform 0.0)
   (bottom_y
    :reader bottom_y
    :initarg :bottom_y
    :type cl:float
    :initform 0.0)
   (out_x
    :reader out_x
    :initarg :out_x
    :type cl:float
    :initform 0.0)
   (in_x
    :reader in_x
    :initarg :in_x
    :type cl:float
    :initform 0.0))
)

(cl:defclass ParkingInfo (<ParkingInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ParkingInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ParkingInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name romi_interface-msg:<ParkingInfo> is deprecated: use romi_interface-msg:ParkingInfo instead.")))

(cl:ensure-generic-function 'isParking-val :lambda-list '(m))
(cl:defmethod isParking-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader romi_interface-msg:isParking-val is deprecated.  Use romi_interface-msg:isParking instead.")
  (isParking m))

(cl:ensure-generic-function 'width-val :lambda-list '(m))
(cl:defmethod width-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader romi_interface-msg:width-val is deprecated.  Use romi_interface-msg:width instead.")
  (width m))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader romi_interface-msg:depth-val is deprecated.  Use romi_interface-msg:depth instead.")
  (depth m))

(cl:ensure-generic-function 'top_y-val :lambda-list '(m))
(cl:defmethod top_y-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader romi_interface-msg:top_y-val is deprecated.  Use romi_interface-msg:top_y instead.")
  (top_y m))

(cl:ensure-generic-function 'bottom_y-val :lambda-list '(m))
(cl:defmethod bottom_y-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader romi_interface-msg:bottom_y-val is deprecated.  Use romi_interface-msg:bottom_y instead.")
  (bottom_y m))

(cl:ensure-generic-function 'out_x-val :lambda-list '(m))
(cl:defmethod out_x-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader romi_interface-msg:out_x-val is deprecated.  Use romi_interface-msg:out_x instead.")
  (out_x m))

(cl:ensure-generic-function 'in_x-val :lambda-list '(m))
(cl:defmethod in_x-val ((m <ParkingInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader romi_interface-msg:in_x-val is deprecated.  Use romi_interface-msg:in_x instead.")
  (in_x m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ParkingInfo>) ostream)
  "Serializes a message object of type '<ParkingInfo>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'isParking) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'width))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'top_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'bottom_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'out_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'in_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ParkingInfo>) istream)
  "Deserializes a message object of type '<ParkingInfo>"
    (cl:setf (cl:slot-value msg 'isParking) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'width) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'depth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'top_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'bottom_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'out_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'in_x) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ParkingInfo>)))
  "Returns string type for a message object of type '<ParkingInfo>"
  "romi_interface/ParkingInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ParkingInfo)))
  "Returns string type for a message object of type 'ParkingInfo"
  "romi_interface/ParkingInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ParkingInfo>)))
  "Returns md5sum for a message object of type '<ParkingInfo>"
  "d4b96bd09ad1afc3b3dc969864e27d31")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ParkingInfo)))
  "Returns md5sum for a message object of type 'ParkingInfo"
  "d4b96bd09ad1afc3b3dc969864e27d31")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ParkingInfo>)))
  "Returns full string definition for message of type '<ParkingInfo>"
  (cl:format cl:nil "bool isParking~%~%float32 width~%float32 depth~%~%float32 top_y~%float32 bottom_y~%float32 out_x~%float32 in_x~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ParkingInfo)))
  "Returns full string definition for message of type 'ParkingInfo"
  (cl:format cl:nil "bool isParking~%~%float32 width~%float32 depth~%~%float32 top_y~%float32 bottom_y~%float32 out_x~%float32 in_x~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ParkingInfo>))
  (cl:+ 0
     1
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ParkingInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'ParkingInfo
    (cl:cons ':isParking (isParking msg))
    (cl:cons ':width (width msg))
    (cl:cons ':depth (depth msg))
    (cl:cons ':top_y (top_y msg))
    (cl:cons ':bottom_y (bottom_y msg))
    (cl:cons ':out_x (out_x msg))
    (cl:cons ':in_x (in_x msg))
))
