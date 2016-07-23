# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from shared_files/MatchingPoints.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import shared_files.msg
import std_msgs.msg

class MatchingPoints(genpy.Message):
  _md5sum = "95d22b9d9588a72cd4ecca334b14e511"
  _type = "shared_files/MatchingPoints"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """shared_files/PixelMatch Rectified
shared_files/PixelMatch Noise
std_msgs/Int32 NumberID

================================================================================
MSG: shared_files/PixelMatch
std_msgs/Float32 u
std_msgs/Float32 v
std_msgs/Float32 Disparity

================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: std_msgs/Int32
int32 data"""
  __slots__ = ['Rectified','Noise','NumberID']
  _slot_types = ['shared_files/PixelMatch','shared_files/PixelMatch','std_msgs/Int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       Rectified,Noise,NumberID

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MatchingPoints, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.Rectified is None:
        self.Rectified = shared_files.msg.PixelMatch()
      if self.Noise is None:
        self.Noise = shared_files.msg.PixelMatch()
      if self.NumberID is None:
        self.NumberID = std_msgs.msg.Int32()
    else:
      self.Rectified = shared_files.msg.PixelMatch()
      self.Noise = shared_files.msg.PixelMatch()
      self.NumberID = std_msgs.msg.Int32()

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
      buff.write(_struct_6fi.pack(_x.Rectified.u.data, _x.Rectified.v.data, _x.Rectified.Disparity.data, _x.Noise.u.data, _x.Noise.v.data, _x.Noise.Disparity.data, _x.NumberID.data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.Rectified is None:
        self.Rectified = shared_files.msg.PixelMatch()
      if self.Noise is None:
        self.Noise = shared_files.msg.PixelMatch()
      if self.NumberID is None:
        self.NumberID = std_msgs.msg.Int32()
      end = 0
      _x = self
      start = end
      end += 28
      (_x.Rectified.u.data, _x.Rectified.v.data, _x.Rectified.Disparity.data, _x.Noise.u.data, _x.Noise.v.data, _x.Noise.Disparity.data, _x.NumberID.data,) = _struct_6fi.unpack(str[start:end])
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
      buff.write(_struct_6fi.pack(_x.Rectified.u.data, _x.Rectified.v.data, _x.Rectified.Disparity.data, _x.Noise.u.data, _x.Noise.v.data, _x.Noise.Disparity.data, _x.NumberID.data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.Rectified is None:
        self.Rectified = shared_files.msg.PixelMatch()
      if self.Noise is None:
        self.Noise = shared_files.msg.PixelMatch()
      if self.NumberID is None:
        self.NumberID = std_msgs.msg.Int32()
      end = 0
      _x = self
      start = end
      end += 28
      (_x.Rectified.u.data, _x.Rectified.v.data, _x.Rectified.Disparity.data, _x.Noise.u.data, _x.Noise.v.data, _x.Noise.Disparity.data, _x.NumberID.data,) = _struct_6fi.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_6fi = struct.Struct("<6fi")