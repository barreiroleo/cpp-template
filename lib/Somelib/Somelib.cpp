#include "Somelib.hpp"
#include <iostream>
#include <format>

namespace Somelib {

void DoSomething() { std::cout << std::format("Do something: {}\n", 0); }

} // namespace Somelib
