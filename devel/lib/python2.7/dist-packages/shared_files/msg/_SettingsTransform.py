# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from shared_files/SettingsTransform.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import std_msgs.msg

class SettingsTransform(genpy.Message):
  _md5sum = "9b0a011dc5474bcba2d8b6bdc32127c5"
  _type = "shared_files/SettingsTransform"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """geometry_msgs/TransformStamped cm_l
geometry_msgs/TransformStamped l_cv
geometry_msgs/TransformStamped cm_r
geometry_msgs/TransformStamped r_cv
geometry_msgs/TransformStamped w_cm

================================================================================
MSG: geometry_msgs/TransformStamped
# This expresses a transform from coordinate frame header.frame_id
# to the coordinate frame child_frame_id
#
# This message is mostly used by the 
# <a href="http://www.ros.org/wiki/tf">tf</a> package. 
# See its documentation for more information.

Header header
string child_frame_id # the frame id of the child frame
Transform transform

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w
"""
  __slots__ = ['cm_l','l_cv','cm_r','r_cv','w_cm']
  _slot_types = ['geometry_msgs/TransformStamped','geometry_msgs/TransformStamped','geometry_msgs/TransformStamped','geometry_msgs/TransformStamped','geometry_msgs/TransformStamped']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       cm_l,l_cv,cm_r,r_cv,w_cm

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SettingsTransform, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.cm_l is None:
        self.cm_l = geometry_msgs.msg.TransformStamped()
      if self.l_cv is None:
        self.l_cv = geometry_msgs.msg.TransformStamped()
      if self.cm_r is None:
        self.cm_r = geometry_msgs.msg.TransformStamped()
      if self.r_cv is None:
        self.r_cv = geometry_msgs.msg.TransformStamped()
      if self.w_cm is None:
        self.w_cm = geometry_msgs.msg.TransformStamped()
    else:
      self.cm_l = geometry_msgs.msg.TransformStamped()
      self.l_cv = geometry_msgs.msg.TransformStamped()
      self.cm_r = geometry_msgs.msg.TransformStamped()
      self.r_cv = geometry_msgs.msg.TransformStamped()
      self.w_cm = geometry_msgs.msg.TransformStamped()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.cm_l.header.seq, _x.cm_l.header.stamp.secs, _x.cm_l.header.stamp.nsecs))
      _x = self.cm_l.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.cm_l.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d3I.pack(_x.cm_l.transform.translation.x, _x.cm_l.transform.translation.y, _x.cm_l.transform.translation.z, _x.cm_l.transform.rotation.x, _x.cm_l.transform.rotation.y, _x.cm_l.transform.rotation.z, _x.cm_l.transform.rotation.w, _x.l_cv.header.seq, _x.l_cv.header.stamp.secs, _x.l_cv.header.stamp.nsecs))
      _x = self.l_cv.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.l_cv.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d3I.pack(_x.l_cv.transform.translation.x, _x.l_cv.transform.translation.y, _x.l_cv.transform.translation.z, _x.l_cv.transform.rotation.x, _x.l_cv.transform.rotation.y, _x.l_cv.transform.rotation.z, _x.l_cv.transform.rotation.w, _x.cm_r.header.seq, _x.cm_r.header.stamp.secs, _x.cm_r.header.stamp.nsecs))
      _x = self.cm_r.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.cm_r.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d3I.pack(_x.cm_r.transform.translation.x, _x.cm_r.transform.translation.y, _x.cm_r.transform.translation.z, _x.cm_r.transform.rotation.x, _x.cm_r.transform.rotation.y, _x.cm_r.transform.rotation.z, _x.cm_r.transform.rotation.w, _x.r_cv.header.seq, _x.r_cv.header.stamp.secs, _x.r_cv.header.stamp.nsecs))
      _x = self.r_cv.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.r_cv.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d3I.pack(_x.r_cv.transform.translation.x, _x.r_cv.transform.translation.y, _x.r_cv.transform.translation.z, _x.r_cv.transform.rotation.x, _x.r_cv.transform.rotation.y, _x.r_cv.transform.rotation.z, _x.r_cv.transform.rotation.w, _x.w_cm.header.seq, _x.w_cm.header.stamp.secs, _x.w_cm.header.stamp.nsecs))
      _x = self.w_cm.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.w_cm.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d.pack(_x.w_cm.transform.translation.x, _x.w_cm.transform.translation.y, _x.w_cm.transform.translation.z, _x.w_cm.transform.rotation.x, _x.w_cm.transform.rotation.y, _x.w_cm.transform.rotation.z, _x.w_cm.transform.rotation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.cm_l is None:
        self.cm_l = geometry_msgs.msg.TransformStamped()
      if self.l_cv is None:
        self.l_cv = geometry_msgs.msg.TransformStamped()
      if self.cm_r is None:
        self.cm_r = geometry_msgs.msg.TransformStamped()
      if self.r_cv is None:
        self.r_cv = geometry_msgs.msg.TransformStamped()
      if self.w_cm is None:
        self.w_cm = geometry_msgs.msg.TransformStamped()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.cm_l.header.seq, _x.cm_l.header.stamp.secs, _x.cm_l.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.cm_l.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.cm_l.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.cm_l.child_frame_id = str[start:end].decode('utf-8')
      else:
        self.cm_l.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.cm_l.transform.translation.x, _x.cm_l.transform.translation.y, _x.cm_l.transform.translation.z, _x.cm_l.transform.rotation.x, _x.cm_l.transform.rotation.y, _x.cm_l.transform.rotation.z, _x.cm_l.transform.rotation.w, _x.l_cv.header.seq, _x.l_cv.header.stamp.secs, _x.l_cv.header.stamp.nsecs,) = _struct_7d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.l_cv.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.l_cv.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.l_cv.child_frame_id = str[start:end].decode('utf-8')
      else:
        self.l_cv.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.l_cv.transform.translation.x, _x.l_cv.transform.translation.y, _x.l_cv.transform.translation.z, _x.l_cv.transform.rotation.x, _x.l_cv.transform.rotation.y, _x.l_cv.transform.rotation.z, _x.l_cv.transform.rotation.w, _x.cm_r.header.seq, _x.cm_r.header.stamp.secs, _x.cm_r.header.stamp.nsecs,) = _struct_7d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.cm_r.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.cm_r.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.cm_r.child_frame_id = str[start:end].decode('utf-8')
      else:
        self.cm_r.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.cm_r.transform.translation.x, _x.cm_r.transform.translation.y, _x.cm_r.transform.translation.z, _x.cm_r.transform.rotation.x, _x.cm_r.transform.rotation.y, _x.cm_r.transform.rotation.z, _x.cm_r.transform.rotation.w, _x.r_cv.header.seq, _x.r_cv.header.stamp.secs, _x.r_cv.header.stamp.nsecs,) = _struct_7d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.r_cv.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.r_cv.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.r_cv.child_frame_id = str[start:end].decode('utf-8')
      else:
        self.r_cv.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.r_cv.transform.translation.x, _x.r_cv.transform.translation.y, _x.r_cv.transform.translation.z, _x.r_cv.transform.rotation.x, _x.r_cv.transform.rotation.y, _x.r_cv.transform.rotation.z, _x.r_cv.transform.rotation.w, _x.w_cm.header.seq, _x.w_cm.header.stamp.secs, _x.w_cm.header.stamp.nsecs,) = _struct_7d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.w_cm.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.w_cm.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.w_cm.child_frame_id = str[start:end].decode('utf-8')
      else:
        self.w_cm.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.w_cm.transform.translation.x, _x.w_cm.transform.translation.y, _x.w_cm.transform.translation.z, _x.w_cm.transform.rotation.x, _x.w_cm.transform.rotation.y, _x.w_cm.transform.rotation.z, _x.w_cm.transform.rotation.w,) = _struct_7d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_struct_3I.pack(_x.cm_l.header.seq, _x.cm_l.header.stamp.secs, _x.cm_l.header.stamp.nsecs))
      _x = self.cm_l.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.cm_l.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d3I.pack(_x.cm_l.transform.translation.x, _x.cm_l.transform.translation.y, _x.cm_l.transform.translation.z, _x.cm_l.transform.rotation.x, _x.cm_l.transform.rotation.y, _x.cm_l.transform.rotation.z, _x.cm_l.transform.rotation.w, _x.l_cv.header.seq, _x.l_cv.header.stamp.secs, _x.l_cv.header.stamp.nsecs))
      _x = self.l_cv.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.l_cv.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d3I.pack(_x.l_cv.transform.translation.x, _x.l_cv.transform.translation.y, _x.l_cv.transform.translation.z, _x.l_cv.transform.rotation.x, _x.l_cv.transform.rotation.y, _x.l_cv.transform.rotation.z, _x.l_cv.transform.rotation.w, _x.cm_r.header.seq, _x.cm_r.header.stamp.secs, _x.cm_r.header.stamp.nsecs))
      _x = self.cm_r.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.cm_r.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d3I.pack(_x.cm_r.transform.translation.x, _x.cm_r.transform.translation.y, _x.cm_r.transform.translation.z, _x.cm_r.transform.rotation.x, _x.cm_r.transform.rotation.y, _x.cm_r.transform.rotation.z, _x.cm_r.transform.rotation.w, _x.r_cv.header.seq, _x.r_cv.header.stamp.secs, _x.r_cv.header.stamp.nsecs))
      _x = self.r_cv.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.r_cv.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d3I.pack(_x.r_cv.transform.translation.x, _x.r_cv.transform.translation.y, _x.r_cv.transform.translation.z, _x.r_cv.transform.rotation.x, _x.r_cv.transform.rotation.y, _x.r_cv.transform.rotation.z, _x.r_cv.transform.rotation.w, _x.w_cm.header.seq, _x.w_cm.header.stamp.secs, _x.w_cm.header.stamp.nsecs))
      _x = self.w_cm.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.w_cm.child_frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_7d.pack(_x.w_cm.transform.translation.x, _x.w_cm.transform.translation.y, _x.w_cm.transform.translation.z, _x.w_cm.transform.rotation.x, _x.w_cm.transform.rotation.y, _x.w_cm.transform.rotation.z, _x.w_cm.transform.rotation.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.cm_l is None:
        self.cm_l = geometry_msgs.msg.TransformStamped()
      if self.l_cv is None:
        self.l_cv = geometry_msgs.msg.TransformStamped()
      if self.cm_r is None:
        self.cm_r = geometry_msgs.msg.TransformStamped()
      if self.r_cv is None:
        self.r_cv = geometry_msgs.msg.TransformStamped()
      if self.w_cm is None:
        self.w_cm = geometry_msgs.msg.TransformStamped()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.cm_l.header.seq, _x.cm_l.header.stamp.secs, _x.cm_l.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.cm_l.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.cm_l.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.cm_l.child_frame_id = str[start:end].decode('utf-8')
      else:
        self.cm_l.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.cm_l.transform.translation.x, _x.cm_l.transform.translation.y, _x.cm_l.transform.translation.z, _x.cm_l.transform.rotation.x, _x.cm_l.transform.rotation.y, _x.cm_l.transform.rotation.z, _x.cm_l.transform.rotation.w, _x.l_cv.header.seq, _x.l_cv.header.stamp.secs, _x.l_cv.header.stamp.nsecs,) = _struct_7d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.l_cv.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.l_cv.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.l_cv.child_frame_id = str[start:end].decode('utf-8')
      else:
        self.l_cv.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.l_cv.transform.translation.x, _x.l_cv.transform.translation.y, _x.l_cv.transform.translation.z, _x.l_cv.transform.rotation.x, _x.l_cv.transform.rotation.y, _x.l_cv.transform.rotation.z, _x.l_cv.transform.rotation.w, _x.cm_r.header.seq, _x.cm_r.header.stamp.secs, _x.cm_r.header.stamp.nsecs,) = _struct_7d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.cm_r.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.cm_r.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.cm_r.child_frame_id = str[start:end].decode('utf-8')
      else:
        self.cm_r.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.cm_r.transform.translation.x, _x.cm_r.transform.translation.y, _x.cm_r.transform.translation.z, _x.cm_r.transform.rotation.x, _x.cm_r.transform.rotation.y, _x.cm_r.transform.rotation.z, _x.cm_r.transform.rotation.w, _x.r_cv.header.seq, _x.r_cv.header.stamp.secs, _x.r_cv.header.stamp.nsecs,) = _struct_7d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.r_cv.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.r_cv.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.r_cv.child_frame_id = str[start:end].decode('utf-8')
      else:
        self.r_cv.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 68
      (_x.r_cv.transform.translation.x, _x.r_cv.transform.translation.y, _x.r_cv.transform.translation.z, _x.r_cv.transform.rotation.x, _x.r_cv.transform.rotation.y, _x.r_cv.transform.rotation.z, _x.r_cv.transform.rotation.w, _x.w_cm.header.seq, _x.w_cm.header.stamp.secs, _x.w_cm.header.stamp.nsecs,) = _struct_7d3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.w_cm.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.w_cm.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.w_cm.child_frame_id = str[start:end].decode('utf-8')
      else:
        self.w_cm.child_frame_id = str[start:end]
      _x = self
      start = end
      end += 56
      (_x.w_cm.transform.translation.x, _x.w_cm.transform.translation.y, _x.w_cm.transform.translation.z, _x.w_cm.transform.rotation.x, _x.w_cm.transform.rotation.y, _x.w_cm.transform.rotation.z, _x.w_cm.transform.rotation.w,) = _struct_7d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_7d = struct.Struct("<7d")
_struct_7d3I = struct.Struct("<7d3I")