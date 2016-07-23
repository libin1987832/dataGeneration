; Auto-generated. Do not edit!


(cl:in-package shared_files-msg)


;//! \htmlinclude TopicNames.msg.html

(cl:defclass <TopicNames> (roslisp-msg-protocol:ros-message)
  ((RelativeCloudTopic
    :reader RelativeCloudTopic
    :initarg :RelativeCloudTopic
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (MatchesTopic
    :reader MatchesTopic
    :initarg :MatchesTopic
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (NoisyEstimationTopic
    :reader NoisyEstimationTopic
    :initarg :NoisyEstimationTopic
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (OriginalTopic
    :reader OriginalTopic
    :initarg :OriginalTopic
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (RectifiedEstimationTopic
    :reader RectifiedEstimationTopic
    :initarg :RectifiedEstimationTopic
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (MapTopic
    :reader MapTopic
    :initarg :MapTopic
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass TopicNames (<TopicNames>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TopicNames>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TopicNames)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-msg:<TopicNames> is deprecated: use shared_files-msg:TopicNames instead.")))

(cl:ensure-generic-function 'RelativeCloudTopic-val :lambda-list '(m))
(cl:defmethod RelativeCloudTopic-val ((m <TopicNames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:RelativeCloudTopic-val is deprecated.  Use shared_files-msg:RelativeCloudTopic instead.")
  (RelativeCloudTopic m))

(cl:ensure-generic-function 'MatchesTopic-val :lambda-list '(m))
(cl:defmethod MatchesTopic-val ((m <TopicNames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:MatchesTopic-val is deprecated.  Use shared_files-msg:MatchesTopic instead.")
  (MatchesTopic m))

(cl:ensure-generic-function 'NoisyEstimationTopic-val :lambda-list '(m))
(cl:defmethod NoisyEstimationTopic-val ((m <TopicNames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:NoisyEstimationTopic-val is deprecated.  Use shared_files-msg:NoisyEstimationTopic instead.")
  (NoisyEstimationTopic m))

(cl:ensure-generic-function 'OriginalTopic-val :lambda-list '(m))
(cl:defmethod OriginalTopic-val ((m <TopicNames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:OriginalTopic-val is deprecated.  Use shared_files-msg:OriginalTopic instead.")
  (OriginalTopic m))

(cl:ensure-generic-function 'RectifiedEstimationTopic-val :lambda-list '(m))
(cl:defmethod RectifiedEstimationTopic-val ((m <TopicNames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:RectifiedEstimationTopic-val is deprecated.  Use shared_files-msg:RectifiedEstimationTopic instead.")
  (RectifiedEstimationTopic m))

(cl:ensure-generic-function 'MapTopic-val :lambda-list '(m))
(cl:defmethod MapTopic-val ((m <TopicNames>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:MapTopic-val is deprecated.  Use shared_files-msg:MapTopic instead.")
  (MapTopic m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TopicNames>) ostream)
  "Serializes a message object of type '<TopicNames>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'RelativeCloudTopic) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'MatchesTopic) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'NoisyEstimationTopic) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'OriginalTopic) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'RectifiedEstimationTopic) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'MapTopic) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TopicNames>) istream)
  "Deserializes a message object of type '<TopicNames>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'RelativeCloudTopic) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'MatchesTopic) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'NoisyEstimationTopic) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'OriginalTopic) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'RectifiedEstimationTopic) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'MapTopic) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TopicNames>)))
  "Returns string type for a message object of type '<TopicNames>"
  "shared_files/TopicNames")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TopicNames)))
  "Returns string type for a message object of type 'TopicNames"
  "shared_files/TopicNames")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TopicNames>)))
  "Returns md5sum for a message object of type '<TopicNames>"
  "e072890b41f082f2863f4f3dd1dee3f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TopicNames)))
  "Returns md5sum for a message object of type 'TopicNames"
  "e072890b41f082f2863f4f3dd1dee3f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TopicNames>)))
  "Returns full string definition for message of type '<TopicNames>"
  (cl:format cl:nil "std_msgs/String RelativeCloudTopic~%std_msgs/String MatchesTopic~%std_msgs/String NoisyEstimationTopic~%std_msgs/String OriginalTopic~%std_msgs/String RectifiedEstimationTopic~%std_msgs/String MapTopic~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TopicNames)))
  "Returns full string definition for message of type 'TopicNames"
  (cl:format cl:nil "std_msgs/String RelativeCloudTopic~%std_msgs/String MatchesTopic~%std_msgs/String NoisyEstimationTopic~%std_msgs/String OriginalTopic~%std_msgs/String RectifiedEstimationTopic~%std_msgs/String MapTopic~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TopicNames>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'RelativeCloudTopic))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'MatchesTopic))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'NoisyEstimationTopic))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'OriginalTopic))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'RectifiedEstimationTopic))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'MapTopic))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TopicNames>))
  "Converts a ROS message object to a list"
  (cl:list 'TopicNames
    (cl:cons ':RelativeCloudTopic (RelativeCloudTopic msg))
    (cl:cons ':MatchesTopic (MatchesTopic msg))
    (cl:cons ':NoisyEstimationTopic (NoisyEstimationTopic msg))
    (cl:cons ':OriginalTopic (OriginalTopic msg))
    (cl:cons ':RectifiedEstimationTopic (RectifiedEstimationTopic msg))
    (cl:cons ':MapTopic (MapTopic msg))
))
