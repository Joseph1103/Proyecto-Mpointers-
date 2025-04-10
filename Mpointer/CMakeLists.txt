cmake_minimum_required(VERSION 3.10)
project(MPointer)

set(CMAKE_CXX_STANDARD 17)

# Agregar archivos fuente
add_executable(MPointer
        src/main.cpp
        src/MPointer.cpp
        src/MPointer.h
)

# Incluir json.hpp manualmente
include_directories(${CMAKE_SOURCE_DIR}/MPointer/include)
include_directories("C:/Users/sebas/Documents/GitHub/Proyecto-Mpointers-/Mpointer/include")



# En Windows, vincular con ws2_32 (para usar las funciones de Winsock)
if (WIN32)
    target_link_libraries(MPointer ws2_32)
endif()
