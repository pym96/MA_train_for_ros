# This part originate from GuangGong 

## 准备 CAN 设备

安装在 Linux 上 SocketCAN 命令行调试工具：
    sudo apt install can-utils

将 3508 的 CAN ID 设为 0x201，并将它连接到 can0（注意高低两根线序），如果你在 Intel NUC 或者你的的笔记本上面测试，可以使用 rm_usb2can 来获得 CAN 接口。运行下列代码：

    sudo ip link set can0 up type can bitrate 1000000
    candump can0


## Detailed tutorial
https://rm-control-docs.netlify.app/quick_start/rm-controls_101


## How to actuate 
1. U need to write a hardware control first. In this example, it's location is:
src/demo_3508_control/launch/load_rm_hw.launch

2. Then you should write your controller launch file. In this example, it's location is:
src/demo_3508_control/launch/load_controller.launch

3. Then, u should open rqt and click "Robot Tools/ Controller Manager" and open joint state up.
    
    #In this step, u can see topic alteration by commanding rostopic list to deepend your understanding
    
4. After u've have above all, pub msg to motor by can.(Remeber install can-utils first, its command is: "sudo apt install can-utils")

    sudo ip link set can0 up type can bitrate 1000000
    candump can0

    rostopic pub /controllers/joint_position_controller/command std_msgs/Float64 "data: 10.0"

OR 

    rostopic pub /controllers/joint_velocity_controller/command std_msgs/Float64 "data: 10.0"
