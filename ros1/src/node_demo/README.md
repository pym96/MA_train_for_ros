# ROS1 基本work_space 以及 自写node

1. 请确保你的架构为 ../yourWorkSpace/src下

2. 之后利用 catkin_create_pkg 创建你自己的pkg
    catkin_create_pkg pkg_name <依赖：比如 std_msgs roscpp>

3. 此时依旧待在该工作目录下，如果创建pkg成功应该会有一个CMakeLists.txt

观察CMakeLists.txt， 如果你了解Cmake那看懂应该比较简单
如果你熟悉ros2，就会知道在ros2中利用ament_cmake或者ament_auto_cmake来创建，而在ros1中，则需要使用 catkin

注意一定要在find_package() 和 include_directories()之间使用命令 catkin_package(),这会帮你自动构建（不然可能无法找到可以运行的node)

4. 回到../yourWorkSpace
输入：
    catkin_make

5. source ./devel/setup.bash

6. rosrun your_package your_node (your_node是在CMakeLists.txt中的add_executable或者add_library中声明）

# ROS1 自定义msg

1. 请确保你的架构为 ../yourWorkSpace/src下

2. 之后cd [your_package_name]

3. mkdir msg && touch YourMsgFile.msg

4. echo "something" >> msg/YourMsgFile.msg

5. 在本package下修改package.xml
    增加:
        <build_depend>message_generation</build_depend>

        <exec_depend>message_runtime</exec_depend>

6. 在本package下的CMakeLists.txt中增加：
    ##Add message file
add_message_files(
  FILES
  UserType.msg
)

##Generate message after adding .msg files
generate_messages(
  DEPENDENCIES
  std_msgs
)


catkin_package(
  CATKIN_DEPENDS message_runtime
)
    注意： catkin_package要在generate_messages的下边，好奇后果的话可以自己试一试。

7. cd ../../ (正常返回catkin_wordspace工作主目录)
    catkin_make


8. 编译成功后别忘记 source ./devel/setup.bash


9. rosmsg show yourPkg/YouMsgFile （一切正常的话就会看到了）