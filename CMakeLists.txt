cmake_minimum_required(VERSION 3.8)
project(dps_slam_msgs)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)
find_package(geometry_msgs REQUIRED)
find_package(shape_msgs REQUIRED)

file(GLOB_RECURSE MSGS_FILES RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} "msg/*.msg")

rosidl_generate_interfaces(${PROJECT_NAME}
  ${MSGS_FILES}
  DEPENDENCIES std_msgs geometry_msgs shape_msgs
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
