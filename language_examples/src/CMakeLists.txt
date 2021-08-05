cmake_minimum_required(VERSION 3.5 FATAL_ERROR)
    
project(language_examples LANGUAGES C)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake_stuff")

#Variable Directory Scope 
set(FOO_LOCAL "Parent")
set(FOO_CACHE "Global")
message(STATUS "Varible ------------------ FOO_LOCAL = " ${FOO_LOCAL}${ColourReset} )
message(STATUS "Varible ------------------ FOO_LOCAL = " ${FOO_CACHE})
message(STATUS "---------------------------------------------------------------------------------")

#Variable scope in sub-dir
add_subdirectory("child")

message(STATUS "---------------------------------------------------------------------------------")
message(STATUS "---------------------------------------------------------------------------------")

#Macro to color the output
include(colors)
define_colors()


include(functions_n_macros)

#Function call and Variavle Scope

set(ACTUAL_BY_VALUE "I am going in")
set(ACTUAL_BY_REF "I WILL be Changed")
message(STATUS "Varible ------------------ ACTUAL_BY_REF = " ${ACTUAL_BY_REF} )
message(STATUS "---------------------------------------------------------------------------------")

func_foo(${ACTUAL_BY_VALUE} ACTUAL_BY_REF)

message(STATUS "---------------------------------------------------------------------------------")
message(STATUS "Varible After func_foo ------------------ ACTUAL_BY_REF = " ${ACTUAL_BY_REF} )
message(STATUS "Varible After func_foo ------------------ FUNC_VAR = " ${FUNC_VAR} )


#Macro call and Variavle Scope
macro_mac()
message(STATUS "Variable MACRO_VAR = " ${MACRO_VAR})


message(STATUS "---------------------------------------------------------------------------------")
message(STATUS "---------------------------------------------------------------------------------")
#Its funny but we jut declared an empty list
#list( APPEND DAYS )
list( APPEND DAYS "Sunday")
list( APPEND DAYS "Monday")

#Following appends 4 new elements to list
list( APPEND DAYS "TUE;WED;THU;FRI;SAT")

message(STATUS "DAYS = " ${DAYS})   
list(LENGTH DAYS DAYS_LEN)
message(STATUS "DAYS_LEN = " ${DAYS_LEN})  


#lops basic
foreach(day IN LISTS DAYS)
message (STATUS "Today is " ${day})
endforeach() 


foreach(day RANGE 6)
message (STATUS "Today is " ${day})
endforeach() 
 
