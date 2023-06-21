cmake_minimum_required(VERSION 3.10)

project(Pipeline_Proj)

include_directories(inc)

set(EXECUTABLE_NAME pipe)

add_subdirectory(inc)
add_subdirectory(src)

set_target_properties(${EXECUTABLE_NAME} PROPERTIES OUTPUT_NAME ${EXECUTABLE_NAME}) 