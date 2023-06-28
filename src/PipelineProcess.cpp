#include "PipelineProcess.h"

PipelineProcess::ConsumerForPipeline::ConsumerForPipeline(std::deque<int> &buffer, size_t bufferMaxSize, std::mutex &m,
                                                          std::condition_variable &cond)
    : m_buffer(buffer), m_bufferMaxSize(bufferMaxSize), m_mutexForBuffer(m), m_condForProcessCommunication(cond)
{
}

void PipelineProcess::ConsumerForPipeline::RunningOnOtherThread()
{
    std::cout << "thread id: " << std::this_thread::get_id() << " Consumer created" << std::endl;
    while (m_bIsRunning)
    {
        std::unique_lock<std::mutex> locker(m_mutexForBuffer);
        m_condForProcessCommunication.wait(locker, [this]() { return m_buffer.size() > 1; });
        m_buffer.pop_front();
        PrintCurBuffer();
        locker.unlock();
        m_condForProcessCommunication.notify_one();
        SimulateWorkingProcess();
    }
    std::cout << "thread id: " << std::this_thread::get_id() << " Consumer terminating... " << std::endl;
}

void PipelineProcess::ConsumerForPipeline::SimulateWorkingProcess()
{
    int workTime = 1000;
    std::this_thread::sleep_for(std::chrono::milliseconds(workTime));
}

void PipelineProcess::ConsumerForPipeline::PrintCurBuffer()
{
    auto timenow = std::chrono::system_clock::to_time_t(std::chrono::system_clock::now());
    std::cout << "\t\t\t\tbuffer: ";
    for (auto i : m_buffer)
    {
        std::cout << i;
    }
    std::cout << " --->Consumer pop " << ctime(&timenow);
}

PipelineProcess::ConsumerForPipeline::~ConsumerForPipeline()
{
}

PipelineProcess::ProducerForPipeline::ProducerForPipeline(std::deque<int> &buffer, size_t bufferMaxSize, std::mutex &m,
                                                          std::condition_variable &cond)
    : m_buffer(buffer), m_bufferMaxSize(bufferMaxSize), m_mutexForBuffer(m), m_condForProcessCommunication(cond)
{
}

void PipelineProcess::ProducerForPipeline::RunningOnOtherThread()
{
    std::cout << "thread id: " << std::this_thread::get_id() << " Producer created" << std::endl;
    while (m_bIsRunning)
    {
        SimulateWorkingProcess();
        std::unique_lock<std::mutex> locker(m_mutexForBuffer);
        m_condForProcessCommunication.wait(locker, [this]() { return m_buffer.size() < m_bufferMaxSize; });
        m_buffer.push_back(0);
        PrintCurBuffer();
        locker.unlock();
        m_condForProcessCommunication.notify_one();
    }
    std::cout << "thread id: " << std::this_thread::get_id() << " Producer terminating... " << std::endl;
}

void PipelineProcess::ProducerForPipeline::SimulateWorkingProcess()
{
    int workTime = 1000;
    std::this_thread::sleep_for(std::chrono::milliseconds(workTime));
}

void PipelineProcess::ProducerForPipeline::PrintCurBuffer()
{
    auto timenow = std::chrono::system_clock::to_time_t(std::chrono::system_clock::now());
    std::cout << "\t\t\t\tbuffer: ";
    for (auto i : m_buffer)
    {
        std::cout << i;
    }
    std::cout << " <---Producer push " << ctime(&timenow);
}

PipelineProcess::ProducerForPipeline::~ProducerForPipeline()
{
}

PipelineProcess::PipelineProcess(size_t bufferMaxSize)
    : m_consumer(m_buffer, bufferMaxSize, m_mutexForBuffer, m_condForProcessCommunication),
      m_producer(m_buffer, bufferMaxSize, m_mutexForBuffer, m_condForProcessCommunication),
      m_bufferMaxSize(bufferMaxSize)
{
}

PipelineProcess::~PipelineProcess()
{
}