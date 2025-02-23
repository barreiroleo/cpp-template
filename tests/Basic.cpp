#include <gtest/gtest.h>

#include <Logger.hpp>
#include <Somelib.hpp>

TEST(Basic, DoSomething) { EXPECT_TRUE(true); }

TEST(Common, Logger) {
    Logger::init();
    LOG_INFO("Hello {}!", "Hello");
}
