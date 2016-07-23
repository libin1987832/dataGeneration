; Auto-generated. Do not edit!


(cl:in-package shared_files-msg)


;//! \htmlinclude RelativeFrame.msg.html

(cl:defclass <RelativeFrame> (roslisp-msg-protocol:ros-message)
  ((PointCloudRelative
    :reader PointCloudRelative
    :initarg :PointCloudRelative
    :type (cl:vector shared_files-msg:RelativePoint)
   :initform (cl:make-array 0 :element-type 'shared_files-msg:RelativePoint :initial-element (cl:make-instance 'shared_files-msg:RelativePoint)))
   (FrameNumber
    :reader FrameNumber
    :initarg :FrameNumber
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass RelativeFrame (<RelativeFrame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelativeFrame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelativeFrame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-msg:<RelativeFrame> is deprecated: use shared_files-msg:RelativeFrame instead.")))

(cl:ensure-generic-function 'PointCloudRelative-val :lambda-list '(m))
(cl:defmethod PointCloudRelative-val ((m <RelativeFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:PointCloudRelative-val is deprecated.  Use shared_files-msg:PointCloudRelative instead.")
  (PointCloudRelative m))

(cl:ensure-generic-function 'FrameNumber-val :lambda-list '(m))
(cl:defmethod FrameNumber-val ((m <RelativeFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:FrameNumber-val is deprecated.  Use shared_files-msg:FrameNumber instead.")
  (FrameNumber m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelativeFrame>) ostream)
  "Serializes a message object of type '<RelativeFrame>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'PointCloudRelative))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'PointCloudRelative))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'FrameNumber) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelativeFrame>) istream)
  "Deserializes a message object of type '<RelativeFrame>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'PointCloudRelative) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'PointCloudRelative)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'shared_files-msg:RelativePoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'FrameNumber) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelativeFrame>)))
  "Returns string type for a message object of type '<RelativeFrame>"
  "shared_files/RelativeFrame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelativeFrame)))
  "Returns string type for a message object of type 'RelativeFrame"
  "shared_files/RelativeFrame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelativeFrame>)))
  "Returns md5sum for a message object of type '<RelativeFrame>"
  "aed8a9c8614008d5571c40635b45b623")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelativeFrame)))
  "Returns md5sum for a message object of type 'RelativeFrame"
  "aed8a9c8614008d5571c40635b45b623")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelativeFrame>)))
  "Returns full string definition for message of type '<RelativeFrame>"
  (cl:format cl:nil "shared_files/RelativePoint[] PointCloudRelative~%std_msgs/Int32 FrameNumber~%~%================================================================================~%MSG: shared_files/RelativePoint~%geometry_msgs/Point coord~%std_msgs/Int32 identification~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelativeFrame)))
  "Returns full string definition for message of type 'RelativeFrame"
  (cl:format cl:nil "shared_files/RelativePoint[] PointCloudRelative~%std_msgs/Int32 FrameNumber~%~%================================================================================~%MSG: shared_files/RelativePoint~%geometry_msgs/Point coord~%std_msgs/Int32 identification~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelativeFrame>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'PointCloudRelative) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'FrameNumber))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelativeFrame>))
  "Converts a ROS message object to a list"
  (cl:list 'RelativeFrame
    (cl:cons ':PointCloudRelative (PointCloudRelative msg))
    (cl:cons ':FrameNumber (FrameNumber msg))
))
