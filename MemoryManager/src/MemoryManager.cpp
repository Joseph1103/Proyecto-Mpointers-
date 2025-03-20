#include "MemoryManager.h"
#include <chrono>
#include <thread>

MemoryManager::MemoryManager(size_t size) : totalSize(size), usedSize(0), head(nullptr), idCounter(1), running(true) {
    memoryBlock = (char*)malloc(size);
    if (!memoryBlock) {
        std::cerr << "Error: No se pudo reservar memoria." << std::endl;
        exit(EXIT_FAILURE);
    }

    // Iniciar Garbage Collector en un hilo separado
    gcThread = std::thread(&MemoryManager::garbageCollector, this);
}

MemoryManager::~MemoryManager() {
    running = false;  // Detener el GC
    if (gcThread.joinable()) {
        gcThread.join();  // Esperar a que termine el hilo
    }

    MemoryBlock* current = head;
    while (current) {
        MemoryBlock* temp = current;
        current = current->next;
        delete temp;
    }
    free(memoryBlock);
}

// Garbage Collector: libera bloques con refCount == 0
void MemoryManager::garbageCollector() {
    while (running) {
        std::this_thread::sleep_for(std::chrono::seconds(5));  // Esperar 5 segundos entre revisiones

        std::lock_guard<std::mutex> lock(memMutex);
        MemoryBlock* current = head;
        MemoryBlock* prev = nullptr;

        while (current) {
            if (current->refCount == 0) {
                std::cout << "[GC] Liberando bloque ID " << current->id << std::endl;

                if (prev) {
                    prev->next = current->next;
                } else {
                    head = current->next;
                }

                usedSize -= current->size;
                delete current;
                current = (prev) ? prev->next : head;
            } else {
                prev = current;
                current = current->next;
            }
        }
    }
}

int MemoryManager::create(size_t size, std::string type) {
    std::lock_guard<std::mutex> lock(memMutex);

    if (usedSize + size > totalSize) {
        std::cerr << "Error: No hay suficiente memoria disponible." << std::endl;
        return -1;
    }

    void* blockAddr = memoryBlock + usedSize;
    MemoryBlock* newBlock = new MemoryBlock(idCounter, size, type, blockAddr);

    newBlock->next = head;
    head = newBlock;

    usedSize += size;
    return idCounter++;
}

bool MemoryManager::set(int id, void* value, size_t valueSize) {
    std::lock_guard<std::mutex> lock(memMutex);

    MemoryBlock* block = head;
    while (block) {
        if (block->id == id) {
            if (valueSize > block->size) return false;
            std::memcpy(block->address, value, valueSize);
            return true;
        }
        block = block->next;
    }
    return false;
}

void* MemoryManager::get(int id) {
    std::lock_guard<std::mutex> lock(memMutex);

    MemoryBlock* block = head;
    while (block) {
        if (block->id == id) return block->address;
        block = block->next;
    }
    return nullptr;
}

bool MemoryManager::increaseRefCount(int id) {
    std::lock_guard<std::mutex> lock(memMutex);

    MemoryBlock* block = head;
    while (block) {
        if (block->id == id) {
            block->refCount++;
            return true;
        }
        block = block->next;
    }
    return false;
}

bool MemoryManager::decreaseRefCount(int id) {
    std::lock_guard<std::mutex> lock(memMutex);

    MemoryBlock* block = head;
    while (block) {
        if (block->id == id) {
            block->refCount--;
            return true;
        }
        block = block->next;
    }
    return false;
}

void MemoryManager::printMemoryStatus() {
    std::lock_guard<std::mutex> lock(memMutex);

    std::cout << "Estado de la memoria:" << std::endl;
    std::cout << "ID | Size | Type   | RefCount | Address" << std::endl;

    MemoryBlock* current = head;
    while (current) {
        std::cout << current->id << " | "
                  << current->size << " | "
                  << current->type << " | "
                  << current->refCount << " | "
                  << current->address << std::endl;
        current = current->next;
    }
    std::cout << "Memoria utilizada: " << usedSize << " / " << totalSize << " bytes" << std::endl;
}
