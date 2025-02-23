add_library(somelib STATIC Somelib.cpp)

target_compile_options(somelib PRIVATE -fno-rtti)
target_include_directories(somelib INTERFACE .)

add_subdirectory(tests)
