#include <chrono>
#include <condition_variable>
#include <deque>
#include <iostream>
#include <thread>

using namespace std;

condition_variable cond;
mutex mu;
mutex mut_for_print;
deque<int> buffer;
constexpr int MAX_BUFFER_SIZE = 10;

/**
 * @brief function to print buffer
 *
 */
inline void PrintBuffer()
{
    lock_guard<mutex> lg(mut_for_print);
    cout << "buffer:";
    for (auto b : buffer)
    {
        cout << b;
    }
    cout << endl;
}

/**
 * @brief function that simulate Producer work process, 300ms for computation time
 * @attention DO NOT call this function outside Producer thread
 */
void ProducerWork()
{
    this_thread::sleep_for(chrono::microseconds(300));
    buffer.push_back(0);
}

/**
 * @brief function that simulate Consumer work process, 500ms for computation time
 * @attention DO NOT call this function outside Consumer thread
 */
void ConsumerWork()
{
    buffer.pop_front();
    this_thread::sleep_for(chrono::microseconds(500));
}

void Consumer()
{
    while (true)
    {
        unique_lock<mutex> locker(mu);
        cond.wait(locker, []()
                  { return buffer.size() > 0; });
        ConsumerWork();
        PrintBuffer();
        locker.unlock();
        cond.notify_one();
    }
}

void Producer(int work_times)
{
    while (work_times--)
    {
        unique_lock<mutex> locker(mu);
        cond.wait(locker, []()
                  { return buffer.size() < MAX_BUFFER_SIZE; });
        ProducerWork();
        PrintBuffer();
        locker.unlock();
        cond.notify_one();
    }
}

int main()
{
    thread c(Consumer);
    thread p(Producer, 30);
    p.join();
    c.join();
}