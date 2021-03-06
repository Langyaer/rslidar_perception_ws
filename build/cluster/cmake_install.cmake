# Install script for directory: /home/avenue/Desktop/rslidar_perception_ws/src/cluster

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/avenue/Desktop/rslidar_perception_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cluster/msg" TYPE FILE FILES
    "/home/avenue/Desktop/rslidar_perception_ws/src/cluster/msg/PointXYZI.msg"
    "/home/avenue/Desktop/rslidar_perception_ws/src/cluster/msg/ObstPointCloud.msg"
    "/home/avenue/Desktop/rslidar_perception_ws/src/cluster/msg/ObstSet.msg"
    "/home/avenue/Desktop/rslidar_perception_ws/src/cluster/msg/Center.msg"
    "/home/avenue/Desktop/rslidar_perception_ws/src/cluster/msg/Cluster.msg"
    "/home/avenue/Desktop/rslidar_perception_ws/src/cluster/msg/Object.msg"
    "/home/avenue/Desktop/rslidar_perception_ws/src/cluster/msg/Rotate.msg"
    "/home/avenue/Desktop/rslidar_perception_ws/src/cluster/msg/Heart.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cluster/cmake" TYPE FILE FILES "/home/avenue/Desktop/rslidar_perception_ws/build/cluster/catkin_generated/installspace/cluster-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/avenue/Desktop/rslidar_perception_ws/devel/include/cluster")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/avenue/Desktop/rslidar_perception_ws/devel/share/roseus/ros/cluster")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/avenue/Desktop/rslidar_perception_ws/devel/share/common-lisp/ros/cluster")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/avenue/Desktop/rslidar_perception_ws/devel/share/gennodejs/ros/cluster")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/avenue/Desktop/rslidar_perception_ws/devel/lib/python2.7/dist-packages/cluster")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/avenue/Desktop/rslidar_perception_ws/devel/lib/python2.7/dist-packages/cluster")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/avenue/Desktop/rslidar_perception_ws/build/cluster/catkin_generated/installspace/cluster.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cluster/cmake" TYPE FILE FILES "/home/avenue/Desktop/rslidar_perception_ws/build/cluster/catkin_generated/installspace/cluster-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cluster/cmake" TYPE FILE FILES
    "/home/avenue/Desktop/rslidar_perception_ws/build/cluster/catkin_generated/installspace/clusterConfig.cmake"
    "/home/avenue/Desktop/rslidar_perception_ws/build/cluster/catkin_generated/installspace/clusterConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cluster" TYPE FILE FILES "/home/avenue/Desktop/rslidar_perception_ws/src/cluster/package.xml")
endif()

