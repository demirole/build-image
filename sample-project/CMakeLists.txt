cmake_minimum_required(VERSION 3.20)
project(sample-project LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)

add_executable(sample-app src/main.cpp)

install(TARGETS sample-app DESTINATION bin)
