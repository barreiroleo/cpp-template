include(FetchContent)
set(PACKAGE sdl3)

FetchContent_Declare(
    ${PACKAGE}
    GIT_REPOSITORY  "https://github.com/libsdl-org/SDL.git"
    SOURCE_DIR      "${PROJECT_SOURCE_DIR}/include/sdl3"
    GIT_TAG         "origin/main"
    GIT_SHALLOW     TRUE
    GIT_PROGRESS    TRUE
)

string(TOUPPER ${PACKAGE} PACKAGE_UPPER)
set(FETCHCONTENT_UPDATES_DISCONNECTED_${PACKAGE_UPPER} ON)
FetchContent_MakeAvailable(${PACKAGE})
