#include <Assert.hpp>

auto main(int /*argc*/, char* /*argv*/[]) -> int {
    if (ASSERT(false, "Hey, I'm an assert! {}", 123)) {
        return 1;
    }
    return 0;
}
