// Auto-generated. Do not edit!

// (in-package laser_line_extraction.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ParkingInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.isParking = null;
      this.width = null;
      this.depth = null;
      this.top_y = null;
      this.bottom_y = null;
      this.out_x = null;
      this.in_x = null;
    }
    else {
      if (initObj.hasOwnProperty('isParking')) {
        this.isParking = initObj.isParking
      }
      else {
        this.isParking = false;
      }
      if (initObj.hasOwnProperty('width')) {
        this.width = initObj.width
      }
      else {
        this.width = 0.0;
      }
      if (initObj.hasOwnProperty('depth')) {
        this.depth = initObj.depth
      }
      else {
        this.depth = 0.0;
      }
      if (initObj.hasOwnProperty('top_y')) {
        this.top_y = initObj.top_y
      }
      else {
        this.top_y = 0.0;
      }
      if (initObj.hasOwnProperty('bottom_y')) {
        this.bottom_y = initObj.bottom_y
      }
      else {
        this.bottom_y = 0.0;
      }
      if (initObj.hasOwnProperty('out_x')) {
        this.out_x = initObj.out_x
      }
      else {
        this.out_x = 0.0;
      }
      if (initObj.hasOwnProperty('in_x')) {
        this.in_x = initObj.in_x
      }
      else {
        this.in_x = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParkingInfo
    // Serialize message field [isParking]
    bufferOffset = _serializer.bool(obj.isParking, buffer, bufferOffset);
    // Serialize message field [width]
    bufferOffset = _serializer.float32(obj.width, buffer, bufferOffset);
    // Serialize message field [depth]
    bufferOffset = _serializer.float32(obj.depth, buffer, bufferOffset);
    // Serialize message field [top_y]
    bufferOffset = _serializer.float32(obj.top_y, buffer, bufferOffset);
    // Serialize message field [bottom_y]
    bufferOffset = _serializer.float32(obj.bottom_y, buffer, bufferOffset);
    // Serialize message field [out_x]
    bufferOffset = _serializer.float32(obj.out_x, buffer, bufferOffset);
    // Serialize message field [in_x]
    bufferOffset = _serializer.float32(obj.in_x, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParkingInfo
    let len;
    let data = new ParkingInfo(null);
    // Deserialize message field [isParking]
    data.isParking = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [width]
    data.width = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [depth]
    data.depth = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [top_y]
    data.top_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [bottom_y]
    data.bottom_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [out_x]
    data.out_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [in_x]
    data.in_x = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'laser_line_extraction/ParkingInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd4b96bd09ad1afc3b3dc969864e27d31';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool isParking
    
    float32 width
    float32 depth
    
    float32 top_y
    float32 bottom_y
    float32 out_x
    float32 in_x
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParkingInfo(null);
    if (msg.isParking !== undefined) {
      resolved.isParking = msg.isParking;
    }
    else {
      resolved.isParking = false
    }

    if (msg.width !== undefined) {
      resolved.width = msg.width;
    }
    else {
      resolved.width = 0.0
    }

    if (msg.depth !== undefined) {
      resolved.depth = msg.depth;
    }
    else {
      resolved.depth = 0.0
    }

    if (msg.top_y !== undefined) {
      resolved.top_y = msg.top_y;
    }
    else {
      resolved.top_y = 0.0
    }

    if (msg.bottom_y !== undefined) {
      resolved.bottom_y = msg.bottom_y;
    }
    else {
      resolved.bottom_y = 0.0
    }

    if (msg.out_x !== undefined) {
      resolved.out_x = msg.out_x;
    }
    else {
      resolved.out_x = 0.0
    }

    if (msg.in_x !== undefined) {
      resolved.in_x = msg.in_x;
    }
    else {
      resolved.in_x = 0.0
    }

    return resolved;
    }
};

module.exports = ParkingInfo;
