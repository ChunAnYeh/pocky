// Auto-generated. Do not edit!

// (in-package pocky_vision.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class pocky_dataRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.request_flag = null;
    }
    else {
      if (initObj.hasOwnProperty('request_flag')) {
        this.request_flag = initObj.request_flag
      }
      else {
        this.request_flag = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pocky_dataRequest
    // Serialize message field [request_flag]
    bufferOffset = _serializer.int64(obj.request_flag, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pocky_dataRequest
    let len;
    let data = new pocky_dataRequest(null);
    // Deserialize message field [request_flag]
    data.request_flag = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pocky_vision/pocky_dataRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '68a61dd9374748e7d9ec4f21de7be8ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64   request_flag
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pocky_dataRequest(null);
    if (msg.request_flag !== undefined) {
      resolved.request_flag = msg.request_flag;
    }
    else {
      resolved.request_flag = 0
    }

    return resolved;
    }
};

class pocky_dataResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_done = null;
      this.top_box = null;
      this.top_CenterX = null;
      this.top_CenterY = null;
      this.top_Angle = null;
      this.bottom_box = null;
      this.bottom_CenterX = null;
      this.bottom_CenterY = null;
      this.bottom_Angle = null;
    }
    else {
      if (initObj.hasOwnProperty('is_done')) {
        this.is_done = initObj.is_done
      }
      else {
        this.is_done = false;
      }
      if (initObj.hasOwnProperty('top_box')) {
        this.top_box = initObj.top_box
      }
      else {
        this.top_box = [];
      }
      if (initObj.hasOwnProperty('top_CenterX')) {
        this.top_CenterX = initObj.top_CenterX
      }
      else {
        this.top_CenterX = [];
      }
      if (initObj.hasOwnProperty('top_CenterY')) {
        this.top_CenterY = initObj.top_CenterY
      }
      else {
        this.top_CenterY = [];
      }
      if (initObj.hasOwnProperty('top_Angle')) {
        this.top_Angle = initObj.top_Angle
      }
      else {
        this.top_Angle = [];
      }
      if (initObj.hasOwnProperty('bottom_box')) {
        this.bottom_box = initObj.bottom_box
      }
      else {
        this.bottom_box = [];
      }
      if (initObj.hasOwnProperty('bottom_CenterX')) {
        this.bottom_CenterX = initObj.bottom_CenterX
      }
      else {
        this.bottom_CenterX = [];
      }
      if (initObj.hasOwnProperty('bottom_CenterY')) {
        this.bottom_CenterY = initObj.bottom_CenterY
      }
      else {
        this.bottom_CenterY = [];
      }
      if (initObj.hasOwnProperty('bottom_Angle')) {
        this.bottom_Angle = initObj.bottom_Angle
      }
      else {
        this.bottom_Angle = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pocky_dataResponse
    // Serialize message field [is_done]
    bufferOffset = _serializer.bool(obj.is_done, buffer, bufferOffset);
    // Serialize message field [top_box]
    bufferOffset = _arraySerializer.string(obj.top_box, buffer, bufferOffset, null);
    // Serialize message field [top_CenterX]
    bufferOffset = _arraySerializer.float64(obj.top_CenterX, buffer, bufferOffset, null);
    // Serialize message field [top_CenterY]
    bufferOffset = _arraySerializer.float64(obj.top_CenterY, buffer, bufferOffset, null);
    // Serialize message field [top_Angle]
    bufferOffset = _arraySerializer.float64(obj.top_Angle, buffer, bufferOffset, null);
    // Serialize message field [bottom_box]
    bufferOffset = _arraySerializer.string(obj.bottom_box, buffer, bufferOffset, null);
    // Serialize message field [bottom_CenterX]
    bufferOffset = _arraySerializer.float64(obj.bottom_CenterX, buffer, bufferOffset, null);
    // Serialize message field [bottom_CenterY]
    bufferOffset = _arraySerializer.float64(obj.bottom_CenterY, buffer, bufferOffset, null);
    // Serialize message field [bottom_Angle]
    bufferOffset = _arraySerializer.float64(obj.bottom_Angle, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pocky_dataResponse
    let len;
    let data = new pocky_dataResponse(null);
    // Deserialize message field [is_done]
    data.is_done = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [top_box]
    data.top_box = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [top_CenterX]
    data.top_CenterX = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [top_CenterY]
    data.top_CenterY = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [top_Angle]
    data.top_Angle = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [bottom_box]
    data.bottom_box = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [bottom_CenterX]
    data.bottom_CenterX = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [bottom_CenterY]
    data.bottom_CenterY = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [bottom_Angle]
    data.bottom_Angle = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.top_box.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.top_CenterX.length;
    length += 8 * object.top_CenterY.length;
    length += 8 * object.top_Angle.length;
    object.bottom_box.forEach((val) => {
      length += 4 + val.length;
    });
    length += 8 * object.bottom_CenterX.length;
    length += 8 * object.bottom_CenterY.length;
    length += 8 * object.bottom_Angle.length;
    return length + 33;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pocky_vision/pocky_dataResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '96694ad091a0af345f8f2fadef5ce974';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool is_done
    string[]  top_box
    float64[] top_CenterX
    float64[] top_CenterY
    float64[] top_Angle
    string[] bottom_box
    float64[] bottom_CenterX
    float64[] bottom_CenterY
    float64[] bottom_Angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new pocky_dataResponse(null);
    if (msg.is_done !== undefined) {
      resolved.is_done = msg.is_done;
    }
    else {
      resolved.is_done = false
    }

    if (msg.top_box !== undefined) {
      resolved.top_box = msg.top_box;
    }
    else {
      resolved.top_box = []
    }

    if (msg.top_CenterX !== undefined) {
      resolved.top_CenterX = msg.top_CenterX;
    }
    else {
      resolved.top_CenterX = []
    }

    if (msg.top_CenterY !== undefined) {
      resolved.top_CenterY = msg.top_CenterY;
    }
    else {
      resolved.top_CenterY = []
    }

    if (msg.top_Angle !== undefined) {
      resolved.top_Angle = msg.top_Angle;
    }
    else {
      resolved.top_Angle = []
    }

    if (msg.bottom_box !== undefined) {
      resolved.bottom_box = msg.bottom_box;
    }
    else {
      resolved.bottom_box = []
    }

    if (msg.bottom_CenterX !== undefined) {
      resolved.bottom_CenterX = msg.bottom_CenterX;
    }
    else {
      resolved.bottom_CenterX = []
    }

    if (msg.bottom_CenterY !== undefined) {
      resolved.bottom_CenterY = msg.bottom_CenterY;
    }
    else {
      resolved.bottom_CenterY = []
    }

    if (msg.bottom_Angle !== undefined) {
      resolved.bottom_Angle = msg.bottom_Angle;
    }
    else {
      resolved.bottom_Angle = []
    }

    return resolved;
    }
};

module.exports = {
  Request: pocky_dataRequest,
  Response: pocky_dataResponse,
  md5sum() { return '4482c320afdc1319d32f82f385f7708d'; },
  datatype() { return 'pocky_vision/pocky_data'; }
};
