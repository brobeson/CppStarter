option(BUILD_TESTING "Build the testing tree." ON)
include(CMakeDependentOption)
cmake_dependent_option(@PROJECT@_BUILD_TESTING "Build the testing tree for @PROJECT@." ON BUILD_TESTING OFF)
if(NOT (BUILD_TESTING AND @PROJECT@_BUILD_TESTING))
  return()
endif()

include(FetchContent)
fetchcontent_declare(
  Catch2
  GIT_REPOSITORY https://github.com/catchorg/Catch2.git
  GIT_TAG        v3.4.0
)
fetchcontent_makeavailable(Catch2)
list(APPEND CMAKE_MODULE_PATH "${catch2_SOURCE_DIR}/extras")
include(Catch)

add_executable(test {test.cpp)
target_link_libraries(test PRIVATE Catch2::Catch2WithMain)