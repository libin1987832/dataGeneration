; Auto-generated. Do not edit!


(cl:in-package matcher-msg)


;//! \htmlinclude configMatchFeedback.msg.html

(cl:defclass <configMatchFeedback> (roslisp-msg-protocol:ros-message)
  ((fooo
    :reader fooo
    :initarg :fooo
    :type std_msgs-msg:Empty
    :initform (cl:make-instance 'std_msgs-msg:Empty)))
)

(cl:defclass configMatchFeedback (<configMatchFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <configMatchFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'configMatchFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name matcher-msg:<configMatchFeedback> is deprecated: use matcher-msg:configMatchFeedback instead.")))

(cl:ensure-generic-function 'fooo-val :lambda-list '(m))
(cl:defmethod fooo-val ((m <configMatchFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matcher-msg:fooo-val is deprecated.  Use matcher-msg:fooo instead.")
  (fooo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <configMatchFeedback>) ostream)
  "Serializes a message object of type '<configMatchFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fooo) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <configMatchFeedback>) istream)
  "Deserializes a message object of type '<configMatchFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fooo) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<configMatchFeedback>)))
  "Returns string type for a message object of type '<configMatchFeedback>"
  "matcher/configMatchFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'configMatchFeedback)))
  "Returns string type for a message object of type 'configMatchFeedback"
  "matcher/configMatchFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<configMatchFeedback>)))
  "Returns md5sum for a message object of type '<configMatchFeedback>"
  "f978e4ab1cc58f40580cac0e385e6b29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'configMatchFeedback)))
  "Returns md5sum for a message object of type 'configMatchFeedback"
  "f978e4ab1cc58f40580cac0e385e6b29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<configMatchFeedback>)))
  "Returns full string definition for message of type '<configMatchFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%std_msgs/Empty fooo~%~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'configMatchFeedback)))
  "Returns full string definition for message of type 'configMatchFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%std_msgs/Empty fooo~%~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <configMatchFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fooo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <configMatchFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'configMatchFeedback
    (cl:cons ':fooo (fooo msg))
))
