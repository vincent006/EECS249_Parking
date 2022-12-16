// Auto-generated. Do not edit!

// (in-package romi_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class follow_pathResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.is_goal = null;
    }
    else {
      if (initObj.hasOwnProperty('is_goal')) {
        this.is_goal = initObj.is_goal
      }
      else {
        this.is_goal = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type follow_pathResult
    // Serialize message field [is_goal]
    bufferOffset = _serializer.bool(obj.is_goal, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type follow_pathResult
    let len;
    let data = new follow_pathResult(null);
    // Deserialize message field [is_goal]
    data.is_goal = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'romi_interface/follow_pathResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42057c1ec965897941ec1232a3d488c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    # Define the result
    bool is_goal
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new follow_pathResult(null);
    if (msg.is_goal !== undefined) {
      resolved.is_goal = msg.is_goal;
    }
    else {
      resolved.is_goal = false
    }

    return resolved;
    }
};

module.exports = follow_pathResult;