#include <iostream>
#include <string>
#include <nlohmann/json.hpp>
#include "MPointer.h"  // Asegúrate de incluir el archivo correcto

int main() {

    // Inicializar conexión con el servidor en 127.0.0.1:8080
    MPointerBase::initSocket("127.0.0.1", 8080); // Conexión al servidor

    // Crear un MPointer de tipo int
    MPointer<int> p;

    // Asignar un valor
    p = 42;

    // Obtener y mostrar el valor almacenado
    std::cout << "Valor almacenado: " << *p << std::endl;

    // Cerrar la conexión con el servidor antes de salir
    MPointerBase::closeSocket();

    return 0;
}
