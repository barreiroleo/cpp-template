#include <Assert.hpp>
#include <logger/logger.hpp>

auto main(int /*argc*/, char* /*argv*/[]) -> int {
    Logger::init();
    LOG_INFO("Hello {}!", "Hello");

    if (ASSERT(false, "Hey, I'm an assert! {}", 123)) {
        return 1;
    }
    return 0;
}
