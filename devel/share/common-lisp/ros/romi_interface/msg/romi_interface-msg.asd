
(cl:in-package :asdf)

(defsystem "romi_interface-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "follow_pathAction" :depends-on ("_package_follow_pathAction"))
    (:file "_package_follow_pathAction" :depends-on ("_package"))
    (:file "follow_pathActionFeedback" :depends-on ("_package_follow_pathActionFeedback"))
    (:file "_package_follow_pathActionFeedback" :depends-on ("_package"))
    (:file "follow_pathActionGoal" :depends-on ("_package_follow_pathActionGoal"))
    (:file "_package_follow_pathActionGoal" :depends-on ("_package"))
    (:file "follow_pathActionResult" :depends-on ("_package_follow_pathActionResult"))
    (:file "_package_follow_pathActionResult" :depends-on ("_package"))
    (:file "follow_pathFeedback" :depends-on ("_package_follow_pathFeedback"))
    (:file "_package_follow_pathFeedback" :depends-on ("_package"))
    (:file "follow_pathGoal" :depends-on ("_package_follow_pathGoal"))
    (:file "_package_follow_pathGoal" :depends-on ("_package"))
    (:file "follow_pathResult" :depends-on ("_package_follow_pathResult"))
    (:file "_package_follow_pathResult" :depends-on ("_package"))
  ))