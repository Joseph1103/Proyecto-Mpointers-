#ifndef MPOINTER_H
#define MPOINTER_H

#include <string>
#include <nlohmann/json.hpp>

class MPointerBase {
protected:
    static int sockfd;
    static struct sockaddr_in server_addr;

    static void sendData(const std::string& data);
    static std::string recvData();

public:
    static void initSocket(const std::string& server_ip, int port);
    static nlohmann::json sendCommand(const nlohmann::json& command);
    static void closeSocket();
};

template <typename T>
class MPointer : public MPointerBase {
private:
    int id;

public:
    MPointer();
    ~MPointer();

    void set(T value);
    T get();

    T operator*();
    void operator=(T value);
};

#endif // MPOINTER_H
