find_program(CLANG_FORMAT "clang-format")

if(NOT CLANG_FORMAT)
    message(STATUS "clang-format not found, format target will not be available")
    return()
endif()

set(SOURCE_DIRS "${PROJECT_SOURCE_DIR}/src" "${PROJECT_SOURCE_DIR}/lib"
                "${PROJECT_SOURCE_DIR}/tests")
set(FORMAT_DIRS_COMMAND "")
foreach(DIR ${SOURCE_DIRS})
    set(FORMAT_DIRS_COMMAND "${FORMAT_DIRS_COMMAND} ${DIR}")
endforeach()

add_custom_target(
    format-all
    COMMAND ${CMAKE_COMMAND} -E echo "Checking for unstaged changes..."
    COMMAND
        bash -c
        "git diff --quiet || (echo 'Error: You have unstaged changes. Please commit or stash them before running format.' && exit 1)"
    COMMAND ${CMAKE_COMMAND} -E echo "Running clang-format on source files..."
    COMMAND
        bash -c
        "find ${FORMAT_DIRS_COMMAND} -type f -name '*.cpp' -o -name '*.hpp' -o -name '*.h' -o -name '*.cc' -o -name '*.c' | xargs ${CLANG_FORMAT} -i -style=file"
    COMMENT "Running clang-format across all the repo"
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    VERBATIM)

add_custom_target(
    format
    COMMAND ${CMAKE_COMMAND} -E echo "Running clang-format on modified files..."
    COMMAND
        bash -c
        "git ls-files --modified --others --exclude-standard | grep -E '\\.(cpp|hpp|h|cc|c)$' | xargs -r ${CLANG_FORMAT} -i -style=file"
    COMMENT "Running clang-format on modified files"
    WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
    VERBATIM)
