# Include directory mechanics:
# - This is an INTERFACE library, so it only has PUBLIC includes:
#   $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include> - Used during build
#   $<INSTALL_INTERFACE:include> - Used after installation
#   Accessible by any targets linking to this library
#   Automatically propagated to dependent targets through target_link_libraries
#   Enables #include <utils/filesystem.hpp> style includes

add_library(utils INTERFACE)

target_include_directories(
    utils INTERFACE $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
                    $<INSTALL_INTERFACE:include>)
