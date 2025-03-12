#include "CPPCrashTester.h"
#include <iostream>
#include <vector>
#include <cstdlib>

// 空指针解引用崩溃
void CPPCrashTester::nullPointerDereference() {
    int* nullPtr = nullptr;
    *nullPtr = 100;  // 这里会崩溃，因为尝试解引用空指针
}

// 数组越界访问崩溃
void CPPCrashTester::arrayOutOfBounds() {
    int arr[5] = {1, 2, 3, 4, 5};
    for (int i = 0; i <= 10; i++) {
        arr[i] = i * 10;  // 当i>4时会发生越界访问
    }
}

// 除零错误崩溃
void CPPCrashTester::divideByZero() {
    int a = 10;
    int b = 0;
    int result = a / b;  // 除以零会导致崩溃
    std::cout << "结果: " << result << std::endl;  // 这行代码不会执行
}

// 内存访问违规崩溃
void CPPCrashTester::memoryAccessViolation() {
    int* ptr = (int*)0x12345678;  // 一个无效的内存地址
    *ptr = 100;  // 尝试访问无效内存地址
}

// 栈溢出崩溃
void CPPCrashTester::stackOverflow(int depth) {
    char buffer[1024];  // 分配大量栈内存
    if (depth < 5000) {
        stackOverflow(depth + 1);  // 无限递归调用自身，直到栈溢出
    }
}

// 非法内存释放崩溃
void CPPCrashTester::doubleFree() {
    int* ptr = new int(10);
    delete ptr;  // 第一次释放是正常的
    delete ptr;  // 第二次释放同一块内存会导致崩溃
}

// 无效对象访问崩溃
void CPPCrashTester::invalidObjectAccess() {
    class TestObject {
    public:
        void doSomething() { std::cout << "Doing something" << std::endl; }
    };
    
    TestObject* obj = new TestObject();
    delete obj;  // 删除对象
    obj->doSomething();  // 尝试访问已删除的对象
}
