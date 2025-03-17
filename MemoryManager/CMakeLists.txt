cmake_minimum_required(VERSION 3.16)
project(MemoryManager)

set(CMAKE_CXX_STANDARD 17)

# Forzar a que sea una aplicación de consola
set(CMAKE_EXE_LINKER_FLAGS "-Wl,-subsystem,console")

add_executable(MemoryManager src/main.cpp src/MemoryManager.cpp src/GarbageCollector.cpp)
