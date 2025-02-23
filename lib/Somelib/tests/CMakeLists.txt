message("Building Somelib tests")

add_executable(somelib_test Somelib_test.cpp)
target_link_libraries(somelib_test PRIVATE somelib gtest_main)
gtest_discover_tests(somelib_test)
# add_test(NAME SomelibTest COMMAND SomelibTest)
