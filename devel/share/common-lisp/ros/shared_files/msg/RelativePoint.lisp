; Auto-generated. Do not edit!


(cl:in-package shared_files-msg)


;//! \htmlinclude RelativePoint.msg.html

(cl:defclass <RelativePoint> (roslisp-msg-protocol:ros-message)
  ((coord
    :reader coord
    :initarg :coord
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (identification
    :reader identification
    :initarg :identification
    :type std_msgs-msg:Int32
    :initform (cl:make-instance 'std_msgs-msg:Int32)))
)

(cl:defclass RelativePoint (<RelativePoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelativePoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelativePoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name shared_files-msg:<RelativePoint> is deprecated: use shared_files-msg:RelativePoint instead.")))

(cl:ensure-generic-function 'coord-val :lambda-list '(m))
(cl:defmethod coord-val ((m <RelativePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:coord-val is deprecated.  Use shared_files-msg:coord instead.")
  (coord m))

(cl:ensure-generic-function 'identification-val :lambda-list '(m))
(cl:defmethod identification-val ((m <RelativePoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader shared_files-msg:identification-val is deprecated.  Use shared_files-msg:identification instead.")
  (identification m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelativePoint>) ostream)
  "Serializes a message object of type '<RelativePoint>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'coord) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'identification) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelativePoint>) istream)
  "Deserializes a message object of type '<RelativePoint>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'coord) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'identification) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelativePoint>)))
  "Returns string type for a message object of type '<RelativePoint>"
  "shared_files/RelativePoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelativePoint)))
  "Returns string type for a message object of type 'RelativePoint"
  "shared_files/RelativePoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelativePoint>)))
  "Returns md5sum for a message object of type '<RelativePoint>"
  "024347b0198bd44300804769f09d3b6b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelativePoint)))
  "Returns md5sum for a message object of type 'RelativePoint"
  "024347b0198bd44300804769f09d3b6b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelativePoint>)))
  "Returns full string definition for message of type '<RelativePoint>"
  (cl:format cl:nil "geometry_msgs/Point coord~%std_msgs/Int32 identification~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelativePoint)))
  "Returns full string definition for message of type 'RelativePoint"
  (cl:format cl:nil "geometry_msgs/Point coord~%std_msgs/Int32 identification~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: std_msgs/Int32~%int32 data~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelativePoint>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'coord))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'identification))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelativePoint>))
  "Converts a ROS message object to a list"
  (cl:list 'RelativePoint
    (cl:cons ':coord (coord msg))
    (cl:cons ':identification (identification msg))
))
