; Auto-generated. Do not edit!


(cl:in-package motion_estimation-msg)


;//! \htmlinclude configMotionEstimationGoal.msg.html

(cl:defclass <configMotionEstimationGoal> (roslisp-msg-protocol:ros-message)
  ((QRow_one
    :reader QRow_one
    :initarg :QRow_one
    :type (cl:vector std_msgs-msg:Float64)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float64 :initial-element (cl:make-instance 'std_msgs-msg:Float64)))
   (QRow_two
    :reader QRow_two
    :initarg :QRow_two
    :type (cl:vector std_msgs-msg:Float64)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float64 :initial-element (cl:make-instance 'std_msgs-msg:Float64)))
   (QRow_three
    :reader QRow_three
    :initarg :QRow_three
    :type (cl:vector std_msgs-msg:Float64)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float64 :initial-element (cl:make-instance 'std_msgs-msg:Float64)))
   (QRow_four
    :reader QRow_four
    :initarg :QRow_four
    :type (cl:vector std_msgs-msg:Float64)
   :initform (cl:make-array 0 :element-type 'std_msgs-msg:Float64 :initial-element (cl:make-instance 'std_msgs-msg:Float64)))
   (tname
    :reader tname
    :initarg :tname
    :type shared_files-msg:TransformNames
    :initform (cl:make-instance 'shared_files-msg:TransformNames))
   (topname
    :reader topname
    :initarg :topname
    :type shared_files-msg:TopicNames
    :initform (cl:make-instance 'shared_files-msg:TopicNames)))
)

(cl:defclass configMotionEstimationGoal (<configMotionEstimationGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <configMotionEstimationGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'configMotionEstimationGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motion_estimation-msg:<configMotionEstimationGoal> is deprecated: use motion_estimation-msg:configMotionEstimationGoal instead.")))

(cl:ensure-generic-function 'QRow_one-val :lambda-list '(m))
(cl:defmethod QRow_one-val ((m <configMotionEstimationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_estimation-msg:QRow_one-val is deprecated.  Use motion_estimation-msg:QRow_one instead.")
  (QRow_one m))

(cl:ensure-generic-function 'QRow_two-val :lambda-list '(m))
(cl:defmethod QRow_two-val ((m <configMotionEstimationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_estimation-msg:QRow_two-val is deprecated.  Use motion_estimation-msg:QRow_two instead.")
  (QRow_two m))

(cl:ensure-generic-function 'QRow_three-val :lambda-list '(m))
(cl:defmethod QRow_three-val ((m <configMotionEstimationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_estimation-msg:QRow_three-val is deprecated.  Use motion_estimation-msg:QRow_three instead.")
  (QRow_three m))

(cl:ensure-generic-function 'QRow_four-val :lambda-list '(m))
(cl:defmethod QRow_four-val ((m <configMotionEstimationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_estimation-msg:QRow_four-val is deprecated.  Use motion_estimation-msg:QRow_four instead.")
  (QRow_four m))

(cl:ensure-generic-function 'tname-val :lambda-list '(m))
(cl:defmethod tname-val ((m <configMotionEstimationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_estimation-msg:tname-val is deprecated.  Use motion_estimation-msg:tname instead.")
  (tname m))

(cl:ensure-generic-function 'topname-val :lambda-list '(m))
(cl:defmethod topname-val ((m <configMotionEstimationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_estimation-msg:topname-val is deprecated.  Use motion_estimation-msg:topname instead.")
  (topname m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <configMotionEstimationGoal>) ostream)
  "Serializes a message object of type '<configMotionEstimationGoal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'QRow_one))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'QRow_one))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'QRow_two))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'QRow_two))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'QRow_three))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'QRow_three))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'QRow_four))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'QRow_four))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'tname) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'topname) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <configMotionEstimationGoal>) istream)
  "Deserializes a message object of type '<configMotionEstimationGoal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'QRow_one) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'QRow_one)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float64))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'QRow_two) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'QRow_two)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float64))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'QRow_three) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'QRow_three)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float64))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'QRow_four) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'QRow_four)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'std_msgs-msg:Float64))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'tname) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'topname) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<configMotionEstimationGoal>)))
  "Returns string type for a message object of type '<configMotionEstimationGoal>"
  "motion_estimation/configMotionEstimationGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'configMotionEstimationGoal)))
  "Returns string type for a message object of type 'configMotionEstimationGoal"
  "motion_estimation/configMotionEstimationGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<configMotionEstimationGoal>)))
  "Returns md5sum for a message object of type '<configMotionEstimationGoal>"
  "270b859cd6d37c115cfebe8b49e68ab0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'configMotionEstimationGoal)))
  "Returns md5sum for a message object of type 'configMotionEstimationGoal"
  "270b859cd6d37c115cfebe8b49e68ab0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<configMotionEstimationGoal>)))
  "Returns full string definition for message of type '<configMotionEstimationGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%std_msgs/Float64[] QRow_one~%std_msgs/Float64[] QRow_two~%std_msgs/Float64[] QRow_three~%std_msgs/Float64[] QRow_four~%shared_files/TransformNames tname~%shared_files/TopicNames topname~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: shared_files/TransformNames~%std_msgs/String ID~%std_msgs/String world_frame~%std_msgs/String cm~%std_msgs/String left~%std_msgs/String right~%std_msgs/String left_cv~%std_msgs/String right_cv~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: shared_files/TopicNames~%std_msgs/String RelativeCloudTopic~%std_msgs/String MatchesTopic~%std_msgs/String NoisyEstimationTopic~%std_msgs/String OriginalTopic~%std_msgs/String RectifiedEstimationTopic~%std_msgs/String MapTopic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'configMotionEstimationGoal)))
  "Returns full string definition for message of type 'configMotionEstimationGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%std_msgs/Float64[] QRow_one~%std_msgs/Float64[] QRow_two~%std_msgs/Float64[] QRow_three~%std_msgs/Float64[] QRow_four~%shared_files/TransformNames tname~%shared_files/TopicNames topname~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: shared_files/TransformNames~%std_msgs/String ID~%std_msgs/String world_frame~%std_msgs/String cm~%std_msgs/String left~%std_msgs/String right~%std_msgs/String left_cv~%std_msgs/String right_cv~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: shared_files/TopicNames~%std_msgs/String RelativeCloudTopic~%std_msgs/String MatchesTopic~%std_msgs/String NoisyEstimationTopic~%std_msgs/String OriginalTopic~%std_msgs/String RectifiedEstimationTopic~%std_msgs/String MapTopic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <configMotionEstimationGoal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'QRow_one) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'QRow_two) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'QRow_three) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'QRow_four) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'tname))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'topname))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <configMotionEstimationGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'configMotionEstimationGoal
    (cl:cons ':QRow_one (QRow_one msg))
    (cl:cons ':QRow_two (QRow_two msg))
    (cl:cons ':QRow_three (QRow_three msg))
    (cl:cons ':QRow_four (QRow_four msg))
    (cl:cons ':tname (tname msg))
    (cl:cons ':topname (topname msg))
))
