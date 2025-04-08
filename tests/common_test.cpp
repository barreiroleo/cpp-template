#include <gtest/gtest.h>

#include <logger/logger.hpp>

TEST(Basic, DoSomething) { EXPECT_TRUE(true); }

TEST(Common, Logger) {
    Logger::init();
    LOG_INFO("Hello {}!", "Hello");
}
