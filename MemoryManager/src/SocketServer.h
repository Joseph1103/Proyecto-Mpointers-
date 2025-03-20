#ifndef SOCKET_SERVER_H
#define SOCKET_SERVER_H

#include <iostream>
#include <string>
#include <thread>
#include <mutex>

#ifdef _WIN32
    #include <winsock2.h>
    #include <ws2tcpip.h>
    #pragma comment(lib, "ws2_32.lib")  // Enlazar Winsock en Windows
#else
    #include <netinet/in.h>
    #include <arpa/inet.h>
    #include <unistd.h>
#endif

#include "MemoryManager.h"
#include "nlohmann/json.hpp"

using json = nlohmann::json;

class SocketServer {
private:
    int server_fd, new_socket;
    struct sockaddr_in address;
    int addrlen;
    MemoryManager* memManager;
    std::mutex socketMutex;

public:
    SocketServer(int port, MemoryManager* manager);
    ~SocketServer();

    void start();  // ✅ Asegurar que esta línea está presente
    void handleClient(int client_socket);
};

#endif // SOCKET_SERVER_H
