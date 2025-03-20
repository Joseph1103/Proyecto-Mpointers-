#include <iostream>
#include <thread>
#include "MemoryManager.h"
#include "SocketServer.h"

int main() {
    // Inicializar MemoryManager con 1MB de memoria
    MemoryManager memMgr(1024 * 1024); // 1MB

    // Crear el servidor de Sockets en el puerto 8080
    SocketServer server(8080, &memMgr);

    std::cout << "=============================" << std::endl;
    std::cout << " MemoryManager iniciado " << std::endl;
    std::cout << " Escuchando en el puerto 8080 " << std::endl;
    std::cout << "=============================" << std::endl;

    // Iniciar el servidor en un hilo separado
    std::thread serverThread(&SocketServer::start, &server);
    serverThread.detach();

    // Mantener el programa corriendo y permitir ver el estado de la memoria
    while (true) {
        std::string command;
        std::cout << "Escribe 'status' para ver la memoria o 'exit' para salir: ";
        std::cin >> command;

        if (command == "exit") {
            break;
        } else if (command == "status") {
            memMgr.printMemoryStatus();
        }
    }

    return 0;
}
