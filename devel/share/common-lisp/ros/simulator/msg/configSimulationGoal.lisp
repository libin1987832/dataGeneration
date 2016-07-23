; Auto-generated. Do not edit!


(cl:in-package simulator-msg)


;//! \htmlinclude configSimulationGoal.msg.html

(cl:defclass <configSimulationGoal> (roslisp-msg-protocol:ros-message)
  ((world_name
    :reader world_name
    :initarg :world_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (new_world
    :reader new_world
    :initarg :new_world
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (path_name
    :reader path_name
    :initarg :path_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (new_path
    :reader new_path
    :initarg :new_path
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (unique_id
    :reader unique_id
    :initarg :unique_id
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (original_id
    :reader original_id
    :initarg :original_id
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (ideal_id
    :reader ideal_id
    :initarg :ideal_id
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (noisy_id
    :reader noisy_id
    :initarg :noisy_id
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (new_camera
    :reader new_camera
    :initarg :new_camera
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (visualize
    :reader visualize
    :initarg :visualize
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (generate_graph
    :reader generate_graph
    :initarg :generate_graph
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool)))
)

(cl:defclass configSimulationGoal (<configSimulationGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <configSimulationGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'configSimulationGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-msg:<configSimulationGoal> is deprecated: use simulator-msg:configSimulationGoal instead.")))

(cl:ensure-generic-function 'world_name-val :lambda-list '(m))
(cl:defmethod world_name-val ((m <configSimulationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:world_name-val is deprecated.  Use simulator-msg:world_name instead.")
  (world_name m))

(cl:ensure-generic-function 'new_world-val :lambda-list '(m))
(cl:defmethod new_world-val ((m <configSimulationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:new_world-val is deprecated.  Use simulator-msg:new_world instead.")
  (new_world m))

(cl:ensure-generic-function 'path_name-val :lambda-list '(m))
(cl:defmethod path_name-val ((m <configSimulationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:path_name-val is deprecated.  Use simulator-msg:path_name instead.")
  (path_name m))

(cl:ensure-generic-function 'new_path-val :lambda-list '(m))
(cl:defmethod new_path-val ((m <configSimulationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:new_path-val is deprecated.  Use simulator-msg:new_path instead.")
  (new_path m))

(cl:ensure-generic-function 'unique_id-val :lambda-list '(m))
(cl:defmethod unique_id-val ((m <configSimulationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:unique_id-val is deprecated.  Use simulator-msg:unique_id instead.")
  (unique_id m))

(cl:ensure-generic-function 'original_id-val :lambda-list '(m))
(cl:defmethod original_id-val ((m <configSimulationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:original_id-val is deprecated.  Use simulator-msg:original_id instead.")
  (original_id m))

(cl:ensure-generic-function 'ideal_id-val :lambda-list '(m))
(cl:defmethod ideal_id-val ((m <configSimulationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:ideal_id-val is deprecated.  Use simulator-msg:ideal_id instead.")
  (ideal_id m))

(cl:ensure-generic-function 'noisy_id-val :lambda-list '(m))
(cl:defmethod noisy_id-val ((m <configSimulationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:noisy_id-val is deprecated.  Use simulator-msg:noisy_id instead.")
  (noisy_id m))

(cl:ensure-generic-function 'new_camera-val :lambda-list '(m))
(cl:defmethod new_camera-val ((m <configSimulationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:new_camera-val is deprecated.  Use simulator-msg:new_camera instead.")
  (new_camera m))

(cl:ensure-generic-function 'visualize-val :lambda-list '(m))
(cl:defmethod visualize-val ((m <configSimulationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:visualize-val is deprecated.  Use simulator-msg:visualize instead.")
  (visualize m))

(cl:ensure-generic-function 'generate_graph-val :lambda-list '(m))
(cl:defmethod generate_graph-val ((m <configSimulationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:generate_graph-val is deprecated.  Use simulator-msg:generate_graph instead.")
  (generate_graph m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <configSimulationGoal>) ostream)
  "Serializes a message object of type '<configSimulationGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'world_name) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'new_world) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_name) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'new_path) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'unique_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'original_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ideal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'noisy_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'new_camera) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'visualize) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'generate_graph) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <configSimulationGoal>) istream)
  "Deserializes a message object of type '<configSimulationGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'world_name) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'new_world) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_name) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'new_path) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'unique_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'original_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ideal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'noisy_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'new_camera) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'visualize) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'generate_graph) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<configSimulationGoal>)))
  "Returns string type for a message object of type '<configSimulationGoal>"
  "simulator/configSimulationGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'configSimulationGoal)))
  "Returns string type for a message object of type 'configSimulationGoal"
  "simulator/configSimulationGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<configSimulationGoal>)))
  "Returns md5sum for a message object of type '<configSimulationGoal>"
  "837740a48de6bf8ef577fd1fdc89c7f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'configSimulationGoal)))
  "Returns md5sum for a message object of type 'configSimulationGoal"
  "837740a48de6bf8ef577fd1fdc89c7f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<configSimulationGoal>)))
  "Returns full string definition for message of type '<configSimulationGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%std_msgs/String world_name~%std_msgs/Bool new_world~%std_msgs/String path_name~%std_msgs/Bool new_path~%std_msgs/String unique_id~%std_msgs/String original_id~%std_msgs/String ideal_id~%std_msgs/String noisy_id~%std_msgs/Bool new_camera~%std_msgs/Bool visualize~%std_msgs/Bool generate_graph~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'configSimulationGoal)))
  "Returns full string definition for message of type 'configSimulationGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%std_msgs/String world_name~%std_msgs/Bool new_world~%std_msgs/String path_name~%std_msgs/Bool new_path~%std_msgs/String unique_id~%std_msgs/String original_id~%std_msgs/String ideal_id~%std_msgs/String noisy_id~%std_msgs/Bool new_camera~%std_msgs/Bool visualize~%std_msgs/Bool generate_graph~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <configSimulationGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'world_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'new_world))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'new_path))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'unique_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'original_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ideal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'noisy_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'new_camera))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'visualize))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'generate_graph))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <configSimulationGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'configSimulationGoal
    (cl:cons ':world_name (world_name msg))
    (cl:cons ':new_world (new_world msg))
    (cl:cons ':path_name (path_name msg))
    (cl:cons ':new_path (new_path msg))
    (cl:cons ':unique_id (unique_id msg))
    (cl:cons ':original_id (original_id msg))
    (cl:cons ':ideal_id (ideal_id msg))
    (cl:cons ':noisy_id (noisy_id msg))
    (cl:cons ':new_camera (new_camera msg))
    (cl:cons ':visualize (visualize msg))
    (cl:cons ':generate_graph (generate_graph msg))
))
