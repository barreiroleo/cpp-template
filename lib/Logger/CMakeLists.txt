add_library(logger STATIC Logger.cpp)

target_link_libraries(logger PRIVATE spdlog::spdlog)
target_compile_options(logger PRIVATE -fno-rtti)
target_include_directories(logger INTERFACE .)
