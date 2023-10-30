// Auto-generated. Do not edit!

// (in-package rm_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class SetLimitVelRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.limit_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('limit_vel')) {
        this.limit_vel = initObj.limit_vel
      }
      else {
        this.limit_vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLimitVelRequest
    // Serialize message field [limit_vel]
    bufferOffset = _serializer.float32(obj.limit_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLimitVelRequest
    let len;
    let data = new SetLimitVelRequest(null);
    // Deserialize message field [limit_vel]
    data.limit_vel = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rm_msgs/SetLimitVelRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8702d35067db92042403fd9588fc65d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 limit_vel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLimitVelRequest(null);
    if (msg.limit_vel !== undefined) {
      resolved.limit_vel = msg.limit_vel;
    }
    else {
      resolved.limit_vel = 0.0
    }

    return resolved;
    }
};

class SetLimitVelResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_limit_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('current_limit_vel')) {
        this.current_limit_vel = initObj.current_limit_vel
      }
      else {
        this.current_limit_vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetLimitVelResponse
    // Serialize message field [current_limit_vel]
    bufferOffset = _serializer.float32(obj.current_limit_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetLimitVelResponse
    let len;
    let data = new SetLimitVelResponse(null);
    // Deserialize message field [current_limit_vel]
    data.current_limit_vel = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rm_msgs/SetLimitVelResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8cc9732843acc2684a34d93d83f2fde3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 current_limit_vel
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetLimitVelResponse(null);
    if (msg.current_limit_vel !== undefined) {
      resolved.current_limit_vel = msg.current_limit_vel;
    }
    else {
      resolved.current_limit_vel = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: SetLimitVelRequest,
  Response: SetLimitVelResponse,
  md5sum() { return 'af5f6a722311e0f309d615a26441d6e9'; },
  datatype() { return 'rm_msgs/SetLimitVel'; }
};
