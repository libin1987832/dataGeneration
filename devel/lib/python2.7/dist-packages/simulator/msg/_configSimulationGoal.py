# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from simulator/configSimulationGoal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class configSimulationGoal(genpy.Message):
  _md5sum = "837740a48de6bf8ef577fd1fdc89c7f9"
  _type = "simulator/configSimulationGoal"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
std_msgs/String world_name
std_msgs/Bool new_world
std_msgs/String path_name
std_msgs/Bool new_path
std_msgs/String unique_id
std_msgs/String original_id
std_msgs/String ideal_id
std_msgs/String noisy_id
std_msgs/Bool new_camera
std_msgs/Bool visualize
std_msgs/Bool generate_graph

================================================================================
MSG: std_msgs/String
string data

================================================================================
MSG: std_msgs/Bool
bool data"""
  __slots__ = ['world_name','new_world','path_name','new_path','unique_id','original_id','ideal_id','noisy_id','new_camera','visualize','generate_graph']
  _slot_types = ['std_msgs/String','std_msgs/Bool','std_msgs/String','std_msgs/Bool','std_msgs/String','std_msgs/String','std_msgs/String','std_msgs/String','std_msgs/Bool','std_msgs/Bool','std_msgs/Bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       world_name,new_world,path_name,new_path,unique_id,original_id,ideal_id,noisy_id,new_camera,visualize,generate_graph

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(configSimulationGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.world_name is None:
        self.world_name = std_msgs.msg.String()
      if self.new_world is None:
        self.new_world = std_msgs.msg.Bool()
      if self.path_name is None:
        self.path_name = std_msgs.msg.String()
      if self.new_path is None:
        self.new_path = std_msgs.msg.Bool()
      if self.unique_id is None:
        self.unique_id = std_msgs.msg.String()
      if self.original_id is None:
        self.original_id = std_msgs.msg.String()
      if self.ideal_id is None:
        self.ideal_id = std_msgs.msg.String()
      if self.noisy_id is None:
        self.noisy_id = std_msgs.msg.String()
      if self.new_camera is None:
        self.new_camera = std_msgs.msg.Bool()
      if self.visualize is None:
        self.visualize = std_msgs.msg.Bool()
      if self.generate_graph is None:
        self.generate_graph = std_msgs.msg.Bool()
    else:
      self.world_name = std_msgs.msg.String()
      self.new_world = std_msgs.msg.Bool()
      self.path_name = std_msgs.msg.String()
      self.new_path = std_msgs.msg.Bool()
      self.unique_id = std_msgs.msg.String()
      self.original_id = std_msgs.msg.String()
      self.ideal_id = std_msgs.msg.String()
      self.noisy_id = std_msgs.msg.String()
      self.new_camera = std_msgs.msg.Bool()
      self.visualize = std_msgs.msg.Bool()
      self.generate_graph = std_msgs.msg.Bool()

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
      _x = self.world_name.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_B.pack(self.new_world.data))
      _x = self.path_name.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_B.pack(self.new_path.data))
      _x = self.unique_id.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.original_id.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.ideal_id.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.noisy_id.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3B.pack(_x.new_camera.data, _x.visualize.data, _x.generate_graph.data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.world_name is None:
        self.world_name = std_msgs.msg.String()
      if self.new_world is None:
        self.new_world = std_msgs.msg.Bool()
      if self.path_name is None:
        self.path_name = std_msgs.msg.String()
      if self.new_path is None:
        self.new_path = std_msgs.msg.Bool()
      if self.unique_id is None:
        self.unique_id = std_msgs.msg.String()
      if self.original_id is None:
        self.original_id = std_msgs.msg.String()
      if self.ideal_id is None:
        self.ideal_id = std_msgs.msg.String()
      if self.noisy_id is None:
        self.noisy_id = std_msgs.msg.String()
      if self.new_camera is None:
        self.new_camera = std_msgs.msg.Bool()
      if self.visualize is None:
        self.visualize = std_msgs.msg.Bool()
      if self.generate_graph is None:
        self.generate_graph = std_msgs.msg.Bool()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.world_name.data = str[start:end].decode('utf-8')
      else:
        self.world_name.data = str[start:end]
      start = end
      end += 1
      (self.new_world.data,) = _struct_B.unpack(str[start:end])
      self.new_world.data = bool(self.new_world.data)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.path_name.data = str[start:end].decode('utf-8')
      else:
        self.path_name.data = str[start:end]
      start = end
      end += 1
      (self.new_path.data,) = _struct_B.unpack(str[start:end])
      self.new_path.data = bool(self.new_path.data)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.unique_id.data = str[start:end].decode('utf-8')
      else:
        self.unique_id.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.original_id.data = str[start:end].decode('utf-8')
      else:
        self.original_id.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ideal_id.data = str[start:end].decode('utf-8')
      else:
        self.ideal_id.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.noisy_id.data = str[start:end].decode('utf-8')
      else:
        self.noisy_id.data = str[start:end]
      _x = self
      start = end
      end += 3
      (_x.new_camera.data, _x.visualize.data, _x.generate_graph.data,) = _struct_3B.unpack(str[start:end])
      self.new_camera.data = bool(self.new_camera.data)
      self.visualize.data = bool(self.visualize.data)
      self.generate_graph.data = bool(self.generate_graph.data)
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
      _x = self.world_name.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_B.pack(self.new_world.data))
      _x = self.path_name.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_struct_B.pack(self.new_path.data))
      _x = self.unique_id.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.original_id.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.ideal_id.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.noisy_id.data
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      if python3:
        buff.write(struct.pack('<I%sB'%length, length, *_x))
      else:
        buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3B.pack(_x.new_camera.data, _x.visualize.data, _x.generate_graph.data))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.world_name is None:
        self.world_name = std_msgs.msg.String()
      if self.new_world is None:
        self.new_world = std_msgs.msg.Bool()
      if self.path_name is None:
        self.path_name = std_msgs.msg.String()
      if self.new_path is None:
        self.new_path = std_msgs.msg.Bool()
      if self.unique_id is None:
        self.unique_id = std_msgs.msg.String()
      if self.original_id is None:
        self.original_id = std_msgs.msg.String()
      if self.ideal_id is None:
        self.ideal_id = std_msgs.msg.String()
      if self.noisy_id is None:
        self.noisy_id = std_msgs.msg.String()
      if self.new_camera is None:
        self.new_camera = std_msgs.msg.Bool()
      if self.visualize is None:
        self.visualize = std_msgs.msg.Bool()
      if self.generate_graph is None:
        self.generate_graph = std_msgs.msg.Bool()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.world_name.data = str[start:end].decode('utf-8')
      else:
        self.world_name.data = str[start:end]
      start = end
      end += 1
      (self.new_world.data,) = _struct_B.unpack(str[start:end])
      self.new_world.data = bool(self.new_world.data)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.path_name.data = str[start:end].decode('utf-8')
      else:
        self.path_name.data = str[start:end]
      start = end
      end += 1
      (self.new_path.data,) = _struct_B.unpack(str[start:end])
      self.new_path.data = bool(self.new_path.data)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.unique_id.data = str[start:end].decode('utf-8')
      else:
        self.unique_id.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.original_id.data = str[start:end].decode('utf-8')
      else:
        self.original_id.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ideal_id.data = str[start:end].decode('utf-8')
      else:
        self.ideal_id.data = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.noisy_id.data = str[start:end].decode('utf-8')
      else:
        self.noisy_id.data = str[start:end]
      _x = self
      start = end
      end += 3
      (_x.new_camera.data, _x.visualize.data, _x.generate_graph.data,) = _struct_3B.unpack(str[start:end])
      self.new_camera.data = bool(self.new_camera.data)
      self.visualize.data = bool(self.visualize.data)
      self.generate_graph.data = bool(self.generate_graph.data)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3B = struct.Struct("<3B")
_struct_B = struct.Struct("<B")
