; Auto-generated. Do not edit!


(cl:in-package blackbox_matcher-msg)


;//! \htmlinclude configCameraGoal.msg.html

(cl:defclass <configCameraGoal> (roslisp-msg-protocol:ros-message)
  ((settings_transform
    :reader settings_transform
    :initarg :settings_transform
    :type shared_files-msg:TransformNames
    :initform (cl:make-instance 'shared_files-msg:TransformNames))
   (settings_topic
    :reader settings_topic
    :initarg :settings_topic
    :type shared_files-msg:TopicNames
    :initform (cl:make-instance 'shared_files-msg:TopicNames))
   (base
    :reader base
    :initarg :base
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (n_t
    :reader n_t
    :initarg :n_t
    :type shared_files-msg:SettingsTransform
    :initform (cl:make-instance 'shared_files-msg:SettingsTransform))
   (r_t
    :reader r_t
    :initarg :r_t
    :type shared_files-msg:SettingsTransform
    :initform (cl:make-instance 'shared_files-msg:SettingsTransform)))
)

(cl:defclass configCameraGoal (<configCameraGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <configCameraGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'configCameraGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name blackbox_matcher-msg:<configCameraGoal> is deprecated: use blackbox_matcher-msg:configCameraGoal instead.")))

(cl:ensure-generic-function 'settings_transform-val :lambda-list '(m))
(cl:defmethod settings_transform-val ((m <configCameraGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackbox_matcher-msg:settings_transform-val is deprecated.  Use blackbox_matcher-msg:settings_transform instead.")
  (settings_transform m))

(cl:ensure-generic-function 'settings_topic-val :lambda-list '(m))
(cl:defmethod settings_topic-val ((m <configCameraGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackbox_matcher-msg:settings_topic-val is deprecated.  Use blackbox_matcher-msg:settings_topic instead.")
  (settings_topic m))

(cl:ensure-generic-function 'base-val :lambda-list '(m))
(cl:defmethod base-val ((m <configCameraGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackbox_matcher-msg:base-val is deprecated.  Use blackbox_matcher-msg:base instead.")
  (base m))

(cl:ensure-generic-function 'n_t-val :lambda-list '(m))
(cl:defmethod n_t-val ((m <configCameraGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackbox_matcher-msg:n_t-val is deprecated.  Use blackbox_matcher-msg:n_t instead.")
  (n_t m))

(cl:ensure-generic-function 'r_t-val :lambda-list '(m))
(cl:defmethod r_t-val ((m <configCameraGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader blackbox_matcher-msg:r_t-val is deprecated.  Use blackbox_matcher-msg:r_t instead.")
  (r_t m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <configCameraGoal>) ostream)
  "Serializes a message object of type '<configCameraGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'settings_transform) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'settings_topic) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'base) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'n_t) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'r_t) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <configCameraGoal>) istream)
  "Deserializes a message object of type '<configCameraGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'settings_transform) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'settings_topic) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'base) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'n_t) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'r_t) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<configCameraGoal>)))
  "Returns string type for a message object of type '<configCameraGoal>"
  "blackbox_matcher/configCameraGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'configCameraGoal)))
  "Returns string type for a message object of type 'configCameraGoal"
  "blackbox_matcher/configCameraGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<configCameraGoal>)))
  "Returns md5sum for a message object of type '<configCameraGoal>"
  "d0e0d3e8622fd0fc360c4b6d9496bf26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'configCameraGoal)))
  "Returns md5sum for a message object of type 'configCameraGoal"
  "d0e0d3e8622fd0fc360c4b6d9496bf26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<configCameraGoal>)))
  "Returns full string definition for message of type '<configCameraGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%shared_files/TransformNames settings_transform~%shared_files/TopicNames settings_topic~%geometry_msgs/Transform base~%shared_files/SettingsTransform n_t~%shared_files/SettingsTransform r_t~%~%================================================================================~%MSG: shared_files/TransformNames~%std_msgs/String ID~%std_msgs/String world_frame~%std_msgs/String cm~%std_msgs/String left~%std_msgs/String right~%std_msgs/String left_cv~%std_msgs/String right_cv~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: shared_files/TopicNames~%std_msgs/String RelativeCloudTopic~%std_msgs/String MatchesTopic~%std_msgs/String NoisyEstimationTopic~%std_msgs/String OriginalTopic~%std_msgs/String RectifiedEstimationTopic~%std_msgs/String MapTopic~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: shared_files/SettingsTransform~%geometry_msgs/TransformStamped cm_l~%geometry_msgs/TransformStamped l_cv~%geometry_msgs/TransformStamped cm_r~%geometry_msgs/TransformStamped r_cv~%geometry_msgs/TransformStamped w_cm~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://www.ros.org/wiki/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'configCameraGoal)))
  "Returns full string definition for message of type 'configCameraGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%shared_files/TransformNames settings_transform~%shared_files/TopicNames settings_topic~%geometry_msgs/Transform base~%shared_files/SettingsTransform n_t~%shared_files/SettingsTransform r_t~%~%================================================================================~%MSG: shared_files/TransformNames~%std_msgs/String ID~%std_msgs/String world_frame~%std_msgs/String cm~%std_msgs/String left~%std_msgs/String right~%std_msgs/String left_cv~%std_msgs/String right_cv~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: shared_files/TopicNames~%std_msgs/String RelativeCloudTopic~%std_msgs/String MatchesTopic~%std_msgs/String NoisyEstimationTopic~%std_msgs/String OriginalTopic~%std_msgs/String RectifiedEstimationTopic~%std_msgs/String MapTopic~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: shared_files/SettingsTransform~%geometry_msgs/TransformStamped cm_l~%geometry_msgs/TransformStamped l_cv~%geometry_msgs/TransformStamped cm_r~%geometry_msgs/TransformStamped r_cv~%geometry_msgs/TransformStamped w_cm~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://www.ros.org/wiki/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <configCameraGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'settings_transform))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'settings_topic))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'base))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'n_t))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'r_t))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <configCameraGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'configCameraGoal
    (cl:cons ':settings_transform (settings_transform msg))
    (cl:cons ':settings_topic (settings_topic msg))
    (cl:cons ':base (base msg))
    (cl:cons ':n_t (n_t msg))
    (cl:cons ':r_t (r_t msg))
))