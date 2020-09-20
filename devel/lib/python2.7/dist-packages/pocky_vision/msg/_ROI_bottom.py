# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pocky_vision/ROI_bottom.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ROI_bottom(genpy.Message):
  _md5sum = "a26b9311496d0733040a34bd19d4492d"
  _type = "pocky_vision/ROI_bottom"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string bottom_box
float64 bottom_CenterX
float64 bottom_CenterY
float64 bottom_Angle
"""
  __slots__ = ['bottom_box','bottom_CenterX','bottom_CenterY','bottom_Angle']
  _slot_types = ['string','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       bottom_box,bottom_CenterX,bottom_CenterY,bottom_Angle

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ROI_bottom, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.bottom_box is None:
        self.bottom_box = ''
      if self.bottom_CenterX is None:
        self.bottom_CenterX = 0.
      if self.bottom_CenterY is None:
        self.bottom_CenterY = 0.
      if self.bottom_Angle is None:
        self.bottom_Angle = 0.
    else:
      self.bottom_box = ''
      self.bottom_CenterX = 0.
      self.bottom_CenterY = 0.
      self.bottom_Angle = 0.

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
      _x = self.bottom_box
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d().pack(_x.bottom_CenterX, _x.bottom_CenterY, _x.bottom_Angle))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.bottom_box = str[start:end].decode('utf-8')
      else:
        self.bottom_box = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.bottom_CenterX, _x.bottom_CenterY, _x.bottom_Angle,) = _get_struct_3d().unpack(str[start:end])
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
      _x = self.bottom_box
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_3d().pack(_x.bottom_CenterX, _x.bottom_CenterY, _x.bottom_Angle))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.bottom_box = str[start:end].decode('utf-8')
      else:
        self.bottom_box = str[start:end]
      _x = self
      start = end
      end += 24
      (_x.bottom_CenterX, _x.bottom_CenterY, _x.bottom_Angle,) = _get_struct_3d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d