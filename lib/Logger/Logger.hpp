#pragma once

#include <string>

namespace Logger {
void init(const std::string& logger_name = "default_logger");
} // namespace Logger

// Declare log macros (they will be defined in Logger.cpp)
#define LOG_TRACE(...)
#define LOG_DEBUG(...)
#define LOG_INFO(...)
#define LOG_WARN(...)
#define LOG_ERROR(...)
#define LOG_CRITICAL(...)
