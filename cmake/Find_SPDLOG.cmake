include(FetchContent)
set(PACKAGE spdlog)

FetchContent_Declare(
    ${PACKAGE}
    GIT_REPOSITORY  "https://github.com/gabime/spdlog.git"
    SOURCE_DIR      "${PROJECT_SOURCE_DIR}/include/spdlog"
    GIT_TAG         "v1.x"  # Replace with a specific tag if needed
    GIT_SHALLOW     TRUE
    GIT_PROGRESS    TRUE
)

string(TOUPPER ${PACKAGE} PACKAGE_UPPER)
set(FETCHCONTENT_UPDATES_DISCONNECTED_${PACKAGE_UPPER} ON)
FetchContent_MakeAvailable(${PACKAGE})

include_directories("${CMAKE_CURRENT_BINARY_DIR}/_deps/spdlog-src/include")
add_compile_options(-DSPDLOG_COMPILED_LIB)
