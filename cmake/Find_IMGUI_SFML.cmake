include(FetchContent)

FetchContent_Declare(SFML
    GIT_REPOSITORY  https://github.com/SFML/SFML.git
    SOURCE_DIR      "${PROJECT_SOURCE_DIR}/include/SFML"
    GIT_TAG         "origin/master" # 3.0.0
    GIT_SHALLOW     ON
    GIT_PROGRESS    TRUE
    EXCLUDE_FROM_ALL
    SYSTEM)
FetchContent_MakeAvailable(SFML)

FetchContent_Declare(ImGui
    GIT_REPOSITORY  https://github.com/ocornut/imgui
    SOURCE_DIR      "${PROJECT_SOURCE_DIR}/include/imgui"
    GIT_TAG         v1.91.1 # "origin/docking"
    GIT_SHALLOW     ON
    GIT_PROGRESS    TRUE
    EXCLUDE_FROM_ALL
    SYSTEM)
FetchContent_MakeAvailable(ImGui)
FetchContent_GetProperties(ImGui SOURCE_DIR IMGUI_DIR)

set(IMGUI_SFML_FIND_SFML OFF)
FetchContent_Declare(ImGui-SFML
    GIT_REPOSITORY  https://github.com/SFML/imgui-sfml
    SOURCE_DIR      "${PROJECT_SOURCE_DIR}/include/imgui-sfml"
    GIT_TAG         "origin/master"
    GIT_SHALLOW     ON
    GIT_PROGRESS    TRUE
    EXCLUDE_FROM_ALL
    SYSTEM)
FetchContent_MakeAvailable(ImGui-SFML)

# target_link_libraries(main PRIVATE SFML::Graphics ImGui-SFML::ImGui-SFML)
