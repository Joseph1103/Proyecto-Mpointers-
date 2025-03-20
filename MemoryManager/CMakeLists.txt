cmake_minimum_required(VERSION 3.10)
project(MemoryManager)

set(CMAKE_CXX_STANDARD 17)

# Agregar archivos fuente
add_executable(MemoryManager
        src/main.cpp
        src/MemoryManager.cpp
        src/SocketServer.cpp
)

# Incluir json.hpp manualmente
include_directories(${CMAKE_SOURCE_DIR}/MemoryManager/include)

# Enlazar Winsock solo en Windows
if (WIN32)
    target_link_libraries(MemoryManager ws2_32)
endif()
