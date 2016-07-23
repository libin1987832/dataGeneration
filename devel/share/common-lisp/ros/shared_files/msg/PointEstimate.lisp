; Auto-generated. Do not edit!


(cl:in-package shared_files-msg)


;//! \htmlinclude PointEstimate.msg.html

(cl:defclass <PointEstimate> (roslisp-msg-protocol:ros-message)
  ((Estimate
    :reader Estimate
    :initarg :Estimate
    :type geometry_msgs-msg:Point32
    :initform (cl:make-instance 'geometry_msgs-msg:Point32))
   (CovRowOne
    :reader CovRowOne
    :initarg :CovRowOne
    :type (cl:vector std_msgs-msg:Float32)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float32 :initial-element (cl:make-instance 'std_msgs-msg:Float32)))
   (CovRowTwo
    :reader CovRowTwo
    :initarg :CovRowTwo
    :type (cl:vector std_msgs-msg:Float32)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float32 :initial-element (cl:make-instance 'std_msgs-msg:Float32)))
   (CovRowThree
    :reader CovRowThree
    :initarg :CovRowThree
    :type (cl:vector std_msgs-msg:Float32)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float32 :initial-element (cl:make-instance 'std_msgs-msg:Float32))))
)

(cl:defclass PointEstimate (<PointEstimate>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PointEstimate>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PointEstimate)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-msg:<PointEstimate> is deprecated: use shared_files-msg:PointEstimate instead.")))

(cl:ensure-generic-function 'Estimate-val :lambda-list '(m))
(cl:defmethod Estimate-val ((m <PointEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:Estimate-val is deprecated.  Use shared_files-msg:Estimate instead.")
  (Estimate m))

(cl:ensure-generic-function 'CovRowOne-val :lambda-list '(m))
(cl:defmethod CovRowOne-val ((m <PointEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:CovRowOne-val is deprecated.  Use shared_files-msg:CovRowOne instead.")
  (CovRowOne m))

(cl:ensure-generic-function 'CovRowTwo-val :lambda-list '(m))
(cl:defmethod CovRowTwo-val ((m <PointEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:CovRowTwo-val is deprecated.  Use shared_files-msg:CovRowTwo instead.")
  (CovRowTwo m))

(cl:ensure-generic-function 'CovRowThree-val :lambda-list '(m))
(cl:defmethod CovRowThree-val ((m <PointEstimate>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:CovRowThree-val is deprecated.  Use shared_files-msg:CovRowThree instead.")
  (CovRowThree m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PointEstimate>) ostream)
  "Serializes a message object of type '<PointEstimate>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'Estimate) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'CovRowOne))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'CovRowOne))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'CovRowTwo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'CovRowTwo))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'CovRowThree))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'CovRowThree))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PointEstimate>) istream)
  "Deserializes a message object of type '<PointEstimate>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'Estimate) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'CovRowOne) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'CovRowOne)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'CovRowTwo) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'CovRowTwo)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'CovRowThree) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'CovRowThree)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float32))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PointEstimate>)))
  "Returns string type for a message object of type '<PointEstimate>"
  "shared_files/PointEstimate")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PointEstimate)))
  "Returns string type for a message object of type 'PointEstimate"
  "shared_files/PointEstimate")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PointEstimate>)))
  "Returns md5sum for a message object of type '<PointEstimate>"
  "aba53fa7b710b8c049b6e89d615c2cb0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PointEstimate)))
  "Returns md5sum for a message object of type 'PointEstimate"
  "aba53fa7b710b8c049b6e89d615c2cb0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PointEstimate>)))
  "Returns full string definition for message of type '<PointEstimate>"
  (cl:format cl:nil "geometry_msgs/Point32 Estimate~%std_msgs/Float32[] CovRowOne~%std_msgs/Float32[] CovRowTwo~%std_msgs/Float32[] CovRowThree~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PointEstimate)))
  "Returns full string definition for message of type 'PointEstimate"
  (cl:format cl:nil "geometry_msgs/Point32 Estimate~%std_msgs/Float32[] CovRowOne~%std_msgs/Float32[] CovRowTwo~%std_msgs/Float32[] CovRowThree~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PointEstimate>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'Estimate))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'CovRowOne) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'CovRowTwo) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'CovRowThree) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PointEstimate>))
  "Converts a ROS message object to a list"
  (cl:list 'PointEstimate
    (cl:cons ':Estimate (Estimate msg))
    (cl:cons ':CovRowOne (CovRowOne msg))
    (cl:cons ':CovRowTwo (CovRowTwo msg))
    (cl:cons ':CovRowThree (CovRowThree msg))
))
