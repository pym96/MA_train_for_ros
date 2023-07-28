cmake_minimum_required(VERSION 3.0.2)
project(node_demo)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  message_generation
)


## Add message file
add_message_files(
  DIRECTORY msg
  FILES UserType.msg
)

## Generate message after adding .msg files
generate_messages(
  DEPENDENCIES
  std_msgs
  node_demo
)


catkin_package(
  # INCLUDE_DIRS include
  # LIBRARIES node_demo
  CATKIN_DEPENDS message_runtime roscpp std_msgs 
)

## Specify additional locations of header files
## Your package locations should be listed before other locations
include_directories(include
  ${catkin_INCLUDE_DIRS}
)

## Declare a C++ library
# add_library(${PROJECT_NAME}
#   src/node_demo.cpp
# )

add_executable(my_node src/node_demo.cpp)
target_link_libraries(my_node  ${catkin_LIBRARIES})
