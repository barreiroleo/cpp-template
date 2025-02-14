message("Building tests")
include(GoogleTest)
enable_testing()

add_executable(basic ./Basic.cpp)
target_link_libraries(basic PRIVATE GTest::gtest_main)
gtest_discover_tests(basic)
