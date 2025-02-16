message("Building Somelib tests")

add_executable(SomelibTest Somelib_test.cpp)
target_link_libraries(SomelibTest PRIVATE Somelib gtest_main)
gtest_discover_tests(SomelibTest)
# add_test(NAME SomelibTest COMMAND SomelibTest)
