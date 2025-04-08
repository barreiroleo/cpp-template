# Include directory mechanics:
# - PRIVATE includes (${CMAKE_CURRENT_SOURCE_DIR}):
#   Only visible to the library's own implementation files
#   Keeps implementation details hidden from consumers
#
# - PUBLIC includes:
#   $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include> - Used during build
#   $<INSTALL_INTERFACE:include> - Used after installation
#   Accessible by both the library itself and any targets linking to it
#   Automatically propagated to dependent targets through target_link_libraries
#   Enables #include <logger/logger.hpp> style includes

add_library(logger STATIC EXCLUDE_FROM_ALL logger.cpp)

target_include_directories(
    logger
    PRIVATE ${CMAKE_CURRENT_SOURCE_DIR}/include/logger/
    PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
           $<INSTALL_INTERFACE:include>)

target_link_libraries(logger PRIVATE spdlog::spdlog)

target_compile_options(logger PRIVATE -fno-rtti)
