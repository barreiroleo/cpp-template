#pragma once

#include <expected>
#include <filesystem>
#include <fstream>
#include <string_view>

namespace Utils::Filesystem {

inline auto get_file_content(std::string_view path_str) -> std::expected<std::string, std::string_view> {
    const std::filesystem::path FILE_PATH { path_str };

    std::ifstream file_stream;
    file_stream.open(FILE_PATH);
    if (!file_stream.is_open()) {
        return std::unexpected("Failed to open asm assets files");
    }

    std::stringstream buffer;
    buffer << file_stream.rdbuf();
    file_stream.close();

    return buffer.str();
}

} // namespace Utils::Filesystem
