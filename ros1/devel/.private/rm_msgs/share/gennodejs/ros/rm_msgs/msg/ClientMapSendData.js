// Auto-generated. Do not edit!

// (in-package rm_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ClientMapSendData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_position_x = null;
      this.target_position_y = null;
      this.target_position_z = null;
      this.command_keyboard = null;
      this.target_robot_ID = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('target_position_x')) {
        this.target_position_x = initObj.target_position_x
      }
      else {
        this.target_position_x = 0.0;
      }
      if (initObj.hasOwnProperty('target_position_y')) {
        this.target_position_y = initObj.target_position_y
      }
      else {
        this.target_position_y = 0.0;
      }
      if (initObj.hasOwnProperty('target_position_z')) {
        this.target_position_z = initObj.target_position_z
      }
      else {
        this.target_position_z = 0.0;
      }
      if (initObj.hasOwnProperty('command_keyboard')) {
        this.command_keyboard = initObj.command_keyboard
      }
      else {
        this.command_keyboard = 0;
      }
      if (initObj.hasOwnProperty('target_robot_ID')) {
        this.target_robot_ID = initObj.target_robot_ID
      }
      else {
        this.target_robot_ID = 0;
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClientMapSendData
    // Serialize message field [target_position_x]
    bufferOffset = _serializer.float32(obj.target_position_x, buffer, bufferOffset);
    // Serialize message field [target_position_y]
    bufferOffset = _serializer.float32(obj.target_position_y, buffer, bufferOffset);
    // Serialize message field [target_position_z]
    bufferOffset = _serializer.float32(obj.target_position_z, buffer, bufferOffset);
    // Serialize message field [command_keyboard]
    bufferOffset = _serializer.uint8(obj.command_keyboard, buffer, bufferOffset);
    // Serialize message field [target_robot_ID]
    bufferOffset = _serializer.uint16(obj.target_robot_ID, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClientMapSendData
    let len;
    let data = new ClientMapSendData(null);
    // Deserialize message field [target_position_x]
    data.target_position_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_position_y]
    data.target_position_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_position_z]
    data.target_position_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [command_keyboard]
    data.command_keyboard = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [target_robot_ID]
    data.target_robot_ID = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/ClientMapSendData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ccfd8a27a3d104fd1e8e4702a1b153a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 KEY_A = 65
    uint8 KEY_H = 72
    uint8 KEY_K = 75
    uint8 KEY_L = 76
    uint8 KEY_N = 78
    uint8 KEY_O = 79
    uint8 KEY_U = 85
    
    float32 target_position_x
    float32 target_position_y
    float32 target_position_z
    uint8 command_keyboard
    uint16 target_robot_ID
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClientMapSendData(null);
    if (msg.target_position_x !== undefined) {
      resolved.target_position_x = msg.target_position_x;
    }
    else {
      resolved.target_position_x = 0.0
    }

    if (msg.target_position_y !== undefined) {
      resolved.target_position_y = msg.target_position_y;
    }
    else {
      resolved.target_position_y = 0.0
    }

    if (msg.target_position_z !== undefined) {
      resolved.target_position_z = msg.target_position_z;
    }
    else {
      resolved.target_position_z = 0.0
    }

    if (msg.command_keyboard !== undefined) {
      resolved.command_keyboard = msg.command_keyboard;
    }
    else {
      resolved.command_keyboard = 0
    }

    if (msg.target_robot_ID !== undefined) {
      resolved.target_robot_ID = msg.target_robot_ID;
    }
    else {
      resolved.target_robot_ID = 0
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

// Constants for message
ClientMapSendData.Constants = {
  KEY_A: 65,
  KEY_H: 72,
  KEY_K: 75,
  KEY_L: 76,
  KEY_N: 78,
  KEY_O: 79,
  KEY_U: 85,
}

module.exports = ClientMapSendData;
