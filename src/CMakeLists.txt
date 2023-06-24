set(SRC_DIR ${PROJECT_SOURCE_DIR}/src)

add_executable(${EXECUTABLE_NAME}
    ${SRC_DIR}/main.cpp
)

target_link_libraries(${EXECUTABLE_NAME} pthread)