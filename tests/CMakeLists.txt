message("Building common tests")

add_executable(basic_test basic.cpp)
target_link_libraries(basic_test PRIVATE
    GTest::gtest_main cpp-assertions logger utils
)
gtest_discover_tests(basic_test)
