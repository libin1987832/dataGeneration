# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "blackbox_matcher: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iblackbox_matcher:/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg;-Ishared_files:/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(blackbox_matcher_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionFeedback.msg" NAME_WE)
add_custom_target(_blackbox_matcher_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blackbox_matcher" "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionFeedback.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:blackbox_matcher/configCameraFeedback:std_msgs/Header:std_msgs/Empty"
)

get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionResult.msg" NAME_WE)
add_custom_target(_blackbox_matcher_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blackbox_matcher" "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionResult.msg" "actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Header:blackbox_matcher/configCameraResult:std_msgs/Empty"
)

get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraFeedback.msg" NAME_WE)
add_custom_target(_blackbox_matcher_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blackbox_matcher" "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraFeedback.msg" "std_msgs/Empty"
)

get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraGoal.msg" NAME_WE)
add_custom_target(_blackbox_matcher_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blackbox_matcher" "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraGoal.msg" "shared_files/SettingsTransform:std_msgs/String:geometry_msgs/Vector3:shared_files/TopicNames:geometry_msgs/Quaternion:shared_files/TransformNames:geometry_msgs/Transform:geometry_msgs/TransformStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionGoal.msg" NAME_WE)
add_custom_target(_blackbox_matcher_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blackbox_matcher" "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionGoal.msg" "shared_files/SettingsTransform:blackbox_matcher/configCameraGoal:std_msgs/String:geometry_msgs/Vector3:actionlib_msgs/GoalID:shared_files/TopicNames:std_msgs/Header:shared_files/TransformNames:geometry_msgs/Transform:geometry_msgs/TransformStamped:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraResult.msg" NAME_WE)
add_custom_target(_blackbox_matcher_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blackbox_matcher" "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraResult.msg" "std_msgs/Empty"
)

get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraAction.msg" NAME_WE)
add_custom_target(_blackbox_matcher_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "blackbox_matcher" "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraAction.msg" "shared_files/SettingsTransform:blackbox_matcher/configCameraGoal:std_msgs/String:geometry_msgs/Vector3:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:std_msgs/Empty:blackbox_matcher/configCameraActionGoal:shared_files/TopicNames:blackbox_matcher/configCameraActionFeedback:blackbox_matcher/configCameraFeedback:std_msgs/Header:shared_files/TransformNames:geometry_msgs/Transform:blackbox_matcher/configCameraResult:blackbox_matcher/configCameraActionResult:geometry_msgs/TransformStamped:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blackbox_matcher
)
_generate_msg_cpp(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blackbox_matcher
)
_generate_msg_cpp(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/SettingsTransform.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/TopicNames.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/TransformNames.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blackbox_matcher
)
_generate_msg_cpp(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/SettingsTransform.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/TopicNames.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/TransformNames.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blackbox_matcher
)
_generate_msg_cpp(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blackbox_matcher
)
_generate_msg_cpp(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blackbox_matcher
)
_generate_msg_cpp(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/SettingsTransform.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Empty.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionGoal.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/TopicNames.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionFeedback.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/TransformNames.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraResult.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionResult.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blackbox_matcher
)

### Generating Services

### Generating Module File
_generate_module_cpp(blackbox_matcher
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blackbox_matcher
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(blackbox_matcher_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(blackbox_matcher_generate_messages blackbox_matcher_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionFeedback.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_cpp _blackbox_matcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionResult.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_cpp _blackbox_matcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraFeedback.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_cpp _blackbox_matcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraGoal.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_cpp _blackbox_matcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionGoal.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_cpp _blackbox_matcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraResult.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_cpp _blackbox_matcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraAction.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_cpp _blackbox_matcher_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(blackbox_matcher_gencpp)
add_dependencies(blackbox_matcher_gencpp blackbox_matcher_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS blackbox_matcher_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blackbox_matcher
)
_generate_msg_lisp(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blackbox_matcher
)
_generate_msg_lisp(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/SettingsTransform.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/TopicNames.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/TransformNames.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blackbox_matcher
)
_generate_msg_lisp(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/SettingsTransform.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/TopicNames.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/TransformNames.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blackbox_matcher
)
_generate_msg_lisp(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blackbox_matcher
)
_generate_msg_lisp(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blackbox_matcher
)
_generate_msg_lisp(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/SettingsTransform.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Empty.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionGoal.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/TopicNames.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionFeedback.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/TransformNames.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraResult.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionResult.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blackbox_matcher
)

### Generating Services

### Generating Module File
_generate_module_lisp(blackbox_matcher
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blackbox_matcher
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(blackbox_matcher_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(blackbox_matcher_generate_messages blackbox_matcher_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionFeedback.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_lisp _blackbox_matcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionResult.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_lisp _blackbox_matcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraFeedback.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_lisp _blackbox_matcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraGoal.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_lisp _blackbox_matcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionGoal.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_lisp _blackbox_matcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraResult.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_lisp _blackbox_matcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraAction.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_lisp _blackbox_matcher_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(blackbox_matcher_genlisp)
add_dependencies(blackbox_matcher_genlisp blackbox_matcher_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS blackbox_matcher_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blackbox_matcher
)
_generate_msg_py(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraResult.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blackbox_matcher
)
_generate_msg_py(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/SettingsTransform.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/TopicNames.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/TransformNames.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blackbox_matcher
)
_generate_msg_py(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/SettingsTransform.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/TopicNames.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/TransformNames.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blackbox_matcher
)
_generate_msg_py(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blackbox_matcher
)
_generate_msg_py(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Empty.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blackbox_matcher
)
_generate_msg_py(blackbox_matcher
  "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraAction.msg"
  "${MSG_I_FLAGS}"
  "/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/SettingsTransform.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraGoal.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/String.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/indigo/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Empty.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionGoal.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/TopicNames.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionFeedback.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraFeedback.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/src/shared_files/msg/TransformNames.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraResult.msg;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionResult.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blackbox_matcher
)

### Generating Services

### Generating Module File
_generate_module_py(blackbox_matcher
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blackbox_matcher
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(blackbox_matcher_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(blackbox_matcher_generate_messages blackbox_matcher_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionFeedback.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_py _blackbox_matcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionResult.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_py _blackbox_matcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraFeedback.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_py _blackbox_matcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraGoal.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_py _blackbox_matcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraActionGoal.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_py _blackbox_matcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraResult.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_py _blackbox_matcher_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/share/blackbox_matcher/msg/configCameraAction.msg" NAME_WE)
add_dependencies(blackbox_matcher_generate_messages_py _blackbox_matcher_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(blackbox_matcher_genpy)
add_dependencies(blackbox_matcher_genpy blackbox_matcher_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS blackbox_matcher_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blackbox_matcher)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/blackbox_matcher
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(blackbox_matcher_generate_messages_cpp shared_files_generate_messages_cpp)
add_dependencies(blackbox_matcher_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(blackbox_matcher_generate_messages_cpp sensor_msgs_generate_messages_cpp)
add_dependencies(blackbox_matcher_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(blackbox_matcher_generate_messages_cpp actionlib_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blackbox_matcher)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/blackbox_matcher
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(blackbox_matcher_generate_messages_lisp shared_files_generate_messages_lisp)
add_dependencies(blackbox_matcher_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(blackbox_matcher_generate_messages_lisp sensor_msgs_generate_messages_lisp)
add_dependencies(blackbox_matcher_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(blackbox_matcher_generate_messages_lisp actionlib_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blackbox_matcher)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blackbox_matcher\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/blackbox_matcher
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(blackbox_matcher_generate_messages_py shared_files_generate_messages_py)
add_dependencies(blackbox_matcher_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(blackbox_matcher_generate_messages_py sensor_msgs_generate_messages_py)
add_dependencies(blackbox_matcher_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(blackbox_matcher_generate_messages_py actionlib_msgs_generate_messages_py)
