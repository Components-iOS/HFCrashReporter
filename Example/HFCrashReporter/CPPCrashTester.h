#ifndef CPPCrashTester_h
#define CPPCrashTester_h

#include <stdio.h>

class CPPCrashTester {
public:
    // 空指针解引用崩溃
    static void nullPointerDereference();
    
    // 数组越界访问崩溃
    static void arrayOutOfBounds();
    
    // 除零错误崩溃
    static void divideByZero();
    
    // 内存访问违规崩溃
    static void memoryAccessViolation();
    
    // 栈溢出崩溃
    static void stackOverflow(int depth = 0);
    
    // 非法内存释放崩溃
    static void doubleFree();
    
    // 无效对象访问崩溃
    static void invalidObjectAccess();
};

#endif /* CPPCrashTester_h */
