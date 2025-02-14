include(FetchContent)
set(PACKAGE googletest)

FetchContent_Declare(
    ${PACKAGE}
    GIT_REPOSITORY  "https://github.com/google/googletest.git"
    SOURCE_DIR      "${PROJECT_SOURCE_DIR}/include/gtest"
    GIT_TAG         "origin/main"
    GIT_SHALLOW     TRUE
    GIT_PROGRESS    TRUE
)

set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)

string(TOUPPER ${PACKAGE} PACKAGE_UPPER)
set(FETCHCONTENT_UPDATES_DISCONNECTED_${PACKAGE_UPPER} ON)
FetchContent_MakeAvailable(${PACKAGE})
