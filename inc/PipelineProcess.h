#ifndef __PIPELINE_PROCESS__
#define __PIPELINE_PROCESS__

#include "ThreadClassTemplate.h"
#include <condition_variable>
#include <deque>
#include <iostream>
#include <mutex>

class PipelineProcess
{
  private:
    class ConsumerForPipeline : public BaseThreadTaskClass
    {
      private:
        std::deque<int> &m_buffer;
        std::mutex &m_mutexForBuffer;
        size_t m_bufferMaxSize;
        std::condition_variable &m_condForProcessCommunication;
        void SimulateWorkingProcess();
        void PrintCurBuffer();

      public:
        void RunningOnOtherThread() override;
        ConsumerForPipeline(std::deque<int> &buffer, size_t bufferMaxSize, std::mutex &m, std::condition_variable &cond);
        ~ConsumerForPipeline() override;
    };
    class ProducerForPipeline : public BaseThreadTaskClass
    {
      private:
        std::deque<int> &m_buffer;
        std::mutex &m_mutexForBuffer;
        size_t m_bufferMaxSize;
        std::condition_variable &m_condForProcessCommunication;
        void SimulateWorkingProcess();
        void PrintCurBuffer();

      public:
        void RunningOnOtherThread() override;
        ProducerForPipeline(std::deque<int> &buffer, size_t bufferMaxSize, std::mutex &m, std::condition_variable &cond);
        ~ProducerForPipeline();
    };
    ConsumerForPipeline m_consumer;
    ProducerForPipeline m_producer;
    std::deque<int> m_buffer;
    size_t m_bufferMaxSize;
    std::mutex m_mutexForBuffer;
    std::condition_variable m_condForProcessCommunication;

  public:
    PipelineProcess(size_t bufferMaxSize);
    virtual ~PipelineProcess();
};

#endif // __PIPELINE_PROCESS__