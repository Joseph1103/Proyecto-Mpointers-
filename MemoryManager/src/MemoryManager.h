#ifndef MEMORYMANAGER_H
#define MEMORYMANAGER_H

#include <iostream>
#include <cstdlib>
#include <cstring>
#include <mutex>
#include <thread>
#include <atomic>

struct MemoryBlock {
    int id;
    size_t size;
    std::string type;
    int refCount;
    void* address;
    MemoryBlock* next;

    MemoryBlock(int id, size_t size, std::string type, void* addr)
        : id(id), size(size), type(type), refCount(1), address(addr), next(nullptr) {}
};

class MemoryManager {
private:
    char* memoryBlock;
    size_t totalSize;
    size_t usedSize;
    MemoryBlock* head;
    int idCounter;
    std::mutex memMutex;

    std::thread gcThread;  // Hilo del Garbage Collector
    std::atomic<bool> running;  // Control para detener el hilo

    void garbageCollector();  // Método que ejecuta el GC

public:
    MemoryManager(size_t size);
    ~MemoryManager();

    int create(size_t size, std::string type);
    bool set(int id, void* value, size_t valueSize);
    void* get(int id);
    bool increaseRefCount(int id);
    bool decreaseRefCount(int id);
    void printMemoryStatus();
};

#endif // MEMORYMANAGER_H
