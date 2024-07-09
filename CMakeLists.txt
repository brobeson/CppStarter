cmake_minimum_required(VERSION 3.29)
project(
  CppStarter
  VERSION 0.0.0
  DESCRIPTION "A template C++ project."
  HOMEPAGE_URL "https://github.com/brobeson/CppStarter"
  LANGUAGES CXX)

option(CppStarter_DEV_BUILD "Configure the build system for developing CppStarter" off)

if(CppStarter_DEV_BUILD)
  enable_testing()
  include(FetchContent)
  # cspell:ignore fetchcontent makeavailable
  fetchcontent_declare(
    cmake-tools
    GIT_REPOSITORY https://github.com/brobeson/cmake-tools.git
    GIT_TAG "9-add-an-address-sanitizer-build-type"
  )
  fetchcontent_makeavailable(cmake-tools)
  list(APPEND CMAKE_MODULE_PATH "${cmake-tools_SOURCE_DIR}")
  include(CTSanitizers)
  add_subdirectory(tests)
endif()
