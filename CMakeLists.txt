cmake_minimum_required(VERSION 3.14)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

project("MyProject")

add_executable(${PROJECT_NAME} "main.cpp")

option(BUILD_TESTS "Building tests" OFF)

if(BUILD_TESTS)
    add_subdirectory("lib/cpputest")
    add_subdirectory("tests")
endif()