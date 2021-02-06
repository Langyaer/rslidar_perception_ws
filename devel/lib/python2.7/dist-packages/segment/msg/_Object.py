# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from segment/Object.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import segment.msg

class Object(genpy.Message):
  _md5sum = "cc1c62817e5c1f9abba5f583e5d62982"
  _type = "segment/Object"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """int32  id
Center center
float32 width
float32 height
float32 depth
float32 speedx
float32 speedy
float32 k
Rotate  rotate
================================================================================
MSG: segment/Center
float32[3] pos
================================================================================
MSG: segment/Rotate
float32 x
float32 y
float32 z
float32 w"""
  __slots__ = ['id','center','width','height','depth','speedx','speedy','k','rotate']
  _slot_types = ['int32','segment/Center','float32','float32','float32','float32','float32','float32','segment/Rotate']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,center,width,height,depth,speedx,speedy,k,rotate

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Object, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.center is None:
        self.center = segment.msg.Center()
      if self.width is None:
        self.width = 0.
      if self.height is None:
        self.height = 0.
      if self.depth is None:
        self.depth = 0.
      if self.speedx is None:
        self.speedx = 0.
      if self.speedy is None:
        self.speedy = 0.
      if self.k is None:
        self.k = 0.
      if self.rotate is None:
        self.rotate = segment.msg.Rotate()
    else:
      self.id = 0
      self.center = segment.msg.Center()
      self.width = 0.
      self.height = 0.
      self.depth = 0.
      self.speedx = 0.
      self.speedy = 0.
      self.k = 0.
      self.rotate = segment.msg.Rotate()

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
      _x = self.id
      buff.write(_get_struct_i().pack(_x))
      buff.write(_get_struct_3f().pack(*self.center.pos))
      _x = self
      buff.write(_get_struct_10f().pack(_x.width, _x.height, _x.depth, _x.speedx, _x.speedy, _x.k, _x.rotate.x, _x.rotate.y, _x.rotate.z, _x.rotate.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.center is None:
        self.center = segment.msg.Center()
      if self.rotate is None:
        self.rotate = segment.msg.Rotate()
      end = 0
      start = end
      end += 4
      (self.id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 12
      self.center.pos = _get_struct_3f().unpack(str[start:end])
      _x = self
      start = end
      end += 40
      (_x.width, _x.height, _x.depth, _x.speedx, _x.speedy, _x.k, _x.rotate.x, _x.rotate.y, _x.rotate.z, _x.rotate.w,) = _get_struct_10f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.id
      buff.write(_get_struct_i().pack(_x))
      buff.write(self.center.pos.tostring())
      _x = self
      buff.write(_get_struct_10f().pack(_x.width, _x.height, _x.depth, _x.speedx, _x.speedy, _x.k, _x.rotate.x, _x.rotate.y, _x.rotate.z, _x.rotate.w))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.center is None:
        self.center = segment.msg.Center()
      if self.rotate is None:
        self.rotate = segment.msg.Rotate()
      end = 0
      start = end
      end += 4
      (self.id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 12
      self.center.pos = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=3)
      _x = self
      start = end
      end += 40
      (_x.width, _x.height, _x.depth, _x.speedx, _x.speedy, _x.k, _x.rotate.x, _x.rotate.y, _x.rotate.z, _x.rotate.w,) = _get_struct_10f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_10f = None
def _get_struct_10f():
    global _struct_10f
    if _struct_10f is None:
        _struct_10f = struct.Struct("<10f")
    return _struct_10f
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
