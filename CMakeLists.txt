cmake_minimum_required(VERSION 3.15..4.4)
project(LearnOpenGL LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

include(FetchContent)

# Disable GLFW demos, tests, and docs.
set(GLFW_BUILD_DOCS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_TESTS OFF CACHE BOOL "" FORCE)
set(GLFW_BUILD_EXAMPLES OFF CACHE BOOL "" FORCE)

FetchContent_Declare(
    glfw
    GIT_REPOSITORY https://github.com/glfw/glfw
    GIT_TAG        3.5.1
)
FetchContent_MakeAvailable(glfw)

add_executable(LearnOpenGL src/main.cpp)

target_link_libraries(LearnOpenGL PRIVATE glfw)

target_include_directories(LearnOpenGL PRIVATE third_party/glad/include)
