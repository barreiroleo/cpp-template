include(FetchContent)
set(PACKAGE benchmark)

FetchContent_Declare(
    ${PACKAGE}
    GIT_REPOSITORY  "https://github.com/google/benchmark.git"
    SOURCE_DIR      "${PROJECT_SOURCE_DIR}/include/benchmark"
    GIT_TAG         "main"
    GIT_SHALLOW     TRUE
    GIT_PROGRESS    TRUE
)

set(BENCHMARK_ENABLE_TESTING OFF CACHE BOOL "Disable benchmark testing" FORCE)
set(BENCHMARK_ENABLE_GTEST_TESTS OFF CACHE BOOL "Disable benchmark gtest testing" FORCE)

string(TOUPPER ${PACKAGE} PACKAGE_UPPER)
set(FETCHCONTENT_UPDATES_DISCONNECTED_${PACKAGE_UPPER} ON)
FetchContent_MakeAvailable(${PACKAGE}) 