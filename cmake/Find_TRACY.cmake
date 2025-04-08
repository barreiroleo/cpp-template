# Note: Server requires extra dependencies to compile.
#   sudo apt install libdbus-1-dev libfreetype-dev libxkbcommon-dev
include(FetchContent)
set(PACKAGE tracy)

option(TRACY_ENABLED "Enable Tracy profiler" ON)
option(TRACY_NO_EXIT "Prevent Tracy from exiting the program" OFF)
option(TRACY_ON_DEMAND "Enable on-demand profiling" OFF)

set(TRACY_DIR ${PROJECT_SOURCE_DIR}/include/tracy)
FetchContent_Declare(
    ${PACKAGE}
    GIT_REPOSITORY  "https://github.com/wolfpld/tracy.git"
    SOURCE_DIR      "${TRACY_DIR}"
    GIT_TAG         "master"
    GIT_SHALLOW     TRUE
    GIT_PROGRESS    TRUE
)

string(TOUPPER ${PACKAGE} PACKAGE_UPPER)
set(FETCHCONTENT_UPDATES_DISCONNECTED_${PACKAGE_UPPER} ON)
FetchContent_MakeAvailable(${PACKAGE})

# Helper function to link consumer targets.
# Usage:
#   target_link_libraries(parser PUBLIC Tracy::TracyClient)
#   enable_tracy(target_name)
function(enable_tracy TARGET)
    target_include_directories(${TARGET} PRIVATE ${TRACY_DIR})

    if(TRACY_ENABLED)
        target_compile_definitions(${TARGET} PRIVATE TRACY_ENABLE)
    endif()

    if(TRACY_NO_EXIT)
        target_compile_definitions(${TARGET} PRIVATE TRACY_NO_EXIT)
    endif()

    if(TRACY_ON_DEMAND)
        target_compile_definitions(${TARGET} PRIVATE TRACY_ON_DEMAND)
    endif()
endfunction()
