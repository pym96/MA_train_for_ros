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

class ClientMapReceiveData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.target_robot_ID = null;
      this.target_position_x = null;
      this.target_position_y = null;
      this.stamp = null;
    }
    else {
      if (initObj.hasOwnProperty('target_robot_ID')) {
        this.target_robot_ID = initObj.target_robot_ID
      }
      else {
        this.target_robot_ID = 0;
      }
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
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClientMapReceiveData
    // Serialize message field [target_robot_ID]
    bufferOffset = _serializer.uint16(obj.target_robot_ID, buffer, bufferOffset);
    // Serialize message field [target_position_x]
    bufferOffset = _serializer.float32(obj.target_position_x, buffer, bufferOffset);
    // Serialize message field [target_position_y]
    bufferOffset = _serializer.float32(obj.target_position_y, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClientMapReceiveData
    let len;
    let data = new ClientMapReceiveData(null);
    // Deserialize message field [target_robot_ID]
    data.target_robot_ID = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [target_position_x]
    data.target_position_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [target_position_y]
    data.target_position_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rm_msgs/ClientMapReceiveData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c57a5847a34ebf54851115481ec4e6ab';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint16 target_robot_ID
    float32 target_position_x
    float32 target_position_y
    
    time stamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClientMapReceiveData(null);
    if (msg.target_robot_ID !== undefined) {
      resolved.target_robot_ID = msg.target_robot_ID;
    }
    else {
      resolved.target_robot_ID = 0
    }

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

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = ClientMapReceiveData;
