message("Building common tests")

add_executable(basic_test Basic.cpp)
target_link_libraries(basic_test PRIVATE GTest::gtest_main somelib cpp-assertions logger)
gtest_discover_tests(basic_test)
