cmake_minimum_required(VERSION 3.16)
project(MPointer)

set(CMAKE_CXX_STANDARD 17)

# Agregar todos los archivos dentro de src/
file(GLOB SOURCES src/*.cpp)

add_executable(MPointer ${SOURCES})
