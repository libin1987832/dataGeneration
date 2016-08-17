
(cl:in-package :asdf)

(defsystem "matcher-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :actionlib_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "saveMatchesFeedback" :depends-on ("_package_saveMatchesFeedback"))
    (:file "_package_saveMatchesFeedback" :depends-on ("_package"))
    (:file "saveMatchesResult" :depends-on ("_package_saveMatchesResult"))
    (:file "_package_saveMatchesResult" :depends-on ("_package"))
    (:file "configMatchActionResult" :depends-on ("_package_configMatchActionResult"))
    (:file "_package_configMatchActionResult" :depends-on ("_package"))
    (:file "configMatchAction" :depends-on ("_package_configMatchAction"))
    (:file "_package_configMatchAction" :depends-on ("_package"))
    (:file "configMatchResult" :depends-on ("_package_configMatchResult"))
    (:file "_package_configMatchResult" :depends-on ("_package"))
    (:file "configMatchActionFeedback" :depends-on ("_package_configMatchActionFeedback"))
    (:file "_package_configMatchActionFeedback" :depends-on ("_package"))
    (:file "configMatchActionGoal" :depends-on ("_package_configMatchActionGoal"))
    (:file "_package_configMatchActionGoal" :depends-on ("_package"))
    (:file "saveMatchesActionResult" :depends-on ("_package_saveMatchesActionResult"))
    (:file "_package_saveMatchesActionResult" :depends-on ("_package"))
    (:file "saveMatchesActionGoal" :depends-on ("_package_saveMatchesActionGoal"))
    (:file "_package_saveMatchesActionGoal" :depends-on ("_package"))
    (:file "saveMatchesActionFeedback" :depends-on ("_package_saveMatchesActionFeedback"))
    (:file "_package_saveMatchesActionFeedback" :depends-on ("_package"))
    (:file "configMatchFeedback" :depends-on ("_package_configMatchFeedback"))
    (:file "_package_configMatchFeedback" :depends-on ("_package"))
    (:file "saveMatchesGoal" :depends-on ("_package_saveMatchesGoal"))
    (:file "_package_saveMatchesGoal" :depends-on ("_package"))
    (:file "saveMatchesAction" :depends-on ("_package_saveMatchesAction"))
    (:file "_package_saveMatchesAction" :depends-on ("_package"))
    (:file "configMatchGoal" :depends-on ("_package_configMatchGoal"))
    (:file "_package_configMatchGoal" :depends-on ("_package"))
  ))