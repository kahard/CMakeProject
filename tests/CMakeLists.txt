cmake_minimum_required(VERSION 3.14)
project("MyProjectTests")

add_executable(${PROJECT_NAME} "mainTests.cpp"
    "FirstTest.cpp")

target_link_libraries(${PROJECT_NAME} PRIVATE CppUTest)