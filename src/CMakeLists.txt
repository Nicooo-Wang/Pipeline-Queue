set(SRC_DIR ${PROJECT_SOURCE_DIR}/src)

add_executable(${EXECUTABLE_NAME}
    ${SRC_DIR}/main.cpp
    ${SRC_DIR}/PipelineProcess.cpp
    ${SRC_DIR}/ThreadClassTemplate.cpp
)

target_link_libraries(${EXECUTABLE_NAME} pthread)