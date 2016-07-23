; Auto-generated. Do not edit!


(cl:in-package shared_files-msg)


;//! \htmlinclude MatchingPoints.msg.html

(cl:defclass <MatchingPoints> (roslisp-msg-protocol:ros-message)
  ((Rectified
    :reader Rectified
    :initarg :Rectified
    :type shared_files-msg:PixelMatch
    :initform (cl:make-instance 'shared_files-msg:PixelMatch))
   (Noise
    :reader Noise
    :initarg :Noise
    :type shared_files-msg:PixelMatch
    :initform (cl:make-instance 'shared_files-msg:PixelMatch))
   (NumberID
    :reader NumberID
    :initarg :NumberID
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass MatchingPoints (<MatchingPoints>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MatchingPoints>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MatchingPoints)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-msg:<MatchingPoints> is deprecated: use shared_files-msg:MatchingPoints instead.")))

(cl:ensure-generic-function 'Rectified-val :lambda-list '(m))
(cl:defmethod Rectified-val ((m <MatchingPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:Rectified-val is deprecated.  Use shared_files-msg:Rectified instead.")
  (Rectified m))

(cl:ensure-generic-function 'Noise-val :lambda-list '(m))
(cl:defmethod Noise-val ((m <MatchingPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:Noise-val is deprecated.  Use shared_files-msg:Noise instead.")
  (Noise m))

(cl:ensure-generic-function 'NumberID-val :lambda-list '(m))
(cl:defmethod NumberID-val ((m <MatchingPoints>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:NumberID-val is deprecated.  Use shared_files-msg:NumberID instead.")
  (NumberID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MatchingPoints>) ostream)
  "Serializes a message object of type '<MatchingPoints>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Rectified) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Noise) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'NumberID) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MatchingPoints>) istream)
  "Deserializes a message object of type '<MatchingPoints>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Rectified) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Noise) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'NumberID) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MatchingPoints>)))
  "Returns string type for a message object of type '<MatchingPoints>"
  "shared_files/MatchingPoints")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MatchingPoints)))
  "Returns string type for a message object of type 'MatchingPoints"
  "shared_files/MatchingPoints")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MatchingPoints>)))
  "Returns md5sum for a message object of type '<MatchingPoints>"
  "95d22b9d9588a72cd4ecca334b14e511")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MatchingPoints)))
  "Returns md5sum for a message object of type 'MatchingPoints"
  "95d22b9d9588a72cd4ecca334b14e511")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MatchingPoints>)))
  "Returns full string definition for message of type '<MatchingPoints>"
  (cl:format cl:nil "shared_files/PixelMatch Rectified~%shared_files/PixelMatch Noise~%std_msgs/Int32 NumberID~%~%================================================================================~%MSG: shared_files/PixelMatch~%std_msgs/Float32 u~%std_msgs/Float32 v~%std_msgs/Float32 Disparity~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MatchingPoints)))
  "Returns full string definition for message of type 'MatchingPoints"
  (cl:format cl:nil "shared_files/PixelMatch Rectified~%shared_files/PixelMatch Noise~%std_msgs/Int32 NumberID~%~%================================================================================~%MSG: shared_files/PixelMatch~%std_msgs/Float32 u~%std_msgs/Float32 v~%std_msgs/Float32 Disparity~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MatchingPoints>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Rectified))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Noise))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'NumberID))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MatchingPoints>))
  "Converts a ROS message object to a list"
  (cl:list 'MatchingPoints
    (cl:cons ':Rectified (Rectified msg))
    (cl:cons ':Noise (Noise msg))
    (cl:cons ':NumberID (NumberID msg))
))
