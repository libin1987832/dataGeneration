# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(matcher_CONFIG_INCLUDED)
  return()
endif()
set(matcher_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(matcher_SOURCE_PREFIX /home/ryan/GitHub_WorkSpace/dataGeneration/src/matcher)
  set(matcher_DEVEL_PREFIX /home/ryan/GitHub_WorkSpace/dataGeneration/devel)
  set(matcher_INSTALL_PREFIX "")
  set(matcher_PREFIX ${matcher_DEVEL_PREFIX})
else()
  set(matcher_SOURCE_PREFIX "")
  set(matcher_DEVEL_PREFIX "")
  set(matcher_INSTALL_PREFIX /home/ryan/GitHub_WorkSpace/dataGeneration/install)
  set(matcher_PREFIX ${matcher_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'matcher' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(matcher_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/include;/home/ryan/GitHub_WorkSpace/dataGeneration/src/matcher/include " STREQUAL " ")
  set(matcher_INCLUDE_DIRS "")
  set(_include_dirs "/home/ryan/GitHub_WorkSpace/dataGeneration/devel/include;/home/ryan/GitHub_WorkSpace/dataGeneration/src/matcher/include")
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${matcher_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'matcher' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  Ask the maintainer 'ryan <ryan@todo.todo>' to fix it.")
      endif()
    else()
      message(FATAL_ERROR "Project 'matcher' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/ryan/GitHub_WorkSpace/dataGeneration/src/matcher/${idir}'.  Ask the maintainer 'ryan <ryan@todo.todo>' to fix it.")
    endif()
    _list_append_unique(matcher_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND matcher_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND matcher_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND matcher_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/ryan/GitHub_WorkSpace/dataGeneration/devel/lib;/home/ryan/GitHub_WorkSpace/dataGeneration/devel/lib;/home/ryan/GitHub_WorkSpace/Motion/devel/lib;/home/ryan/catkin_ws/devel/lib;/opt/ros/indigo/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(matcher_LIBRARY_DIRS ${lib_path})
      list(APPEND matcher_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'matcher'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND matcher_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(matcher_EXPORTED_TARGETS "matcher_generate_messages_cpp;matcher_generate_messages_lisp;matcher_generate_messages_py")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${matcher_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "actionlib;actionlib_msgs;geometry_msgs;message_generation;message_runtime;roscpp;sensor_msgs;tf2;tf2_ros;tf;shared_files")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 matcher_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${matcher_dep}_FOUND)
      find_package(${matcher_dep} REQUIRED)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${matcher_dep} REQUIRED ${depend_list})
  endif()
  _list_append_unique(matcher_INCLUDE_DIRS ${${matcher_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(matcher_LIBRARIES ${matcher_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${matcher_dep}_LIBRARIES})
  _list_append_deduplicate(matcher_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(matcher_LIBRARIES ${matcher_LIBRARIES})

  _list_append_unique(matcher_LIBRARY_DIRS ${${matcher_dep}_LIBRARY_DIRS})
  list(APPEND matcher_EXPORTED_TARGETS ${${matcher_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "matcher-msg-extras.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${matcher_DIR}/${extra})
  endif()
  include(${extra})
endforeach()