# Logger lib
add_library(logger STATIC EXCLUDE_FROM_ALL logger/logger.cpp)
target_link_libraries(logger PRIVATE spdlog::spdlog)
target_compile_options(logger PRIVATE -fno-rtti)
target_include_directories(logger PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

# Utils lib
add_library(utils INTERFACE EXCLUDE_FROM_ALL)
target_include_directories(utils INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
