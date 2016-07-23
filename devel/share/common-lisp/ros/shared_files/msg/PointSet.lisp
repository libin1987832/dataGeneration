; Auto-generated. Do not edit!


(cl:in-package shared_files-msg)


;//! \htmlinclude PointSet.msg.html

(cl:defclass <PointSet> (roslisp-msg-protocol:ros-message)
  ((RectifiedPoint
    :reader RectifiedPoint
    :initarg :RectifiedPoint
    :type shared_files-msg:PointEstimate
    :initform (cl:make-instance 'shared_files-msg:PointEstimate))
   (NoisyPoint
    :reader NoisyPoint
    :initarg :NoisyPoint
    :type shared_files-msg:PointEstimate
    :initform (cl:make-instance 'shared_files-msg:PointEstimate))
   (PointID
    :reader PointID
    :initarg :PointID
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass PointSet (<PointSet>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointSet>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointSet)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-msg:<PointSet> is deprecated: use shared_files-msg:PointSet instead.")))

(cl:ensure-generic-function 'RectifiedPoint-val :lambda-list '(m))
(cl:defmethod RectifiedPoint-val ((m <PointSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:RectifiedPoint-val is deprecated.  Use shared_files-msg:RectifiedPoint instead.")
  (RectifiedPoint m))

(cl:ensure-generic-function 'NoisyPoint-val :lambda-list '(m))
(cl:defmethod NoisyPoint-val ((m <PointSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:NoisyPoint-val is deprecated.  Use shared_files-msg:NoisyPoint instead.")
  (NoisyPoint m))

(cl:ensure-generic-function 'PointID-val :lambda-list '(m))
(cl:defmethod PointID-val ((m <PointSet>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:PointID-val is deprecated.  Use shared_files-msg:PointID instead.")
  (PointID m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointSet>) ostream)
  "Serializes a message object of type '<PointSet>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'RectifiedPoint) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'NoisyPoint) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'PointID) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointSet>) istream)
  "Deserializes a message object of type '<PointSet>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'RectifiedPoint) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'NoisyPoint) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'PointID) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointSet>)))
  "Returns string type for a message object of type '<PointSet>"
  "shared_files/PointSet")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointSet)))
  "Returns string type for a message object of type 'PointSet"
  "shared_files/PointSet")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointSet>)))
  "Returns md5sum for a message object of type '<PointSet>"
  "aa23bf05643854c46bff8fb19ae1450c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointSet)))
  "Returns md5sum for a message object of type 'PointSet"
  "aa23bf05643854c46bff8fb19ae1450c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointSet>)))
  "Returns full string definition for message of type '<PointSet>"
  (cl:format cl:nil "shared_files/PointEstimate RectifiedPoint~%shared_files/PointEstimate NoisyPoint~%std_msgs/Int32 PointID~%~%================================================================================~%MSG: shared_files/PointEstimate~%geometry_msgs/Point32 Estimate~%std_msgs/Float32[] CovRowOne~%std_msgs/Float32[] CovRowTwo~%std_msgs/Float32[] CovRowThree~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointSet)))
  "Returns full string definition for message of type 'PointSet"
  (cl:format cl:nil "shared_files/PointEstimate RectifiedPoint~%shared_files/PointEstimate NoisyPoint~%std_msgs/Int32 PointID~%~%================================================================================~%MSG: shared_files/PointEstimate~%geometry_msgs/Point32 Estimate~%std_msgs/Float32[] CovRowOne~%std_msgs/Float32[] CovRowTwo~%std_msgs/Float32[] CovRowThree~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointSet>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'RectifiedPoint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'NoisyPoint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'PointID))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointSet>))
  "Converts a ROS message object to a list"
  (cl:list 'PointSet
    (cl:cons ':RectifiedPoint (RectifiedPoint msg))
    (cl:cons ':NoisyPoint (NoisyPoint msg))
    (cl:cons ':PointID (PointID msg))
))
