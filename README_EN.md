Chinese | [English](README_EN.md)


# Object-oriented Producer-Consumer Template Project

When it comes to task coordination and data sharing in a multi-threaded or multi-process environment, the producer-consumer model is a common design pattern. The producer-consumer model is based on a shared finite buffer, where the producer threads generate data and put it into the buffer, while the consumer threads retrieve data from the buffer for consumption.

The main goal of this model is to achieve coordination and synchronization between the producers and consumers, in order to avoid the problem of producers continuing to produce when the buffer is full and consumers continuing to consume when the buffer is empty.

The producer-consumer model is widely used in various scenarios, such as handling website requests, rendering UI interfaces in Android systems (Buffer Queue), etc. It can help achieve asynchronous execution of tasks and improve system throughput and efficiency. Through the producer-consumer model, request coordination and synchronization can be achieved, increasing system throughput and efficiency.

The purpose of this project is to implement a single producer-single consumer Pipeline template using object-oriented design, and encapsulate the complex operations within the Pipeline.
# Project Outline
This project is divided into 3 sub-projects, progressively completing a C++ object-oriented producer-consumer Pipeline project.

1. Simple thread communication: Implement a producer-consumer Pipeline using mutex and condition_variable; please switch to the `pipe-queue-func` branch.
2. Encapsulation of thread class: Encapsulate a thread class to explicitly control the lifecycle of threads through class declaration; please switch to the `thread-class` branch.
3. Object-oriented producer-consumer Pipeline: Combining projects 1 and 2, complete the Pipeline class, encapsulating the producer and consumer within the Pipeline class; please switch to the `Producer-Consumer-Pipeline` branch.

### For a detailed code analysis, please visit my [personal blog](https://nicooo-wang.notion.site/C-Pipeline-6ec2bc22ab764e669d09c1e005ac5d6e).