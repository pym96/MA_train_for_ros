cmake_minimum_required(VERSION 3.8)
project(serial_example)

# if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
#   add_compile_options(-Wall -Wextra -Wpedantic)
# endif()


## C++ 14
if(NOT CMAKE_CXX_STANDARD)
  set(CMAKE_CXX_STANDARD 14)
  set(CMAKE_CXX_STANDARD_REQUIRED ON)
endif()

## By adding -Wall and -Werror, the complier dose not ignore warnings anymore
add_definitions(-Wall -Werror)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(serial_driver REQUIRED)

include_directories(include)

add_executable(SERIAL_DEMO src/serial_example.cpp)
ament_target_dependencies(SERIAL_DEMO
  rclcpp
  std_msgs
  serial_driver
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()


## Install node to let the ros2 know which node is runnable
install(TARGETS SERIAL_DEMO
  DESTINATION lib/${PROJECT_NAME}
)


ament_export_dependencies(ament_cmake rclcpp std_msgs visualization_msgs)

ament_package()
