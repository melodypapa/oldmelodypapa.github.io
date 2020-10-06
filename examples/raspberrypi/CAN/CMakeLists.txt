cmake_minimum_required(VERSION 3.0.0)
project(CAN_module VERSION 0.1.0)

include(CTest)
enable_testing()

add_executable(can_receiver 
    src/can_receiver.c
)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
