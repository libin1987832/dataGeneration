# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from shared_files/PointSet.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import shared_files.msg
import geometry_msgs.msg
import std_msgs.msg

class PointSet(genpy.Message):
  _md5sum = "aa23bf05643854c46bff8fb19ae1450c"
  _type = "shared_files/PointSet"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """shared_files/PointEstimate RectifiedPoint
shared_files/PointEstimate NoisyPoint
std_msgs/Int32 PointID

================================================================================
MSG: shared_files/PointEstimate
geometry_msgs/Point32 Estimate
std_msgs/Float32[] CovRowOne
std_msgs/Float32[] CovRowTwo
std_msgs/Float32[] CovRowThree

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: std_msgs/Int32
int32 data"""
  __slots__ = ['RectifiedPoint','NoisyPoint','PointID']
  _slot_types = ['shared_files/PointEstimate','shared_files/PointEstimate','std_msgs/Int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       RectifiedPoint,NoisyPoint,PointID

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PointSet, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.RectifiedPoint is None:
        self.RectifiedPoint = shared_files.msg.PointEstimate()
      if self.NoisyPoint is None:
        self.NoisyPoint = shared_files.msg.PointEstimate()
      if self.PointID is None:
        self.PointID = std_msgs.msg.Int32()
    else:
      self.RectifiedPoint = shared_files.msg.PointEstimate()
      self.NoisyPoint = shared_files.msg.PointEstimate()
      self.PointID = std_msgs.msg.Int32()

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
      buff.write(_struct_3f.pack(_x.RectifiedPoint.Estimate.x, _x.RectifiedPoint.Estimate.y, _x.RectifiedPoint.Estimate.z))
      length = len(self.RectifiedPoint.CovRowOne)
      buff.write(_struct_I.pack(length))
      for val1 in self.RectifiedPoint.CovRowOne:
        buff.write(_struct_f.pack(val1.data))
      length = len(self.RectifiedPoint.CovRowTwo)
      buff.write(_struct_I.pack(length))
      for val1 in self.RectifiedPoint.CovRowTwo:
        buff.write(_struct_f.pack(val1.data))
      length = len(self.RectifiedPoint.CovRowThree)
      buff.write(_struct_I.pack(length))
      for val1 in self.RectifiedPoint.CovRowThree:
        buff.write(_struct_f.pack(val1.data))
      _x = self
      buff.write(_struct_3f.pack(_x.NoisyPoint.Estimate.x, _x.NoisyPoint.Estimate.y, _x.NoisyPoint.Estimate.z))
      length = len(self.NoisyPoint.CovRowOne)
      buff.write(_struct_I.pack(length))
      for val1 in self.NoisyPoint.CovRowOne:
        buff.write(_struct_f.pack(val1.data))
      length = len(self.NoisyPoint.CovRowTwo)
      buff.write(_struct_I.pack(length))
      for val1 in self.NoisyPoint.CovRowTwo:
        buff.write(_struct_f.pack(val1.data))
      length = len(self.NoisyPoint.CovRowThree)
      buff.write(_struct_I.pack(length))
      for val1 in self.NoisyPoint.CovRowThree:
        buff.write(_struct_f.pack(val1.data))
      buff.write(_struct_i.pack(self.PointID.data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.RectifiedPoint is None:
        self.RectifiedPoint = shared_files.msg.PointEstimate()
      if self.NoisyPoint is None:
        self.NoisyPoint = shared_files.msg.PointEstimate()
      if self.PointID is None:
        self.PointID = std_msgs.msg.Int32()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.RectifiedPoint.Estimate.x, _x.RectifiedPoint.Estimate.y, _x.RectifiedPoint.Estimate.z,) = _struct_3f.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.RectifiedPoint.CovRowOne = []
      for i in range(0, length):
        val1 = std_msgs.msg.Float32()
        start = end
        end += 4
        (val1.data,) = _struct_f.unpack(str[start:end])
        self.RectifiedPoint.CovRowOne.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.RectifiedPoint.CovRowTwo = []
      for i in range(0, length):
        val1 = std_msgs.msg.Float32()
        start = end
        end += 4
        (val1.data,) = _struct_f.unpack(str[start:end])
        self.RectifiedPoint.CovRowTwo.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.RectifiedPoint.CovRowThree = []
      for i in range(0, length):
        val1 = std_msgs.msg.Float32()
        start = end
        end += 4
        (val1.data,) = _struct_f.unpack(str[start:end])
        self.RectifiedPoint.CovRowThree.append(val1)
      _x = self
      start = end
      end += 12
      (_x.NoisyPoint.Estimate.x, _x.NoisyPoint.Estimate.y, _x.NoisyPoint.Estimate.z,) = _struct_3f.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.NoisyPoint.CovRowOne = []
      for i in range(0, length):
        val1 = std_msgs.msg.Float32()
        start = end
        end += 4
        (val1.data,) = _struct_f.unpack(str[start:end])
        self.NoisyPoint.CovRowOne.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.NoisyPoint.CovRowTwo = []
      for i in range(0, length):
        val1 = std_msgs.msg.Float32()
        start = end
        end += 4
        (val1.data,) = _struct_f.unpack(str[start:end])
        self.NoisyPoint.CovRowTwo.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.NoisyPoint.CovRowThree = []
      for i in range(0, length):
        val1 = std_msgs.msg.Float32()
        start = end
        end += 4
        (val1.data,) = _struct_f.unpack(str[start:end])
        self.NoisyPoint.CovRowThree.append(val1)
      start = end
      end += 4
      (self.PointID.data,) = _struct_i.unpack(str[start:end])
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
      buff.write(_struct_3f.pack(_x.RectifiedPoint.Estimate.x, _x.RectifiedPoint.Estimate.y, _x.RectifiedPoint.Estimate.z))
      length = len(self.RectifiedPoint.CovRowOne)
      buff.write(_struct_I.pack(length))
      for val1 in self.RectifiedPoint.CovRowOne:
        buff.write(_struct_f.pack(val1.data))
      length = len(self.RectifiedPoint.CovRowTwo)
      buff.write(_struct_I.pack(length))
      for val1 in self.RectifiedPoint.CovRowTwo:
        buff.write(_struct_f.pack(val1.data))
      length = len(self.RectifiedPoint.CovRowThree)
      buff.write(_struct_I.pack(length))
      for val1 in self.RectifiedPoint.CovRowThree:
        buff.write(_struct_f.pack(val1.data))
      _x = self
      buff.write(_struct_3f.pack(_x.NoisyPoint.Estimate.x, _x.NoisyPoint.Estimate.y, _x.NoisyPoint.Estimate.z))
      length = len(self.NoisyPoint.CovRowOne)
      buff.write(_struct_I.pack(length))
      for val1 in self.NoisyPoint.CovRowOne:
        buff.write(_struct_f.pack(val1.data))
      length = len(self.NoisyPoint.CovRowTwo)
      buff.write(_struct_I.pack(length))
      for val1 in self.NoisyPoint.CovRowTwo:
        buff.write(_struct_f.pack(val1.data))
      length = len(self.NoisyPoint.CovRowThree)
      buff.write(_struct_I.pack(length))
      for val1 in self.NoisyPoint.CovRowThree:
        buff.write(_struct_f.pack(val1.data))
      buff.write(_struct_i.pack(self.PointID.data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.RectifiedPoint is None:
        self.RectifiedPoint = shared_files.msg.PointEstimate()
      if self.NoisyPoint is None:
        self.NoisyPoint = shared_files.msg.PointEstimate()
      if self.PointID is None:
        self.PointID = std_msgs.msg.Int32()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.RectifiedPoint.Estimate.x, _x.RectifiedPoint.Estimate.y, _x.RectifiedPoint.Estimate.z,) = _struct_3f.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.RectifiedPoint.CovRowOne = []
      for i in range(0, length):
        val1 = std_msgs.msg.Float32()
        start = end
        end += 4
        (val1.data,) = _struct_f.unpack(str[start:end])
        self.RectifiedPoint.CovRowOne.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.RectifiedPoint.CovRowTwo = []
      for i in range(0, length):
        val1 = std_msgs.msg.Float32()
        start = end
        end += 4
        (val1.data,) = _struct_f.unpack(str[start:end])
        self.RectifiedPoint.CovRowTwo.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.RectifiedPoint.CovRowThree = []
      for i in range(0, length):
        val1 = std_msgs.msg.Float32()
        start = end
        end += 4
        (val1.data,) = _struct_f.unpack(str[start:end])
        self.RectifiedPoint.CovRowThree.append(val1)
      _x = self
      start = end
      end += 12
      (_x.NoisyPoint.Estimate.x, _x.NoisyPoint.Estimate.y, _x.NoisyPoint.Estimate.z,) = _struct_3f.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.NoisyPoint.CovRowOne = []
      for i in range(0, length):
        val1 = std_msgs.msg.Float32()
        start = end
        end += 4
        (val1.data,) = _struct_f.unpack(str[start:end])
        self.NoisyPoint.CovRowOne.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.NoisyPoint.CovRowTwo = []
      for i in range(0, length):
        val1 = std_msgs.msg.Float32()
        start = end
        end += 4
        (val1.data,) = _struct_f.unpack(str[start:end])
        self.NoisyPoint.CovRowTwo.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.NoisyPoint.CovRowThree = []
      for i in range(0, length):
        val1 = std_msgs.msg.Float32()
        start = end
        end += 4
        (val1.data,) = _struct_f.unpack(str[start:end])
        self.NoisyPoint.CovRowThree.append(val1)
      start = end
      end += 4
      (self.PointID.data,) = _struct_i.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_i = struct.Struct("<i")
_struct_3f = struct.Struct("<3f")
_struct_f = struct.Struct("<f")
