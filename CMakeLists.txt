cmake_minimum_required(VERSION 3.22) # Specify CMake version.
project(homework02
    DESCRIPTION "homework 02 solution set"
    VERSION 0.0.1) # A project name. This can be anything.
set(CMAKE_CXX_STANDARD 17) # Specify C++ version.
set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -Wall")
message(STATUS "CMakeLists.txt is at ${PROJECT_SOURCE_DIR}") # To print something.
find_package(OpenGL REQUIRED)



find_package(GLEW)
if(GLEW_FOUND)
    # OPTION 01
    # LINUX: sudo apt-get install libglew-dev
    # MACOS: brew install glew
    # WIN:   https://sourceforge.net/projects/glew/files/glew/2.1.0/glew-2.1.0-win32.zip/download
    include_directories(${GLEW_INCLUDE_DIRS})
    message(WARNING "Using the SYSTEM version of GLEW")
else()
    # OPTION 02
    # if you want to build GLEW yourself, you can do it with static library binding as:
    message(WARNING "Using the CUSTOM build version of GLEW")
    set(GLEW_DIR "${PROJECT_SOURCE_DIR}/third_party/glew/install")
    include_directories("${GLEW_DIR}/include")
    add_definitions(-DGLEW_STATIC) #to ensure static library building
endif()



list(APPEND CMAKE_PREFIX_PATH "${PROJECT_SOURCE_DIR}/third_party/glfw/install")
find_package(glfw3 REQUIRED)

list(APPEND CMAKE_PREFIX_PATH "${PROJECT_SOURCE_DIR}/third_party/matplotplusplus/install")
find_package(Matplot++ REQUIRED)
include(GNUInstallDirs)

include_directories(
    ${PROJECT_SOURCE_DIR}/include
    ${PROJECT_SOURCE_DIR}/src
)

file(GLOB all_SRCS
    "${PROJECT_SOURCE_DIR}/include/*.h"
    "${PROJECT_SOURCE_DIR}/include/*.hpp"
    "${PROJECT_SOURCE_DIR}/src/*.cpp"
    "${PROJECT_SOURCE_DIR}/src/*.c"
)
# Create a binary file. 
# The first argument is the name of the binary file.
# It can be anything. In this case, it is set to be the project name.
# The other arguments are source files.
# Header files are not needed in add_executable(), assuming they are properly included.
add_executable(main main/main.cpp ${all_SRCS})

target_link_libraries(main m)
target_link_libraries(main OpenGL::GL Matplot++::matplot)
target_link_libraries(main glfw)
target_link_libraries(main GLEW::glew)
