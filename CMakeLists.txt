cmake_minimum_required(VERSION 3.28)
project(McCabeLinter CXX)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
string(APPEND CMAKE_CXX_FLAGS " -stdlib=libc++")
add_compile_options(-fsanitize=address)
add_link_options(-fsanitize=address)

# Dependencies
include(cmake/Find_GTEST.cmake)
include_directories(${PROJECT_SOURCE_DIR}/src)

# Tests
add_subdirectory(${PROJECT_SOURCE_DIR}/tests/)

# Linter target
add_executable(linter ./src/main.cpp)
