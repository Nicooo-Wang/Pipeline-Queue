#include "PipelineProcess.h"
#include <chrono>

BaseThreadTaskClass::BaseThreadTaskClass() : m_bIsRunning(true)
{
    m_inClassThread = std::thread(&BaseThreadTaskClass::RunningOnOtherThread, this);
}

BaseThreadTaskClass::~BaseThreadTaskClass()
{
    m_bIsRunning = false;
    if (m_inClassThread.joinable())
    {
        m_inClassThread.join();
        std::cout << "thread join from deconstructor" << std::endl;
    }
    else
    {
        std::cout << "thread didn't join from deconstructor" << std::endl;
    }
}

void BaseThreadTaskClass::RunningOnOtherThread()
{
    while (m_bIsRunning)
    {
        std::cout << "BaseThreadTaskClass thread " << std::this_thread::get_id() << " running..." << std::endl;
        std::this_thread::sleep_for(std::chrono::milliseconds(500));
    }
    std::cout << "BaseThreadTaskClass thread " << std::this_thread::get_id() << " terminating..." << std::endl;
}