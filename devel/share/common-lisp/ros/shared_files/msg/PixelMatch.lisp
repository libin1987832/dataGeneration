; Auto-generated. Do not edit!


(cl:in-package shared_files-msg)


;//! \htmlinclude PixelMatch.msg.html

(cl:defclass <PixelMatch> (roslisp-msg-protocol:ros-message)
  ((u
    :reader u
    :initarg :u
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (v
    :reader v
    :initarg :v
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (Disparity
    :reader Disparity
    :initarg :Disparity
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32)))
)

(cl:defclass PixelMatch (<PixelMatch>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PixelMatch>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PixelMatch)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-msg:<PixelMatch> is deprecated: use shared_files-msg:PixelMatch instead.")))

(cl:ensure-generic-function 'u-val :lambda-list '(m))
(cl:defmethod u-val ((m <PixelMatch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:u-val is deprecated.  Use shared_files-msg:u instead.")
  (u m))

(cl:ensure-generic-function 'v-val :lambda-list '(m))
(cl:defmethod v-val ((m <PixelMatch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:v-val is deprecated.  Use shared_files-msg:v instead.")
  (v m))

(cl:ensure-generic-function 'Disparity-val :lambda-list '(m))
(cl:defmethod Disparity-val ((m <PixelMatch>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:Disparity-val is deprecated.  Use shared_files-msg:Disparity instead.")
  (Disparity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PixelMatch>) ostream)
  "Serializes a message object of type '<PixelMatch>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'u) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'v) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Disparity) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PixelMatch>) istream)
  "Deserializes a message object of type '<PixelMatch>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'u) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'v) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Disparity) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PixelMatch>)))
  "Returns string type for a message object of type '<PixelMatch>"
  "shared_files/PixelMatch")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PixelMatch)))
  "Returns string type for a message object of type 'PixelMatch"
  "shared_files/PixelMatch")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PixelMatch>)))
  "Returns md5sum for a message object of type '<PixelMatch>"
  "cc4630c4c968b99ca3b0661c0dcd1ff2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PixelMatch)))
  "Returns md5sum for a message object of type 'PixelMatch"
  "cc4630c4c968b99ca3b0661c0dcd1ff2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PixelMatch>)))
  "Returns full string definition for message of type '<PixelMatch>"
  (cl:format cl:nil "std_msgs/Float32 u~%std_msgs/Float32 v~%std_msgs/Float32 Disparity~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PixelMatch)))
  "Returns full string definition for message of type 'PixelMatch"
  (cl:format cl:nil "std_msgs/Float32 u~%std_msgs/Float32 v~%std_msgs/Float32 Disparity~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PixelMatch>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'u))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'v))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Disparity))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PixelMatch>))
  "Converts a ROS message object to a list"
  (cl:list 'PixelMatch
    (cl:cons ':u (u msg))
    (cl:cons ':v (v msg))
    (cl:cons ':Disparity (Disparity msg))
))
