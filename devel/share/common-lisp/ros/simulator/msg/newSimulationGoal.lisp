; Auto-generated. Do not edit!


(cl:in-package simulator-msg)


;//! \htmlinclude newSimulationGoal.msg.html

(cl:defclass <newSimulationGoal> (roslisp-msg-protocol:ros-message)
  ((f
    :reader f
    :initarg :f
    :type std_msgs-msg:Empty
    :initform (cl:make-instance 'std_msgs-msg:Empty)))
)

(cl:defclass newSimulationGoal (<newSimulationGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <newSimulationGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'newSimulationGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-msg:<newSimulationGoal> is deprecated: use simulator-msg:newSimulationGoal instead.")))

(cl:ensure-generic-function 'f-val :lambda-list '(m))
(cl:defmethod f-val ((m <newSimulationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:f-val is deprecated.  Use simulator-msg:f instead.")
  (f m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <newSimulationGoal>) ostream)
  "Serializes a message object of type '<newSimulationGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'f) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <newSimulationGoal>) istream)
  "Deserializes a message object of type '<newSimulationGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'f) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<newSimulationGoal>)))
  "Returns string type for a message object of type '<newSimulationGoal>"
  "simulator/newSimulationGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'newSimulationGoal)))
  "Returns string type for a message object of type 'newSimulationGoal"
  "simulator/newSimulationGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<newSimulationGoal>)))
  "Returns md5sum for a message object of type '<newSimulationGoal>"
  "642b38fc4dd0ec355df479902644b5b6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'newSimulationGoal)))
  "Returns md5sum for a message object of type 'newSimulationGoal"
  "642b38fc4dd0ec355df479902644b5b6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<newSimulationGoal>)))
  "Returns full string definition for message of type '<newSimulationGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%std_msgs/Empty f~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'newSimulationGoal)))
  "Returns full string definition for message of type 'newSimulationGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#goal definition~%std_msgs/Empty f~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <newSimulationGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'f))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <newSimulationGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'newSimulationGoal
    (cl:cons ':f (f msg))
))