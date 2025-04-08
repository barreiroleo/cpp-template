message("Building common tests")

add_executable(common_test common_test.cpp)
target_link_libraries(common_test PRIVATE
    GTest::gtest_main cpp-assertions logger utils
)
gtest_discover_tests(common_test)
