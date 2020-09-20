// Auto-generated. Do not edit!

// (in-package pocky_vision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ROI_bottom {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.bottom_box = null;
      this.bottom_CenterX = null;
      this.bottom_CenterY = null;
      this.bottom_Angle = null;
    }
    else {
      if (initObj.hasOwnProperty('bottom_box')) {
        this.bottom_box = initObj.bottom_box
      }
      else {
        this.bottom_box = '';
      }
      if (initObj.hasOwnProperty('bottom_CenterX')) {
        this.bottom_CenterX = initObj.bottom_CenterX
      }
      else {
        this.bottom_CenterX = 0.0;
      }
      if (initObj.hasOwnProperty('bottom_CenterY')) {
        this.bottom_CenterY = initObj.bottom_CenterY
      }
      else {
        this.bottom_CenterY = 0.0;
      }
      if (initObj.hasOwnProperty('bottom_Angle')) {
        this.bottom_Angle = initObj.bottom_Angle
      }
      else {
        this.bottom_Angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ROI_bottom
    // Serialize message field [bottom_box]
    bufferOffset = _serializer.string(obj.bottom_box, buffer, bufferOffset);
    // Serialize message field [bottom_CenterX]
    bufferOffset = _serializer.float64(obj.bottom_CenterX, buffer, bufferOffset);
    // Serialize message field [bottom_CenterY]
    bufferOffset = _serializer.float64(obj.bottom_CenterY, buffer, bufferOffset);
    // Serialize message field [bottom_Angle]
    bufferOffset = _serializer.float64(obj.bottom_Angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ROI_bottom
    let len;
    let data = new ROI_bottom(null);
    // Deserialize message field [bottom_box]
    data.bottom_box = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [bottom_CenterX]
    data.bottom_CenterX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bottom_CenterY]
    data.bottom_CenterY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [bottom_Angle]
    data.bottom_Angle = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.bottom_box.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pocky_vision/ROI_bottom';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a26b9311496d0733040a34bd19d4492d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string bottom_box
    float64 bottom_CenterX
    float64 bottom_CenterY
    float64 bottom_Angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ROI_bottom(null);
    if (msg.bottom_box !== undefined) {
      resolved.bottom_box = msg.bottom_box;
    }
    else {
      resolved.bottom_box = ''
    }

    if (msg.bottom_CenterX !== undefined) {
      resolved.bottom_CenterX = msg.bottom_CenterX;
    }
    else {
      resolved.bottom_CenterX = 0.0
    }

    if (msg.bottom_CenterY !== undefined) {
      resolved.bottom_CenterY = msg.bottom_CenterY;
    }
    else {
      resolved.bottom_CenterY = 0.0
    }

    if (msg.bottom_Angle !== undefined) {
      resolved.bottom_Angle = msg.bottom_Angle;
    }
    else {
      resolved.bottom_Angle = 0.0
    }

    return resolved;
    }
};

module.exports = ROI_bottom;
