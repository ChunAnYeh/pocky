// Auto-generated. Do not edit!

// (in-package pocky_vision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ROI_bottom = require('./ROI_bottom.js');

//-----------------------------------------------------------

class ROI_array_bottom {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ROI_bottom_list = null;
    }
    else {
      if (initObj.hasOwnProperty('ROI_bottom_list')) {
        this.ROI_bottom_list = initObj.ROI_bottom_list
      }
      else {
        this.ROI_bottom_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ROI_array_bottom
    // Serialize message field [ROI_bottom_list]
    // Serialize the length for message field [ROI_bottom_list]
    bufferOffset = _serializer.uint32(obj.ROI_bottom_list.length, buffer, bufferOffset);
    obj.ROI_bottom_list.forEach((val) => {
      bufferOffset = ROI_bottom.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ROI_array_bottom
    let len;
    let data = new ROI_array_bottom(null);
    // Deserialize message field [ROI_bottom_list]
    // Deserialize array length for message field [ROI_bottom_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ROI_bottom_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ROI_bottom_list[i] = ROI_bottom.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.ROI_bottom_list.forEach((val) => {
      length += ROI_bottom.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pocky_vision/ROI_array_bottom';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc30c6d1057454a4c58d21103c2cea31';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ROI_bottom[] ROI_bottom_list
    
    ================================================================================
    MSG: pocky_vision/ROI_bottom
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
    const resolved = new ROI_array_bottom(null);
    if (msg.ROI_bottom_list !== undefined) {
      resolved.ROI_bottom_list = new Array(msg.ROI_bottom_list.length);
      for (let i = 0; i < resolved.ROI_bottom_list.length; ++i) {
        resolved.ROI_bottom_list[i] = ROI_bottom.Resolve(msg.ROI_bottom_list[i]);
      }
    }
    else {
      resolved.ROI_bottom_list = []
    }

    return resolved;
    }
};

module.exports = ROI_array_bottom;
