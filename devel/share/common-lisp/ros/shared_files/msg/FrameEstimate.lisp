; Auto-generated. Do not edit!


(cl:in-package shared_files-msg)


;//! \htmlinclude FrameEstimate.msg.html

(cl:defclass <FrameEstimate> (roslisp-msg-protocol:ros-message)
  ((Points
    :reader Points
    :initarg :Points
    :type (cl:vector shared_files-msg:PointSet)
   :initform (cl:make-array 0 :element-type 'shared_files-msg:PointSet :initial-element (cl:make-instance 'shared_files-msg:PointSet)))
   (FrameNum
    :reader FrameNum
    :initarg :FrameNum
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass FrameEstimate (<FrameEstimate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FrameEstimate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FrameEstimate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-msg:<FrameEstimate> is deprecated: use shared_files-msg:FrameEstimate instead.")))

(cl:ensure-generic-function 'Points-val :lambda-list '(m))
(cl:defmethod Points-val ((m <FrameEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:Points-val is deprecated.  Use shared_files-msg:Points instead.")
  (Points m))

(cl:ensure-generic-function 'FrameNum-val :lambda-list '(m))
(cl:defmethod FrameNum-val ((m <FrameEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:FrameNum-val is deprecated.  Use shared_files-msg:FrameNum instead.")
  (FrameNum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FrameEstimate>) ostream)
  "Serializes a message object of type '<FrameEstimate>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Points))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'FrameNum) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FrameEstimate>) istream)
  "Deserializes a message object of type '<FrameEstimate>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'shared_files-msg:PointSet))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'FrameNum) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FrameEstimate>)))
  "Returns string type for a message object of type '<FrameEstimate>"
  "shared_files/FrameEstimate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FrameEstimate)))
  "Returns string type for a message object of type 'FrameEstimate"
  "shared_files/FrameEstimate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FrameEstimate>)))
  "Returns md5sum for a message object of type '<FrameEstimate>"
  "a58822c36a5a09a9ff3af0866ae1f737")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FrameEstimate)))
  "Returns md5sum for a message object of type 'FrameEstimate"
  "a58822c36a5a09a9ff3af0866ae1f737")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FrameEstimate>)))
  "Returns full string definition for message of type '<FrameEstimate>"
  (cl:format cl:nil "shared_files/PointSet[] Points~%std_msgs/Int32 FrameNum~%~%================================================================================~%MSG: shared_files/PointSet~%shared_files/PointEstimate RectifiedPoint~%shared_files/PointEstimate NoisyPoint~%std_msgs/Int32 PointID~%~%================================================================================~%MSG: shared_files/PointEstimate~%geometry_msgs/Point32 Estimate~%std_msgs/Float32[] CovRowOne~%std_msgs/Float32[] CovRowTwo~%std_msgs/Float32[] CovRowThree~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FrameEstimate)))
  "Returns full string definition for message of type 'FrameEstimate"
  (cl:format cl:nil "shared_files/PointSet[] Points~%std_msgs/Int32 FrameNum~%~%================================================================================~%MSG: shared_files/PointSet~%shared_files/PointEstimate RectifiedPoint~%shared_files/PointEstimate NoisyPoint~%std_msgs/Int32 PointID~%~%================================================================================~%MSG: shared_files/PointEstimate~%geometry_msgs/Point32 Estimate~%std_msgs/Float32[] CovRowOne~%std_msgs/Float32[] CovRowTwo~%std_msgs/Float32[] CovRowThree~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FrameEstimate>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'FrameNum))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FrameEstimate>))
  "Converts a ROS message object to a list"
  (cl:list 'FrameEstimate
    (cl:cons ':Points (Points msg))
    (cl:cons ':FrameNum (FrameNum msg))
))
