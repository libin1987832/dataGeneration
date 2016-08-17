
(cl:in-package :asdf)

(defsystem "simulator-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "genDataGoal" :depends-on ("_package_genDataGoal"))
    (:file "_package_genDataGoal" :depends-on ("_package"))
    (:file "genDataFeedback" :depends-on ("_package_genDataFeedback"))
    (:file "_package_genDataFeedback" :depends-on ("_package"))
    (:file "genDataActionFeedback" :depends-on ("_package_genDataActionFeedback"))
    (:file "_package_genDataActionFeedback" :depends-on ("_package"))
    (:file "genDataResult" :depends-on ("_package_genDataResult"))
    (:file "_package_genDataResult" :depends-on ("_package"))
    (:file "genDataActionResult" :depends-on ("_package_genDataActionResult"))
    (:file "_package_genDataActionResult" :depends-on ("_package"))
    (:file "genDataActionGoal" :depends-on ("_package_genDataActionGoal"))
    (:file "_package_genDataActionGoal" :depends-on ("_package"))
    (:file "genDataAction" :depends-on ("_package_genDataAction"))
    (:file "_package_genDataAction" :depends-on ("_package"))
  ))