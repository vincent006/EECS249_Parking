# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "romi_interface: 7 messages, 0 services")

set(MSG_I_FLAGS "-Iromi_interface:/home/ubuntu/parking_ws/devel/share/romi_interface/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(romi_interface_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathAction.msg" NAME_WE)
add_custom_target(_romi_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "romi_interface" "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathAction.msg" "actionlib_msgs/GoalID:romi_interface/follow_pathActionGoal:romi_interface/follow_pathGoal:actionlib_msgs/GoalStatus:romi_interface/follow_pathActionFeedback:romi_interface/follow_pathActionResult:std_msgs/Header:romi_interface/follow_pathFeedback:romi_interface/follow_pathResult"
)

get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionGoal.msg" NAME_WE)
add_custom_target(_romi_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "romi_interface" "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionGoal.msg" "std_msgs/Header:actionlib_msgs/GoalID:romi_interface/follow_pathGoal"
)

get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionResult.msg" NAME_WE)
add_custom_target(_romi_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "romi_interface" "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus:romi_interface/follow_pathResult"
)

get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionFeedback.msg" NAME_WE)
add_custom_target(_romi_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "romi_interface" "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus:romi_interface/follow_pathFeedback"
)

get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg" NAME_WE)
add_custom_target(_romi_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "romi_interface" "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg" ""
)

get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg" NAME_WE)
add_custom_target(_romi_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "romi_interface" "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg" ""
)

get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg" NAME_WE)
add_custom_target(_romi_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "romi_interface" "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionGoal.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionFeedback.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/romi_interface
)
_generate_msg_cpp(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/romi_interface
)
_generate_msg_cpp(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/romi_interface
)
_generate_msg_cpp(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/romi_interface
)
_generate_msg_cpp(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/romi_interface
)
_generate_msg_cpp(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/romi_interface
)
_generate_msg_cpp(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/romi_interface
)

### Generating Services

### Generating Module File
_generate_module_cpp(romi_interface
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/romi_interface
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(romi_interface_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(romi_interface_generate_messages romi_interface_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathAction.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_cpp _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionGoal.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_cpp _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionResult.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_cpp _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionFeedback.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_cpp _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_cpp _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_cpp _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_cpp _romi_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(romi_interface_gencpp)
add_dependencies(romi_interface_gencpp romi_interface_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS romi_interface_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionGoal.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionFeedback.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/romi_interface
)
_generate_msg_eus(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/romi_interface
)
_generate_msg_eus(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/romi_interface
)
_generate_msg_eus(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/romi_interface
)
_generate_msg_eus(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/romi_interface
)
_generate_msg_eus(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/romi_interface
)
_generate_msg_eus(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/romi_interface
)

### Generating Services

### Generating Module File
_generate_module_eus(romi_interface
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/romi_interface
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(romi_interface_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(romi_interface_generate_messages romi_interface_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathAction.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_eus _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionGoal.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_eus _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionResult.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_eus _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionFeedback.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_eus _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_eus _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_eus _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_eus _romi_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(romi_interface_geneus)
add_dependencies(romi_interface_geneus romi_interface_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS romi_interface_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionGoal.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionFeedback.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/romi_interface
)
_generate_msg_lisp(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/romi_interface
)
_generate_msg_lisp(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/romi_interface
)
_generate_msg_lisp(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/romi_interface
)
_generate_msg_lisp(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/romi_interface
)
_generate_msg_lisp(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/romi_interface
)
_generate_msg_lisp(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/romi_interface
)

### Generating Services

### Generating Module File
_generate_module_lisp(romi_interface
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/romi_interface
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(romi_interface_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(romi_interface_generate_messages romi_interface_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathAction.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_lisp _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionGoal.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_lisp _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionResult.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_lisp _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionFeedback.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_lisp _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_lisp _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_lisp _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_lisp _romi_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(romi_interface_genlisp)
add_dependencies(romi_interface_genlisp romi_interface_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS romi_interface_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionGoal.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionFeedback.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/romi_interface
)
_generate_msg_nodejs(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/romi_interface
)
_generate_msg_nodejs(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/romi_interface
)
_generate_msg_nodejs(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/romi_interface
)
_generate_msg_nodejs(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/romi_interface
)
_generate_msg_nodejs(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/romi_interface
)
_generate_msg_nodejs(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/romi_interface
)

### Generating Services

### Generating Module File
_generate_module_nodejs(romi_interface
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/romi_interface
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(romi_interface_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(romi_interface_generate_messages romi_interface_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathAction.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_nodejs _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionGoal.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_nodejs _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionResult.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_nodejs _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionFeedback.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_nodejs _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_nodejs _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_nodejs _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_nodejs _romi_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(romi_interface_gennodejs)
add_dependencies(romi_interface_gennodejs romi_interface_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS romi_interface_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionGoal.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionFeedback.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionResult.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romi_interface
)
_generate_msg_py(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romi_interface
)
_generate_msg_py(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romi_interface
)
_generate_msg_py(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romi_interface
)
_generate_msg_py(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romi_interface
)
_generate_msg_py(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romi_interface
)
_generate_msg_py(romi_interface
  "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romi_interface
)

### Generating Services

### Generating Module File
_generate_module_py(romi_interface
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romi_interface
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(romi_interface_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(romi_interface_generate_messages romi_interface_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathAction.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_py _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionGoal.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_py _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionResult.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_py _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathActionFeedback.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_py _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathGoal.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_py _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathResult.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_py _romi_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/parking_ws/devel/share/romi_interface/msg/follow_pathFeedback.msg" NAME_WE)
add_dependencies(romi_interface_generate_messages_py _romi_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(romi_interface_genpy)
add_dependencies(romi_interface_genpy romi_interface_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS romi_interface_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/romi_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/romi_interface
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(romi_interface_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(romi_interface_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/romi_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/romi_interface
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(romi_interface_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(romi_interface_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/romi_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/romi_interface
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(romi_interface_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(romi_interface_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/romi_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/romi_interface
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(romi_interface_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(romi_interface_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romi_interface)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romi_interface\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/romi_interface
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(romi_interface_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(romi_interface_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
