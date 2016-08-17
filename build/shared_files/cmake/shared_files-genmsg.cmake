# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "shared_files: 5 messages, 0 services")

set(MSG_I_FLAGS "-Ishared_files:/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(shared_files_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/SettingsTransform.msg" NAME_WE)
add_custom_target(_shared_files_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shared_files" "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/SettingsTransform.msg" "geometry_msgs/Quaternion:geometry_msgs/Transform:geometry_msgs/TransformStamped:geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/TopicNames.msg" NAME_WE)
add_custom_target(_shared_files_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shared_files" "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/TopicNames.msg" "std_msgs/String"
)

get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/TransformNames.msg" NAME_WE)
add_custom_target(_shared_files_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shared_files" "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/TransformNames.msg" "std_msgs/String"
)

get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativePoint.msg" NAME_WE)
add_custom_target(_shared_files_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shared_files" "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativePoint.msg" "geometry_msgs/Point:std_msgs/Int32"
)

get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativeFrame.msg" NAME_WE)
add_custom_target(_shared_files_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "shared_files" "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativeFrame.msg" "std_msgs/Int32:geometry_msgs/Point:shared_files/RelativePoint"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(shared_files
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/SettingsTransform.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files
)
_generate_msg_cpp(shared_files
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/TopicNames.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files
)
_generate_msg_cpp(shared_files
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/TransformNames.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files
)
_generate_msg_cpp(shared_files
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativePoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files
)
_generate_msg_cpp(shared_files
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativeFrame.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files
)

### Generating Services

### Generating Module File
_generate_module_cpp(shared_files
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(shared_files_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(shared_files_generate_messages shared_files_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/SettingsTransform.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_cpp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/TopicNames.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_cpp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/TransformNames.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_cpp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativePoint.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_cpp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativeFrame.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_cpp _shared_files_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shared_files_gencpp)
add_dependencies(shared_files_gencpp shared_files_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shared_files_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(shared_files
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/SettingsTransform.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files
)
_generate_msg_lisp(shared_files
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/TopicNames.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files
)
_generate_msg_lisp(shared_files
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/TransformNames.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files
)
_generate_msg_lisp(shared_files
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativePoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files
)
_generate_msg_lisp(shared_files
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativeFrame.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files
)

### Generating Services

### Generating Module File
_generate_module_lisp(shared_files
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(shared_files_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(shared_files_generate_messages shared_files_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/SettingsTransform.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_lisp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/TopicNames.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_lisp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/TransformNames.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_lisp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativePoint.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_lisp _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativeFrame.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_lisp _shared_files_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shared_files_genlisp)
add_dependencies(shared_files_genlisp shared_files_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shared_files_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(shared_files
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/SettingsTransform.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files
)
_generate_msg_py(shared_files
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/TopicNames.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files
)
_generate_msg_py(shared_files
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/TransformNames.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files
)
_generate_msg_py(shared_files
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativePoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files
)
_generate_msg_py(shared_files
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativeFrame.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Int32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativePoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files
)

### Generating Services

### Generating Module File
_generate_module_py(shared_files
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(shared_files_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(shared_files_generate_messages shared_files_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/SettingsTransform.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_py _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/TopicNames.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_py _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/names_msgs/TransformNames.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_py _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativePoint.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_py _shared_files_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/RelativeFrame.msg" NAME_WE)
add_dependencies(shared_files_generate_messages_py _shared_files_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(shared_files_genpy)
add_dependencies(shared_files_genpy shared_files_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS shared_files_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/shared_files
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(shared_files_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(shared_files_generate_messages_cpp sensor_msgs_generate_messages_cpp)
add_dependencies(shared_files_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/shared_files
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(shared_files_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(shared_files_generate_messages_lisp sensor_msgs_generate_messages_lisp)
add_dependencies(shared_files_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/shared_files
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(shared_files_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(shared_files_generate_messages_py sensor_msgs_generate_messages_py)
add_dependencies(shared_files_generate_messages_py std_msgs_generate_messages_py)
