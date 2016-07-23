; Auto-generated. Do not edit!


(cl:in-package shared_files-msg)


;//! \htmlinclude TransformNames.msg.html

(cl:defclass <TransformNames> (roslisp-msg-protocol:ros-message)
  ((ID
    :reader ID
    :initarg :ID
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (world_frame
    :reader world_frame
    :initarg :world_frame
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (cm
    :reader cm
    :initarg :cm
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (left
    :reader left
    :initarg :left
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (right
    :reader right
    :initarg :right
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (left_cv
    :reader left_cv
    :initarg :left_cv
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (right_cv
    :reader right_cv
    :initarg :right_cv
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass TransformNames (<TransformNames>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TransformNames>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TransformNames)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-msg:<TransformNames> is deprecated: use shared_files-msg:TransformNames instead.")))

(cl:ensure-generic-function 'ID-val :lambda-list '(m))
(cl:defmethod ID-val ((m <TransformNames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:ID-val is deprecated.  Use shared_files-msg:ID instead.")
  (ID m))

(cl:ensure-generic-function 'world_frame-val :lambda-list '(m))
(cl:defmethod world_frame-val ((m <TransformNames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:world_frame-val is deprecated.  Use shared_files-msg:world_frame instead.")
  (world_frame m))

(cl:ensure-generic-function 'cm-val :lambda-list '(m))
(cl:defmethod cm-val ((m <TransformNames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:cm-val is deprecated.  Use shared_files-msg:cm instead.")
  (cm m))

(cl:ensure-generic-function 'left-val :lambda-list '(m))
(cl:defmethod left-val ((m <TransformNames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:left-val is deprecated.  Use shared_files-msg:left instead.")
  (left m))

(cl:ensure-generic-function 'right-val :lambda-list '(m))
(cl:defmethod right-val ((m <TransformNames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:right-val is deprecated.  Use shared_files-msg:right instead.")
  (right m))

(cl:ensure-generic-function 'left_cv-val :lambda-list '(m))
(cl:defmethod left_cv-val ((m <TransformNames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:left_cv-val is deprecated.  Use shared_files-msg:left_cv instead.")
  (left_cv m))

(cl:ensure-generic-function 'right_cv-val :lambda-list '(m))
(cl:defmethod right_cv-val ((m <TransformNames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:right_cv-val is deprecated.  Use shared_files-msg:right_cv instead.")
  (right_cv m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TransformNames>) ostream)
  "Serializes a message object of type '<TransformNames>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ID) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'world_frame) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cm) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_cv) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_cv) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TransformNames>) istream)
  "Deserializes a message object of type '<TransformNames>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ID) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'world_frame) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cm) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_cv) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_cv) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TransformNames>)))
  "Returns string type for a message object of type '<TransformNames>"
  "shared_files/TransformNames")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TransformNames)))
  "Returns string type for a message object of type 'TransformNames"
  "shared_files/TransformNames")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TransformNames>)))
  "Returns md5sum for a message object of type '<TransformNames>"
  "4e3bafaf758bd3b787741c857a93de9c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TransformNames)))
  "Returns md5sum for a message object of type 'TransformNames"
  "4e3bafaf758bd3b787741c857a93de9c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TransformNames>)))
  "Returns full string definition for message of type '<TransformNames>"
  (cl:format cl:nil "std_msgs/String ID~%std_msgs/String world_frame~%std_msgs/String cm~%std_msgs/String left~%std_msgs/String right~%std_msgs/String left_cv~%std_msgs/String right_cv~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TransformNames)))
  "Returns full string definition for message of type 'TransformNames"
  (cl:format cl:nil "std_msgs/String ID~%std_msgs/String world_frame~%std_msgs/String cm~%std_msgs/String left~%std_msgs/String right~%std_msgs/String left_cv~%std_msgs/String right_cv~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TransformNames>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ID))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'world_frame))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cm))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_cv))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_cv))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TransformNames>))
  "Converts a ROS message object to a list"
  (cl:list 'TransformNames
    (cl:cons ':ID (ID msg))
    (cl:cons ':world_frame (world_frame msg))
    (cl:cons ':cm (cm msg))
    (cl:cons ':left (left msg))
    (cl:cons ':right (right msg))
    (cl:cons ':left_cv (left_cv msg))
    (cl:cons ':right_cv (right_cv msg))
))
