; Auto-generated. Do not edit!


(cl:in-package simulator-msg)


;//! \htmlinclude genDataFeedback.msg.html

(cl:defclass <genDataFeedback> (roslisp-msg-protocol:ros-message)
  ((fooo
    :reader fooo
    :initarg :fooo
    :type std_msgs-msg:Empty
    :initform (cl:make-instance 'std_msgs-msg:Empty)))
)

(cl:defclass genDataFeedback (<genDataFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <genDataFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'genDataFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-msg:<genDataFeedback> is deprecated: use simulator-msg:genDataFeedback instead.")))

(cl:ensure-generic-function 'fooo-val :lambda-list '(m))
(cl:defmethod fooo-val ((m <genDataFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:fooo-val is deprecated.  Use simulator-msg:fooo instead.")
  (fooo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <genDataFeedback>) ostream)
  "Serializes a message object of type '<genDataFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fooo) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <genDataFeedback>) istream)
  "Deserializes a message object of type '<genDataFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fooo) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<genDataFeedback>)))
  "Returns string type for a message object of type '<genDataFeedback>"
  "simulator/genDataFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'genDataFeedback)))
  "Returns string type for a message object of type 'genDataFeedback"
  "simulator/genDataFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<genDataFeedback>)))
  "Returns md5sum for a message object of type '<genDataFeedback>"
  "f978e4ab1cc58f40580cac0e385e6b29")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'genDataFeedback)))
  "Returns md5sum for a message object of type 'genDataFeedback"
  "f978e4ab1cc58f40580cac0e385e6b29")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<genDataFeedback>)))
  "Returns full string definition for message of type '<genDataFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%std_msgs/Empty fooo~%~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'genDataFeedback)))
  "Returns full string definition for message of type 'genDataFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#feedback~%std_msgs/Empty fooo~%~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <genDataFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fooo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <genDataFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'genDataFeedback
    (cl:cons ':fooo (fooo msg))
))
