#include "PipelineProcess.h"

PipelineProcess::PipelineProcess()
    : m_pConsumer(std::make_unique<Consumer>()),
      m_pProducer(std::make_unique<Producer>()) {}

PipelineProcess::~PipelineProcess() {}
