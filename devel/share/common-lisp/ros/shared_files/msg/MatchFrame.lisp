; Auto-generated. Do not edit!


(cl:in-package shared_files-msg)


;//! \htmlinclude MatchFrame.msg.html

(cl:defclass <MatchFrame> (roslisp-msg-protocol:ros-message)
  ((Frame
    :reader Frame
    :initarg :Frame
    :type (cl:vector shared_files-msg:MatchingPoints)
   :initform (cl:make-array 0 :element-type 'shared_files-msg:MatchingPoints :initial-element (cl:make-instance 'shared_files-msg:MatchingPoints)))
   (frame_id
    :reader frame_id
    :initarg :frame_id
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass MatchFrame (<MatchFrame>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MatchFrame>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MatchFrame)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-msg:<MatchFrame> is deprecated: use shared_files-msg:MatchFrame instead.")))

(cl:ensure-generic-function 'Frame-val :lambda-list '(m))
(cl:defmethod Frame-val ((m <MatchFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:Frame-val is deprecated.  Use shared_files-msg:Frame instead.")
  (Frame m))

(cl:ensure-generic-function 'frame_id-val :lambda-list '(m))
(cl:defmethod frame_id-val ((m <MatchFrame>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:frame_id-val is deprecated.  Use shared_files-msg:frame_id instead.")
  (frame_id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MatchFrame>) ostream)
  "Serializes a message object of type '<MatchFrame>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Frame))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'frame_id) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MatchFrame>) istream)
  "Deserializes a message object of type '<MatchFrame>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Frame) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Frame)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'shared_files-msg:MatchingPoints))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'frame_id) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MatchFrame>)))
  "Returns string type for a message object of type '<MatchFrame>"
  "shared_files/MatchFrame")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MatchFrame)))
  "Returns string type for a message object of type 'MatchFrame"
  "shared_files/MatchFrame")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MatchFrame>)))
  "Returns md5sum for a message object of type '<MatchFrame>"
  "a8eda00529b8ce2ece82093576c44798")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MatchFrame)))
  "Returns md5sum for a message object of type 'MatchFrame"
  "a8eda00529b8ce2ece82093576c44798")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MatchFrame>)))
  "Returns full string definition for message of type '<MatchFrame>"
  (cl:format cl:nil "shared_files/MatchingPoints[] Frame~%std_msgs/Int32 frame_id~%~%================================================================================~%MSG: shared_files/MatchingPoints~%shared_files/PixelMatch Rectified~%shared_files/PixelMatch Noise~%std_msgs/Int32 NumberID~%~%================================================================================~%MSG: shared_files/PixelMatch~%std_msgs/Float32 u~%std_msgs/Float32 v~%std_msgs/Float32 Disparity~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MatchFrame)))
  "Returns full string definition for message of type 'MatchFrame"
  (cl:format cl:nil "shared_files/MatchingPoints[] Frame~%std_msgs/Int32 frame_id~%~%================================================================================~%MSG: shared_files/MatchingPoints~%shared_files/PixelMatch Rectified~%shared_files/PixelMatch Noise~%std_msgs/Int32 NumberID~%~%================================================================================~%MSG: shared_files/PixelMatch~%std_msgs/Float32 u~%std_msgs/Float32 v~%std_msgs/Float32 Disparity~%~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MatchFrame>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Frame) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'frame_id))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MatchFrame>))
  "Converts a ROS message object to a list"
  (cl:list 'MatchFrame
    (cl:cons ':Frame (Frame msg))
    (cl:cons ':frame_id (frame_id msg))
))
