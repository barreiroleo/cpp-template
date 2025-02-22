include(FetchContent)
set(PACKAGE cpp_assertions)

FetchContent_Declare(
    ${PACKAGE}
    GIT_REPOSITORY  "https://github.com/barreiroleo/cpp-assertions.git"
    SOURCE_DIR      "${PROJECT_SOURCE_DIR}/include/cpp-assertions"
    GIT_TAG         "origin/master"
    GIT_SHALLOW     TRUE
    GIT_PROGRESS    TRUE
)

string(TOUPPER ${PACKAGE} PACKAGE_UPPER)
set(FETCHCONTENT_UPDATES_DISCONNECTED_${PACKAGE_UPPER} ON)
FetchContent_MakeAvailable(${PACKAGE})
