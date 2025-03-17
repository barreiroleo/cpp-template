cmake_minimum_required(VERSION 3.28)
project(project CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Dependencies
include(cmake/Find_GTEST.cmake)
include(cmake/Find_ASSERTIONS.cmake)
include(cmake/Find_SPDLOG.cmake)

# Test
include(GoogleTest)
enable_testing()

# Internal subprojects
include_directories(${PROJECT_SOURCE_DIR}/src)
add_subdirectory(${PROJECT_SOURCE_DIR}/lib)
add_subdirectory(${PROJECT_SOURCE_DIR}/tests)
