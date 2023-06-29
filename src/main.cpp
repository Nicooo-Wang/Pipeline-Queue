#include <chrono>
#include <condition_variable>
#include <deque>
#include <iostream>
#include <thread>

using namespace std;

condition_variable cond; // 用于线程间交互
mutex mu;                // buffer锁，防止data race
mutex mut_for_print;     // 用于打印的mutex，防止多线程打印乱码，可以无视
deque<int> buffer;       // 两线程存放数据的queue，为了方便遍历打印，使用deque作为容器
constexpr int MAX_BUFFER_SIZE = 10; // buffer的max size

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
        unique_lock<mutex> locker(mu); // Consumer设置永不退出，每次遍历前先拿锁获取buffer读取权限
        cond.wait(locker, []() { return buffer.size() > 0; }); // 检查buffer中是否有数据，如果没有，进入睡眠等待被唤醒
        ConsumerWork();                                        // Consumer进入工作，消耗一个buffer数据
        PrintBuffer();                                         // 打印buffer状态，用于打印展示
        locker.unlock();                                       // Consumer结束了一个周期的工作，解锁buffer
        cond.notify_one();                                     // 通知Producer开始生产数据
    }
}

void Producer(int work_times)
{
    while (work_times--)
    {
        unique_lock<mutex> locker(mu); // 写入buffer前先获取buffer写入权限
        cond.wait(locker, []() {
            return buffer.size() < MAX_BUFFER_SIZE;
        });             // 检查buffer数据是否达到最大值，如果是，进入睡眠等待唤醒
        ProducerWork(); // 进入工作，生产数据
        PrintBuffer();
        locker.unlock();   // 生产完毕，解锁buffer
        cond.notify_one(); // 通知Consumer唤醒，消耗数据
    }
}

int main()
{
    thread c(Consumer);
    thread p(Producer, 10);
    p.join();
    c.join();
}