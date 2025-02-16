message("Building common tests")

add_executable(Basic ./Basic.cpp)
target_link_libraries(Basic PRIVATE GTest::gtest_main Somelib)
gtest_discover_tests(Basic)
