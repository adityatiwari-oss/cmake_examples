# set minimum cmake version
cmake_minimum_required(VERSION 3.5 FATAL_ERROR)
option(USE_LIBRARY "Compile sources into a library" OFF)
option(FOO_OPT "Compile sources into a library" OFF)

if(NOT FOO_OPT)
    set(FOO_OPT "Default")  
endif()

message(STATUS "Compile sources into a library? ${USE_LIBRARY}")
message(STATUS "Option Foo set to ${FOO_OPT}")

