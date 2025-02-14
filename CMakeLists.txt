cmake_minimum_required(VERSION 3.28)
project(Project CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Dependencies
include(cmake/Find_GTEST.cmake)
include_directories(${PROJECT_SOURCE_DIR}/src)

# Tests
add_subdirectory(${PROJECT_SOURCE_DIR}/tests/)

# Linter target
add_executable(project ./src/main.cpp)
