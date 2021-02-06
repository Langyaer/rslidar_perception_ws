# Install script for directory: /home/avenue/Desktop/rslidar_perception_ws/src/track

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/track/msg" TYPE FILE FILES
    "/home/avenue/Desktop/rslidar_perception_ws/src/track/msg/PointXYZI.msg"
    "/home/avenue/Desktop/rslidar_perception_ws/src/track/msg/ObstPointCloud.msg"
    "/home/avenue/Desktop/rslidar_perception_ws/src/track/msg/ObstSet.msg"
    "/home/avenue/Desktop/rslidar_perception_ws/src/track/msg/Center.msg"
    "/home/avenue/Desktop/rslidar_perception_ws/src/track/msg/Cluster.msg"
    "/home/avenue/Desktop/rslidar_perception_ws/src/track/msg/Object.msg"
    "/home/avenue/Desktop/rslidar_perception_ws/src/track/msg/Rotate.msg"
    "/home/avenue/Desktop/rslidar_perception_ws/src/track/msg/Tk_State.msg"
    "/home/avenue/Desktop/rslidar_perception_ws/src/track/msg/Heart.msg"
    "/home/avenue/Desktop/rslidar_perception_ws/src/track/msg/OnLineState.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/track/cmake" TYPE FILE FILES "/home/avenue/Desktop/rslidar_perception_ws/build/track/catkin_generated/installspace/track-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/avenue/Desktop/rslidar_perception_ws/devel/include/track")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/avenue/Desktop/rslidar_perception_ws/devel/share/roseus/ros/track")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/avenue/Desktop/rslidar_perception_ws/devel/share/common-lisp/ros/track")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/avenue/Desktop/rslidar_perception_ws/devel/share/gennodejs/ros/track")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/avenue/Desktop/rslidar_perception_ws/devel/lib/python2.7/dist-packages/track")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/avenue/Desktop/rslidar_perception_ws/devel/lib/python2.7/dist-packages/track")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/avenue/Desktop/rslidar_perception_ws/build/track/catkin_generated/installspace/track.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/track/cmake" TYPE FILE FILES "/home/avenue/Desktop/rslidar_perception_ws/build/track/catkin_generated/installspace/track-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/track/cmake" TYPE FILE FILES
    "/home/avenue/Desktop/rslidar_perception_ws/build/track/catkin_generated/installspace/trackConfig.cmake"
    "/home/avenue/Desktop/rslidar_perception_ws/build/track/catkin_generated/installspace/trackConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/track" TYPE FILE FILES "/home/avenue/Desktop/rslidar_perception_ws/src/track/package.xml")
endif()
