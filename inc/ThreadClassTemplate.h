#ifndef __THREAD_CLASS_TEMPLATE__
#define __THREAD_CLASS_TEMPLATE__

#include <atomic>
#include <chrono>
#include <iostream>
#include <mutex>
#include <thread>

class BaseThreadTaskClass
{
private:
    std::thread m_inClassThread;
    BaseThreadTaskClass(const BaseThreadTaskClass &other) = delete;
    BaseThreadTaskClass(const BaseThreadTaskClass &&other) = delete;

protected:
    std::atomic<bool> m_bIsRunning;
    virtual void RunningOnOtherThread() = 0;

public:
    BaseThreadTaskClass();
    virtual ~BaseThreadTaskClass();
};

#endif //__THREAD_CLASS_TEMPLATE__