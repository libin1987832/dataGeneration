; Auto-generated. Do not edit!


(cl:in-package blackbox_matcher-msg)


;//! \htmlinclude configCameraResult.msg.html

(cl:defclass <configCameraResult> (roslisp-msg-protocol:ros-message)
  ((foo
    :reader foo
    :initarg :foo
    :type std_msgs-msg:Empty
    :initform (cl:make-instance 'std_msgs-msg:Empty)))
)

(cl:defclass configCameraResult (<configCameraResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <configCameraResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'configCameraResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name blackbox_matcher-msg:<configCameraResult> is deprecated: use blackbox_matcher-msg:configCameraResult instead.")))

(cl:ensure-generic-function 'foo-val :lambda-list '(m))
(cl:defmethod foo-val ((m <configCameraResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackbox_matcher-msg:foo-val is deprecated.  Use blackbox_matcher-msg:foo instead.")
  (foo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <configCameraResult>) ostream)
  "Serializes a message object of type '<configCameraResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'foo) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <configCameraResult>) istream)
  "Deserializes a message object of type '<configCameraResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'foo) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<configCameraResult>)))
  "Returns string type for a message object of type '<configCameraResult>"
  "blackbox_matcher/configCameraResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'configCameraResult)))
  "Returns string type for a message object of type 'configCameraResult"
  "blackbox_matcher/configCameraResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<configCameraResult>)))
  "Returns md5sum for a message object of type '<configCameraResult>"
  "256e907a74585c86051805b50c5f7dc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'configCameraResult)))
  "Returns md5sum for a message object of type 'configCameraResult"
  "256e907a74585c86051805b50c5f7dc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<configCameraResult>)))
  "Returns full string definition for message of type '<configCameraResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%std_msgs/Empty foo~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'configCameraResult)))
  "Returns full string definition for message of type 'configCameraResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%std_msgs/Empty foo~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <configCameraResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'foo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <configCameraResult>))
  "Converts a ROS message object to a list"
  (cl:list 'configCameraResult
    (cl:cons ':foo (foo msg))
))
