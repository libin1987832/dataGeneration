; Auto-generated. Do not edit!


(cl:in-package simulator-msg)


;//! \htmlinclude genDataResult.msg.html

(cl:defclass <genDataResult> (roslisp-msg-protocol:ros-message)
  ((foo
    :reader foo
    :initarg :foo
    :type std_msgs-msg:Empty
    :initform (cl:make-instance 'std_msgs-msg:Empty)))
)

(cl:defclass genDataResult (<genDataResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <genDataResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'genDataResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-msg:<genDataResult> is deprecated: use simulator-msg:genDataResult instead.")))

(cl:ensure-generic-function 'foo-val :lambda-list '(m))
(cl:defmethod foo-val ((m <genDataResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:foo-val is deprecated.  Use simulator-msg:foo instead.")
  (foo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <genDataResult>) ostream)
  "Serializes a message object of type '<genDataResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'foo) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <genDataResult>) istream)
  "Deserializes a message object of type '<genDataResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'foo) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<genDataResult>)))
  "Returns string type for a message object of type '<genDataResult>"
  "simulator/genDataResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'genDataResult)))
  "Returns string type for a message object of type 'genDataResult"
  "simulator/genDataResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<genDataResult>)))
  "Returns md5sum for a message object of type '<genDataResult>"
  "256e907a74585c86051805b50c5f7dc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'genDataResult)))
  "Returns md5sum for a message object of type 'genDataResult"
  "256e907a74585c86051805b50c5f7dc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<genDataResult>)))
  "Returns full string definition for message of type '<genDataResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%std_msgs/Empty foo~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'genDataResult)))
  "Returns full string definition for message of type 'genDataResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result definition~%std_msgs/Empty foo~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <genDataResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'foo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <genDataResult>))
  "Converts a ROS message object to a list"
  (cl:list 'genDataResult
    (cl:cons ':foo (foo msg))
))
