
(cl:in-package :asdf)

(defsystem "motion_estimation-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :shared_files-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "configMotionEstimationGoal" :depends-on ("_package_configMotionEstimationGoal"))
    (:file "_package_configMotionEstimationGoal" :depends-on ("_package"))
    (:file "configMotionEstimationAction" :depends-on ("_package_configMotionEstimationAction"))
    (:file "_package_configMotionEstimationAction" :depends-on ("_package"))
    (:file "configMotionEstimationActionGoal" :depends-on ("_package_configMotionEstimationActionGoal"))
    (:file "_package_configMotionEstimationActionGoal" :depends-on ("_package"))
    (:file "configMotionEstimationFeedback" :depends-on ("_package_configMotionEstimationFeedback"))
    (:file "_package_configMotionEstimationFeedback" :depends-on ("_package"))
    (:file "configMotionEstimationActionFeedback" :depends-on ("_package_configMotionEstimationActionFeedback"))
    (:file "_package_configMotionEstimationActionFeedback" :depends-on ("_package"))
    (:file "configMotionEstimationResult" :depends-on ("_package_configMotionEstimationResult"))
    (:file "_package_configMotionEstimationResult" :depends-on ("_package"))
    (:file "configMotionEstimationActionResult" :depends-on ("_package_configMotionEstimationActionResult"))
    (:file "_package_configMotionEstimationActionResult" :depends-on ("_package"))
  ))