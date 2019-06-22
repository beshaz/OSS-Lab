cmake_minimum_required(VERSION 3.0)
project(StaticAndDynamicLibraries)

set(CMAKE_CXX_STANDARD 14)

add_library(sharedLibrary SHARED block.c)
add_executable(dynamic_block ../program.c)
target_link_libraries(dynamic_block sharedLibrary)

add_library(staticLibrary STATIC block.c)
add_executable(static_block ../program.c)
target_link_libraries(static_block staticLibrary)