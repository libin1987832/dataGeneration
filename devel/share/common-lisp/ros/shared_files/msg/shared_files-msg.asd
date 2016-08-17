
(cl:in-package :asdf)

(defsystem "shared_files-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RelativePoint" :depends-on ("_package_RelativePoint"))
    (:file "_package_RelativePoint" :depends-on ("_package"))
    (:file "RelativeFrame" :depends-on ("_package_RelativeFrame"))
    (:file "_package_RelativeFrame" :depends-on ("_package"))
  ))