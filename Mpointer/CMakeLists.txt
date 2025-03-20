cmake_minimum_required(VERSION 3.10)
project(MPointer)

set(CMAKE_CXX_STANDARD 17)

# Agregar archivos fuente
add_executable(MPointer
        src/main.cpp
        src/MPointer.cpp
)

# Incluir json.hpp manualmente
include_directories(${CMAKE_SOURCE_DIR}/MPointer/include)
