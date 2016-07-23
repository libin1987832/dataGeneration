
(cl:in-package :asdf)

(defsystem "blackbox_matcher-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :geometry_msgs-msg
               :shared_files-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "configCameraActionResult" :depends-on ("_package_configCameraActionResult"))
    (:file "_package_configCameraActionResult" :depends-on ("_package"))
    (:file "configCameraActionGoal" :depends-on ("_package_configCameraActionGoal"))
    (:file "_package_configCameraActionGoal" :depends-on ("_package"))
    (:file "configCameraActionFeedback" :depends-on ("_package_configCameraActionFeedback"))
    (:file "_package_configCameraActionFeedback" :depends-on ("_package"))
    (:file "configCameraFeedback" :depends-on ("_package_configCameraFeedback"))
    (:file "_package_configCameraFeedback" :depends-on ("_package"))
    (:file "configCameraGoal" :depends-on ("_package_configCameraGoal"))
    (:file "_package_configCameraGoal" :depends-on ("_package"))
    (:file "configCameraAction" :depends-on ("_package_configCameraAction"))
    (:file "_package_configCameraAction" :depends-on ("_package"))
    (:file "configCameraResult" :depends-on ("_package_configCameraResult"))
    (:file "_package_configCameraResult" :depends-on ("_package"))
  ))