#ifndef __PIPELINE_PROCESS__
#define __PIPELINE_PROCESS__

#include "ThreadClassTemplate.h"
#include <iostream>
#include <mutex>

class PipelineProcess
{
private:
    std::unique_ptr<Consumer> m_pConsumer;
    std::unique_ptr<Producer> m_pProducer;

public:
    PipelineProcess();
    virtual ~PipelineProcess();
};

#endif // __PIPELINE_PROCESS__