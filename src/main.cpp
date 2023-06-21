#include <iostream>
#include <chrono>
#include "PipelineProcess.h"

using namespace std;

int main()
{
    PipelineProcess m;
    this_thread::sleep_for(chrono::seconds(10));

    return 0;
}