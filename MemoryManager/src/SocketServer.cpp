#include "SocketServer.h"

#ifdef _WIN32
    #include <winsock2.h>
    #include <ws2tcpip.h>
    #pragma comment(lib, "ws2_32.lib")  // Enlazar Winsock en Windows
#else
    #include <unistd.h>  // Para close() en Linux
#endif

SocketServer::SocketServer(int port, MemoryManager* manager) : memManager(manager), addrlen(sizeof(address)) {
#ifdef _WIN32
    WSADATA wsaData;
    if (WSAStartup(MAKEWORD(2, 2), &wsaData) != 0) {
        std::cerr << "Error al inicializar Winsock" << std::endl;
        exit(EXIT_FAILURE);
    }
#endif

    server_fd = socket(AF_INET, SOCK_STREAM, 0);
    if (server_fd == 0) {
        perror("Error al crear el socket");
        exit(EXIT_FAILURE);
    }

    address.sin_family = AF_INET;
    address.sin_addr.s_addr = INADDR_ANY;
    address.sin_port = htons(port);

    if (bind(server_fd, (struct sockaddr*)&address, sizeof(address)) < 0) {
        perror("Error en bind");
        exit(EXIT_FAILURE);
    }

    if (listen(server_fd, 3) < 0) {
        perror("Error en listen");
        exit(EXIT_FAILURE);
    }
}

void SocketServer::start() {
    std::cout << "Servidor de memoria escuchando en el puerto " << ntohs(address.sin_port) << std::endl;

    while (true) {
        new_socket = accept(server_fd, (struct sockaddr*)&address, (socklen_t*)&addrlen);
        if (new_socket < 0) {
            perror("Error en accept");
            continue;
        }

        std::thread clientThread(&SocketServer::handleClient, this, new_socket);
        clientThread.detach();
    }
}

void SocketServer::handleClient(int client_socket) {
    char buffer[1024] = {0};
    int bytesRead = recv(client_socket, buffer, 1024, 0);

    if (bytesRead <= 0) {
        std::cerr << "Error al recibir datos del cliente" << std::endl;
#ifdef _WIN32
        closesocket(client_socket);
#else
        close(client_socket);
#endif
        return;
    }

    std::lock_guard<std::mutex> lock(socketMutex);
    json receivedJson;
    try {
        receivedJson = json::parse(buffer);
    } catch (...) {
        std::cerr << "Error al parsear JSON recibido" << std::endl;
#ifdef _WIN32
        closesocket(client_socket);
#else
        close(client_socket);
#endif
        return;
    }

    std::string command = receivedJson["command"];
    json response;

    if (command == "create") {
        int size = receivedJson["size"];
        std::string type = receivedJson["type"];
        int id = memManager->create(size, type);
        response["id"] = id;
    }
    else if (command == "set") {
        int id = receivedJson["id"];
        int value = receivedJson["value"];
        bool success = memManager->set(id, &value, sizeof(value));
        response["success"] = success;
    }
    else if (command == "get") {
        int id = receivedJson["id"];
        int* value = static_cast<int*>(memManager->get(id));
        response["value"] = value ? *value : 0;
    }
    else if (command == "increaseRefCount") {
        int id = receivedJson["id"];
        bool success = memManager->increaseRefCount(id);
        response["success"] = success;
    }
    else if (command == "decreaseRefCount") {
        int id = receivedJson["id"];
        bool success = memManager->decreaseRefCount(id);
        response["success"] = success;
    }
    else {
        response["error"] = "Comando no reconocido";
    }

    std::string responseStr = response.dump();
    send(client_socket, responseStr.c_str(), responseStr.size(), 0);

#ifdef _WIN32
    closesocket(client_socket);
#else
    close(client_socket);
#endif
}

SocketServer::~SocketServer() {
#ifdef _WIN32
    closesocket(server_fd);  // Usar closesocket en Windows
    WSACleanup();  // Liberar Winsock
#else
    close(server_fd);  // Usar close en Linux
#endif
}
