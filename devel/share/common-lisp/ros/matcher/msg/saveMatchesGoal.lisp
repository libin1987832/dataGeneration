; Auto-generated. Do not edit!


(cl:in-package matcher-msg)


;//! \htmlinclude saveMatchesGoal.msg.html

(cl:defclass <saveMatchesGoal> (roslisp-msg-protocol:ros-message)
  ((saveDirectory
    :reader saveDirectory
    :initarg :saveDirectory
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass saveMatchesGoal (<saveMatchesGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <saveMatchesGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'saveMatchesGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name matcher-msg:<saveMatchesGoal> is deprecated: use matcher-msg:saveMatchesGoal instead.")))

(cl:ensure-generic-function 'saveDirectory-val :lambda-list '(m))
(cl:defmethod saveDirectory-val ((m <saveMatchesGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader matcher-msg:saveDirectory-val is deprecated.  Use matcher-msg:saveDirectory instead.")
  (saveDirectory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <saveMatchesGoal>) ostream)
  "Serializes a message object of type '<saveMatchesGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'saveDirectory) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <saveMatchesGoal>) istream)
  "Deserializes a message object of type '<saveMatchesGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'saveDirectory) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<saveMatchesGoal>)))
  "Returns string type for a message object of type '<saveMatchesGoal>"
  "matcher/saveMatchesGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'saveMatchesGoal)))
  "Returns string type for a message object of type 'saveMatchesGoal"
  "matcher/saveMatchesGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<saveMatchesGoal>)))
  "Returns md5sum for a message object of type '<saveMatchesGoal>"
  "161894c972f21752c4409b8d364c051c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'saveMatchesGoal)))
  "Returns md5sum for a message object of type 'saveMatchesGoal"
  "161894c972f21752c4409b8d364c051c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<saveMatchesGoal>)))
  "Returns full string definition for message of type '<saveMatchesGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%std_msgs/String saveDirectory~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'saveMatchesGoal)))
  "Returns full string definition for message of type 'saveMatchesGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%std_msgs/String saveDirectory~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <saveMatchesGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'saveDirectory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <saveMatchesGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'saveMatchesGoal
    (cl:cons ':saveDirectory (saveDirectory msg))
))
