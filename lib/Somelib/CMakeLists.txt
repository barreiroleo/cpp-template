add_library(Somelib STATIC
    ./Somelib.cpp
)

target_compile_options(Somelib PRIVATE -fno-rtti)
target_include_directories(Somelib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

add_subdirectory(tests)
