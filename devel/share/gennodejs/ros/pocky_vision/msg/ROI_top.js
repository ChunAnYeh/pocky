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

class ROI_top {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.top_box = null;
      this.top_CenterX = null;
      this.top_CenterY = null;
      this.top_Angle = null;
    }
    else {
      if (initObj.hasOwnProperty('top_box')) {
        this.top_box = initObj.top_box
      }
      else {
        this.top_box = '';
      }
      if (initObj.hasOwnProperty('top_CenterX')) {
        this.top_CenterX = initObj.top_CenterX
      }
      else {
        this.top_CenterX = 0.0;
      }
      if (initObj.hasOwnProperty('top_CenterY')) {
        this.top_CenterY = initObj.top_CenterY
      }
      else {
        this.top_CenterY = 0.0;
      }
      if (initObj.hasOwnProperty('top_Angle')) {
        this.top_Angle = initObj.top_Angle
      }
      else {
        this.top_Angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ROI_top
    // Serialize message field [top_box]
    bufferOffset = _serializer.string(obj.top_box, buffer, bufferOffset);
    // Serialize message field [top_CenterX]
    bufferOffset = _serializer.float64(obj.top_CenterX, buffer, bufferOffset);
    // Serialize message field [top_CenterY]
    bufferOffset = _serializer.float64(obj.top_CenterY, buffer, bufferOffset);
    // Serialize message field [top_Angle]
    bufferOffset = _serializer.float64(obj.top_Angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ROI_top
    let len;
    let data = new ROI_top(null);
    // Deserialize message field [top_box]
    data.top_box = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [top_CenterX]
    data.top_CenterX = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [top_CenterY]
    data.top_CenterY = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [top_Angle]
    data.top_Angle = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.top_box.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pocky_vision/ROI_top';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3d377af5cd089c7785cff2ae8dcde5c3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string  top_box
    float64 top_CenterX
    float64 top_CenterY
    float64 top_Angle
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ROI_top(null);
    if (msg.top_box !== undefined) {
      resolved.top_box = msg.top_box;
    }
    else {
      resolved.top_box = ''
    }

    if (msg.top_CenterX !== undefined) {
      resolved.top_CenterX = msg.top_CenterX;
    }
    else {
      resolved.top_CenterX = 0.0
    }

    if (msg.top_CenterY !== undefined) {
      resolved.top_CenterY = msg.top_CenterY;
    }
    else {
      resolved.top_CenterY = 0.0
    }

    if (msg.top_Angle !== undefined) {
      resolved.top_Angle = msg.top_Angle;
    }
    else {
      resolved.top_Angle = 0.0
    }

    return resolved;
    }
};

module.exports = ROI_top;
