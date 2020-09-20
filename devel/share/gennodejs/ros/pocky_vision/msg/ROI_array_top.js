// Auto-generated. Do not edit!

// (in-package pocky_vision.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ROI_top = require('./ROI_top.js');

//-----------------------------------------------------------

class ROI_array_top {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ROI_top_list = null;
    }
    else {
      if (initObj.hasOwnProperty('ROI_top_list')) {
        this.ROI_top_list = initObj.ROI_top_list
      }
      else {
        this.ROI_top_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ROI_array_top
    // Serialize message field [ROI_top_list]
    // Serialize the length for message field [ROI_top_list]
    bufferOffset = _serializer.uint32(obj.ROI_top_list.length, buffer, bufferOffset);
    obj.ROI_top_list.forEach((val) => {
      bufferOffset = ROI_top.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ROI_array_top
    let len;
    let data = new ROI_array_top(null);
    // Deserialize message field [ROI_top_list]
    // Deserialize array length for message field [ROI_top_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.ROI_top_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.ROI_top_list[i] = ROI_top.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.ROI_top_list.forEach((val) => {
      length += ROI_top.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'pocky_vision/ROI_array_top';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '355919cc8ce59f1f4229b0fb075cd563';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ROI_top[] ROI_top_list
    
    ================================================================================
    MSG: pocky_vision/ROI_top
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
    const resolved = new ROI_array_top(null);
    if (msg.ROI_top_list !== undefined) {
      resolved.ROI_top_list = new Array(msg.ROI_top_list.length);
      for (let i = 0; i < resolved.ROI_top_list.length; ++i) {
        resolved.ROI_top_list[i] = ROI_top.Resolve(msg.ROI_top_list[i]);
      }
    }
    else {
      resolved.ROI_top_list = []
    }

    return resolved;
    }
};

module.exports = ROI_array_top;
