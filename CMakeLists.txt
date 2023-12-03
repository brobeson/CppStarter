cmake_minimum_required(VERSION 3.24)
project(
  @PROJECT@
  VERSION 0.0.0
  DESCRIPTION ""
  HOMEPAGE_URL ""
  LANGUAGES CXX)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/CMake")
include(@PROJECT@Options)
include(@PROJECT@Dependencies)

if(BUILD_TESTING)
  enable_testing()
  add_subdirectory(Tests)
endif()
