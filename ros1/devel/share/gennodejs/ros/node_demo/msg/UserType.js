// Auto-generated. Do not edit!

// (in-package node_demo.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class UserType {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.demo_header = null;
      this.demo_bool = null;
      this.demo_byte = null;
      this.demo_floats = null;
    }
    else {
      if (initObj.hasOwnProperty('demo_header')) {
        this.demo_header = initObj.demo_header
      }
      else {
        this.demo_header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('demo_bool')) {
        this.demo_bool = initObj.demo_bool
      }
      else {
        this.demo_bool = false;
      }
      if (initObj.hasOwnProperty('demo_byte')) {
        this.demo_byte = initObj.demo_byte
      }
      else {
        this.demo_byte = 0;
      }
      if (initObj.hasOwnProperty('demo_floats')) {
        this.demo_floats = initObj.demo_floats
      }
      else {
        this.demo_floats = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UserType
    // Serialize message field [demo_header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.demo_header, buffer, bufferOffset);
    // Serialize message field [demo_bool]
    bufferOffset = _serializer.bool(obj.demo_bool, buffer, bufferOffset);
    // Serialize message field [demo_byte]
    bufferOffset = _serializer.byte(obj.demo_byte, buffer, bufferOffset);
    // Serialize message field [demo_floats]
    bufferOffset = _arraySerializer.float32(obj.demo_floats, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UserType
    let len;
    let data = new UserType(null);
    // Deserialize message field [demo_header]
    data.demo_header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [demo_bool]
    data.demo_bool = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [demo_byte]
    data.demo_byte = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [demo_floats]
    data.demo_floats = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.demo_header);
    length += 4 * object.demo_floats.length;
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'node_demo/UserType';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '78526411b17121c33eed9a69a6cc32f7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header demo_header
    bool demo_bool
    byte demo_byte
    float32[] demo_floats
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UserType(null);
    if (msg.demo_header !== undefined) {
      resolved.demo_header = std_msgs.msg.Header.Resolve(msg.demo_header)
    }
    else {
      resolved.demo_header = new std_msgs.msg.Header()
    }

    if (msg.demo_bool !== undefined) {
      resolved.demo_bool = msg.demo_bool;
    }
    else {
      resolved.demo_bool = false
    }

    if (msg.demo_byte !== undefined) {
      resolved.demo_byte = msg.demo_byte;
    }
    else {
      resolved.demo_byte = 0
    }

    if (msg.demo_floats !== undefined) {
      resolved.demo_floats = msg.demo_floats;
    }
    else {
      resolved.demo_floats = []
    }

    return resolved;
    }
};

module.exports = UserType;
