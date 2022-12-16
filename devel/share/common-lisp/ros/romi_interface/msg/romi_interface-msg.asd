
(cl:in-package :asdf)

(defsystem "romi_interface-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ParkingInfo" :depends-on ("_package_ParkingInfo"))
    (:file "_package_ParkingInfo" :depends-on ("_package"))
  ))