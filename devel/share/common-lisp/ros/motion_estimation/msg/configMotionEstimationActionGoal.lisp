; Auto-generated. Do not edit!


(cl:in-package motion_estimation-msg)


;//! \htmlinclude configMotionEstimationActionGoal.msg.html

(cl:defclass <configMotionEstimationActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type motion_estimation-msg:configMotionEstimationGoal
    :initform (cl:make-instance 'motion_estimation-msg:configMotionEstimationGoal)))
)

(cl:defclass configMotionEstimationActionGoal (<configMotionEstimationActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <configMotionEstimationActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'configMotionEstimationActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motion_estimation-msg:<configMotionEstimationActionGoal> is deprecated: use motion_estimation-msg:configMotionEstimationActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <configMotionEstimationActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_estimation-msg:header-val is deprecated.  Use motion_estimation-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <configMotionEstimationActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_estimation-msg:goal_id-val is deprecated.  Use motion_estimation-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <configMotionEstimationActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_estimation-msg:goal-val is deprecated.  Use motion_estimation-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <configMotionEstimationActionGoal>) ostream)
  "Serializes a message object of type '<configMotionEstimationActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <configMotionEstimationActionGoal>) istream)
  "Deserializes a message object of type '<configMotionEstimationActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<configMotionEstimationActionGoal>)))
  "Returns string type for a message object of type '<configMotionEstimationActionGoal>"
  "motion_estimation/configMotionEstimationActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'configMotionEstimationActionGoal)))
  "Returns string type for a message object of type 'configMotionEstimationActionGoal"
  "motion_estimation/configMotionEstimationActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<configMotionEstimationActionGoal>)))
  "Returns md5sum for a message object of type '<configMotionEstimationActionGoal>"
  "2a52f1bc3d76fd049576ed153ca190dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'configMotionEstimationActionGoal)))
  "Returns md5sum for a message object of type 'configMotionEstimationActionGoal"
  "2a52f1bc3d76fd049576ed153ca190dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<configMotionEstimationActionGoal>)))
  "Returns full string definition for message of type '<configMotionEstimationActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%configMotionEstimationGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: motion_estimation/configMotionEstimationGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%std_msgs/Float64[] QRow_one~%std_msgs/Float64[] QRow_two~%std_msgs/Float64[] QRow_three~%std_msgs/Float64[] QRow_four~%shared_files/TransformNames tname~%shared_files/TopicNames topname~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: shared_files/TransformNames~%std_msgs/String ID~%std_msgs/String world_frame~%std_msgs/String cm~%std_msgs/String left~%std_msgs/String right~%std_msgs/String left_cv~%std_msgs/String right_cv~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: shared_files/TopicNames~%std_msgs/String RelativeCloudTopic~%std_msgs/String MatchesTopic~%std_msgs/String NoisyEstimationTopic~%std_msgs/String OriginalTopic~%std_msgs/String RectifiedEstimationTopic~%std_msgs/String MapTopic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'configMotionEstimationActionGoal)))
  "Returns full string definition for message of type 'configMotionEstimationActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%configMotionEstimationGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: motion_estimation/configMotionEstimationGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%std_msgs/Float64[] QRow_one~%std_msgs/Float64[] QRow_two~%std_msgs/Float64[] QRow_three~%std_msgs/Float64[] QRow_four~%shared_files/TransformNames tname~%shared_files/TopicNames topname~%~%================================================================================~%MSG: std_msgs/Float64~%float64 data~%================================================================================~%MSG: shared_files/TransformNames~%std_msgs/String ID~%std_msgs/String world_frame~%std_msgs/String cm~%std_msgs/String left~%std_msgs/String right~%std_msgs/String left_cv~%std_msgs/String right_cv~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: shared_files/TopicNames~%std_msgs/String RelativeCloudTopic~%std_msgs/String MatchesTopic~%std_msgs/String NoisyEstimationTopic~%std_msgs/String OriginalTopic~%std_msgs/String RectifiedEstimationTopic~%std_msgs/String MapTopic~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <configMotionEstimationActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <configMotionEstimationActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'configMotionEstimationActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))