; Auto-generated. Do not edit!


(cl:in-package shared_files-msg)


;//! \htmlinclude SettingsTransform.msg.html

(cl:defclass <SettingsTransform> (roslisp-msg-protocol:ros-message)
  ((cm_l
    :reader cm_l
    :initarg :cm_l
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped))
   (l_cv
    :reader l_cv
    :initarg :l_cv
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped))
   (cm_r
    :reader cm_r
    :initarg :cm_r
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped))
   (r_cv
    :reader r_cv
    :initarg :r_cv
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped))
   (w_cm
    :reader w_cm
    :initarg :w_cm
    :type geometry_msgs-msg:TransformStamped
    :initform (cl:make-instance 'geometry_msgs-msg:TransformStamped)))
)

(cl:defclass SettingsTransform (<SettingsTransform>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SettingsTransform>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SettingsTransform)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-msg:<SettingsTransform> is deprecated: use shared_files-msg:SettingsTransform instead.")))

(cl:ensure-generic-function 'cm_l-val :lambda-list '(m))
(cl:defmethod cm_l-val ((m <SettingsTransform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:cm_l-val is deprecated.  Use shared_files-msg:cm_l instead.")
  (cm_l m))

(cl:ensure-generic-function 'l_cv-val :lambda-list '(m))
(cl:defmethod l_cv-val ((m <SettingsTransform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:l_cv-val is deprecated.  Use shared_files-msg:l_cv instead.")
  (l_cv m))

(cl:ensure-generic-function 'cm_r-val :lambda-list '(m))
(cl:defmethod cm_r-val ((m <SettingsTransform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:cm_r-val is deprecated.  Use shared_files-msg:cm_r instead.")
  (cm_r m))

(cl:ensure-generic-function 'r_cv-val :lambda-list '(m))
(cl:defmethod r_cv-val ((m <SettingsTransform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:r_cv-val is deprecated.  Use shared_files-msg:r_cv instead.")
  (r_cv m))

(cl:ensure-generic-function 'w_cm-val :lambda-list '(m))
(cl:defmethod w_cm-val ((m <SettingsTransform>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:w_cm-val is deprecated.  Use shared_files-msg:w_cm instead.")
  (w_cm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SettingsTransform>) ostream)
  "Serializes a message object of type '<SettingsTransform>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cm_l) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'l_cv) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cm_r) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'r_cv) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'w_cm) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SettingsTransform>) istream)
  "Deserializes a message object of type '<SettingsTransform>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cm_l) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'l_cv) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cm_r) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'r_cv) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'w_cm) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SettingsTransform>)))
  "Returns string type for a message object of type '<SettingsTransform>"
  "shared_files/SettingsTransform")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SettingsTransform)))
  "Returns string type for a message object of type 'SettingsTransform"
  "shared_files/SettingsTransform")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SettingsTransform>)))
  "Returns md5sum for a message object of type '<SettingsTransform>"
  "9b0a011dc5474bcba2d8b6bdc32127c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SettingsTransform)))
  "Returns md5sum for a message object of type 'SettingsTransform"
  "9b0a011dc5474bcba2d8b6bdc32127c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SettingsTransform>)))
  "Returns full string definition for message of type '<SettingsTransform>"
  (cl:format cl:nil "geometry_msgs/TransformStamped cm_l~%geometry_msgs/TransformStamped l_cv~%geometry_msgs/TransformStamped cm_r~%geometry_msgs/TransformStamped r_cv~%geometry_msgs/TransformStamped w_cm~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://www.ros.org/wiki/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SettingsTransform)))
  "Returns full string definition for message of type 'SettingsTransform"
  (cl:format cl:nil "geometry_msgs/TransformStamped cm_l~%geometry_msgs/TransformStamped l_cv~%geometry_msgs/TransformStamped cm_r~%geometry_msgs/TransformStamped r_cv~%geometry_msgs/TransformStamped w_cm~%~%================================================================================~%MSG: geometry_msgs/TransformStamped~%# This expresses a transform from coordinate frame header.frame_id~%# to the coordinate frame child_frame_id~%#~%# This message is mostly used by the ~%# <a href=\"http://www.ros.org/wiki/tf\">tf</a> package. ~%# See its documentation for more information.~%~%Header header~%string child_frame_id # the frame id of the child frame~%Transform transform~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SettingsTransform>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cm_l))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'l_cv))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cm_r))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'r_cv))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'w_cm))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SettingsTransform>))
  "Converts a ROS message object to a list"
  (cl:list 'SettingsTransform
    (cl:cons ':cm_l (cm_l msg))
    (cl:cons ':l_cv (l_cv msg))
    (cl:cons ':cm_r (cm_r msg))
    (cl:cons ':r_cv (r_cv msg))
    (cl:cons ':w_cm (w_cm msg))
))
