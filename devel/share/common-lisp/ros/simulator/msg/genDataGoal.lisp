; Auto-generated. Do not edit!


(cl:in-package simulator-msg)


;//! \htmlinclude genDataGoal.msg.html

(cl:defclass <genDataGoal> (roslisp-msg-protocol:ros-message)
  ((world_name
    :reader world_name
    :initarg :world_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (unique_id
    :reader unique_id
    :initarg :unique_id
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (path_name
    :reader path_name
    :initarg :path_name
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (new_prefixes
    :reader new_prefixes
    :initarg :new_prefixes
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (cm
    :reader cm
    :initarg :cm
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (l
    :reader l
    :initarg :l
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (r
    :reader r
    :initarg :r
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (lcv
    :reader lcv
    :initarg :lcv
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (rcv
    :reader rcv
    :initarg :rcv
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (load_world
    :reader load_world
    :initarg :load_world
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (world_dir
    :reader world_dir
    :initarg :world_dir
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String))
   (load_path
    :reader load_path
    :initarg :load_path
    :type std_msgs-msg:Bool
    :initform (cl:make-instance 'std_msgs-msg:Bool))
   (path_dir
    :reader path_dir
    :initarg :path_dir
    :type std_msgs-msg:String
    :initform (cl:make-instance 'std_msgs-msg:String)))
)

(cl:defclass genDataGoal (<genDataGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <genDataGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'genDataGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name simulator-msg:<genDataGoal> is deprecated: use simulator-msg:genDataGoal instead.")))

(cl:ensure-generic-function 'world_name-val :lambda-list '(m))
(cl:defmethod world_name-val ((m <genDataGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:world_name-val is deprecated.  Use simulator-msg:world_name instead.")
  (world_name m))

(cl:ensure-generic-function 'unique_id-val :lambda-list '(m))
(cl:defmethod unique_id-val ((m <genDataGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:unique_id-val is deprecated.  Use simulator-msg:unique_id instead.")
  (unique_id m))

(cl:ensure-generic-function 'path_name-val :lambda-list '(m))
(cl:defmethod path_name-val ((m <genDataGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:path_name-val is deprecated.  Use simulator-msg:path_name instead.")
  (path_name m))

(cl:ensure-generic-function 'new_prefixes-val :lambda-list '(m))
(cl:defmethod new_prefixes-val ((m <genDataGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:new_prefixes-val is deprecated.  Use simulator-msg:new_prefixes instead.")
  (new_prefixes m))

(cl:ensure-generic-function 'cm-val :lambda-list '(m))
(cl:defmethod cm-val ((m <genDataGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:cm-val is deprecated.  Use simulator-msg:cm instead.")
  (cm m))

(cl:ensure-generic-function 'l-val :lambda-list '(m))
(cl:defmethod l-val ((m <genDataGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:l-val is deprecated.  Use simulator-msg:l instead.")
  (l m))

(cl:ensure-generic-function 'r-val :lambda-list '(m))
(cl:defmethod r-val ((m <genDataGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:r-val is deprecated.  Use simulator-msg:r instead.")
  (r m))

(cl:ensure-generic-function 'lcv-val :lambda-list '(m))
(cl:defmethod lcv-val ((m <genDataGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:lcv-val is deprecated.  Use simulator-msg:lcv instead.")
  (lcv m))

(cl:ensure-generic-function 'rcv-val :lambda-list '(m))
(cl:defmethod rcv-val ((m <genDataGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:rcv-val is deprecated.  Use simulator-msg:rcv instead.")
  (rcv m))

(cl:ensure-generic-function 'load_world-val :lambda-list '(m))
(cl:defmethod load_world-val ((m <genDataGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:load_world-val is deprecated.  Use simulator-msg:load_world instead.")
  (load_world m))

(cl:ensure-generic-function 'world_dir-val :lambda-list '(m))
(cl:defmethod world_dir-val ((m <genDataGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:world_dir-val is deprecated.  Use simulator-msg:world_dir instead.")
  (world_dir m))

(cl:ensure-generic-function 'load_path-val :lambda-list '(m))
(cl:defmethod load_path-val ((m <genDataGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:load_path-val is deprecated.  Use simulator-msg:load_path instead.")
  (load_path m))

(cl:ensure-generic-function 'path_dir-val :lambda-list '(m))
(cl:defmethod path_dir-val ((m <genDataGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader simulator-msg:path_dir-val is deprecated.  Use simulator-msg:path_dir instead.")
  (path_dir m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <genDataGoal>) ostream)
  "Serializes a message object of type '<genDataGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'world_name) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'unique_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_name) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'new_prefixes) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cm) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'l) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'r) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lcv) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rcv) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'load_world) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'world_dir) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'load_path) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'path_dir) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <genDataGoal>) istream)
  "Deserializes a message object of type '<genDataGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'world_name) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'unique_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_name) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'new_prefixes) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cm) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'l) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'r) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lcv) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rcv) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'load_world) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'world_dir) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'load_path) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'path_dir) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<genDataGoal>)))
  "Returns string type for a message object of type '<genDataGoal>"
  "simulator/genDataGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'genDataGoal)))
  "Returns string type for a message object of type 'genDataGoal"
  "simulator/genDataGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<genDataGoal>)))
  "Returns md5sum for a message object of type '<genDataGoal>"
  "6834f4b1422f960c74621775242b1f5c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'genDataGoal)))
  "Returns md5sum for a message object of type 'genDataGoal"
  "6834f4b1422f960c74621775242b1f5c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<genDataGoal>)))
  "Returns full string definition for message of type '<genDataGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%std_msgs/String world_name~%std_msgs/String unique_id~%std_msgs/String path_name~%std_msgs/Bool new_prefixes~%std_msgs/String cm~%std_msgs/String l~%std_msgs/String r~%std_msgs/String lcv~%std_msgs/String rcv~%std_msgs/Bool load_world~%std_msgs/String world_dir~%std_msgs/Bool load_path~%std_msgs/String path_dir~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'genDataGoal)))
  "Returns full string definition for message of type 'genDataGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%std_msgs/String world_name~%std_msgs/String unique_id~%std_msgs/String path_name~%std_msgs/Bool new_prefixes~%std_msgs/String cm~%std_msgs/String l~%std_msgs/String r~%std_msgs/String lcv~%std_msgs/String rcv~%std_msgs/Bool load_world~%std_msgs/String world_dir~%std_msgs/Bool load_path~%std_msgs/String path_dir~%~%================================================================================~%MSG: std_msgs/String~%string data~%~%================================================================================~%MSG: std_msgs/Bool~%bool data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <genDataGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'world_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'unique_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_name))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'new_prefixes))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cm))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'l))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'r))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lcv))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rcv))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'load_world))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'world_dir))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'load_path))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'path_dir))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <genDataGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'genDataGoal
    (cl:cons ':world_name (world_name msg))
    (cl:cons ':unique_id (unique_id msg))
    (cl:cons ':path_name (path_name msg))
    (cl:cons ':new_prefixes (new_prefixes msg))
    (cl:cons ':cm (cm msg))
    (cl:cons ':l (l msg))
    (cl:cons ':r (r msg))
    (cl:cons ':lcv (lcv msg))
    (cl:cons ':rcv (rcv msg))
    (cl:cons ':load_world (load_world msg))
    (cl:cons ':world_dir (world_dir msg))
    (cl:cons ':load_path (load_path msg))
    (cl:cons ':path_dir (path_dir msg))
))
