; Auto-generated. Do not edit!


(cl:in-package simulator-msg)


;//! \htmlinclude newSimulationFeedback.msg.html

(cl:defclass <newSimulationFeedback> (roslisp-msg-protocol:ros-message)
  ((fooo
    :reader fooo
    :initarg :fooo
    :type std_msgs-msg:Empty
    :initform (cl:make-instance 'std_msgs-msg:Empty)))
)

(cl:defclass newSimulationFeedback (<newSimulationFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <newSimulationFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'newSimulationFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-msg:<newSimulationFeedback> is deprecated: use simulator-msg:newSimulationFeedback instead.")))

(cl:ensure-generic-function 'fooo-val :lambda-list '(m))
(cl:defmethod fooo-val ((m <newSimulationFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:fooo-val is deprecated.  Use simulator-msg:fooo instead.")
  (fooo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <newSimulationFeedback>) ostream)
  "Serializes a message object of type '<newSimulationFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fooo) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <newSimulationFeedback>) istream)
  "Deserializes a message object of type '<newSimulationFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fooo) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<newSimulationFeedback>)))
  "Returns string type for a message object of type '<newSimulationFeedback>"
  "simulator/newSimulationFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'newSimulationFeedback)))
  "Returns string type for a message object of type 'newSimulationFeedback"
  "simulator/newSimulationFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<newSimulationFeedback>)))
  "Returns md5sum for a message object of type '<newSimulationFeedback>"
  "f978e4ab1cc58f40580cac0e385e6b29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'newSimulationFeedback)))
  "Returns md5sum for a message object of type 'newSimulationFeedback"
  "f978e4ab1cc58f40580cac0e385e6b29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<newSimulationFeedback>)))
  "Returns full string definition for message of type '<newSimulationFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%std_msgs/Empty fooo~%~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'newSimulationFeedback)))
  "Returns full string definition for message of type 'newSimulationFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%std_msgs/Empty fooo~%~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <newSimulationFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fooo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <newSimulationFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'newSimulationFeedback
    (cl:cons ':fooo (fooo msg))
))
