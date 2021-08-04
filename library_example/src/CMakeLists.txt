# set minimum cmake version
cmake_minimum_required(VERSION 3.5 FATAL_ERROR)

# project name and language
project(recipe-03 LANGUAGES CXX)

# generate a library from sources
add_library(message_static
  STATIC
    Message.cpp
    Message.hpp
  )

add_library(message
    SHARED
    Message.cpp
    Message.hpp
  )

set_target_properties(message_static PROPERTIES OUTPUT_NAME message)

add_executable(hello-world hello-world.cpp)

target_link_libraries(hello-world message)
