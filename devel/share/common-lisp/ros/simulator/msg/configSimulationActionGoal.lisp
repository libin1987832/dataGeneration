; Auto-generated. Do not edit!


(cl:in-package simulator-msg)


;//! \htmlinclude configSimulationActionGoal.msg.html

(cl:defclass <configSimulationActionGoal> (roslisp-msg-protocol:ros-message)
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
    :type simulator-msg:configSimulationGoal
    :initform (cl:make-instance 'simulator-msg:configSimulationGoal)))
)

(cl:defclass configSimulationActionGoal (<configSimulationActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <configSimulationActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'configSimulationActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-msg:<configSimulationActionGoal> is deprecated: use simulator-msg:configSimulationActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <configSimulationActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:header-val is deprecated.  Use simulator-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <configSimulationActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:goal_id-val is deprecated.  Use simulator-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <configSimulationActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:goal-val is deprecated.  Use simulator-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <configSimulationActionGoal>) ostream)
  "Serializes a message object of type '<configSimulationActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <configSimulationActionGoal>) istream)
  "Deserializes a message object of type '<configSimulationActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<configSimulationActionGoal>)))
  "Returns string type for a message object of type '<configSimulationActionGoal>"
  "simulator/configSimulationActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'configSimulationActionGoal)))
  "Returns string type for a message object of type 'configSimulationActionGoal"
  "simulator/configSimulationActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<configSimulationActionGoal>)))
  "Returns md5sum for a message object of type '<configSimulationActionGoal>"
  "6e1696190b850b4cdbf6e63501d7a326")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'configSimulationActionGoal)))
  "Returns md5sum for a message object of type 'configSimulationActionGoal"
  "6e1696190b850b4cdbf6e63501d7a326")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<configSimulationActionGoal>)))
  "Returns full string definition for message of type '<configSimulationActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%configSimulationGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: simulator/configSimulationGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%std_msgs/String world_name~%std_msgs/Bool new_world~%std_msgs/String path_name~%std_msgs/Bool new_path~%std_msgs/String unique_id~%std_msgs/String original_id~%std_msgs/String ideal_id~%std_msgs/String noisy_id~%std_msgs/Bool new_camera~%std_msgs/Bool visualize~%std_msgs/Bool generate_graph~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'configSimulationActionGoal)))
  "Returns full string definition for message of type 'configSimulationActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%configSimulationGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: simulator/configSimulationGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%std_msgs/String world_name~%std_msgs/Bool new_world~%std_msgs/String path_name~%std_msgs/Bool new_path~%std_msgs/String unique_id~%std_msgs/String original_id~%std_msgs/String ideal_id~%std_msgs/String noisy_id~%std_msgs/Bool new_camera~%std_msgs/Bool visualize~%std_msgs/Bool generate_graph~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <configSimulationActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <configSimulationActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'configSimulationActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
