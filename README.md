# 上下文切换

## How to compile

- gcc -g main.c switch.s -o main -fstack-protector

<<<<<<< 721878c8080d51909e22fe0987c0ab64cd0aaa30
- objdump -d -M intel -S main

- objdump -d -M intel -S main > main.s


## Introduction
=======
## Introduction

### 1. Stack Manipulation of Assembly

- call 指令把它后面的指令地址保存到 esp 指向的内存单元，同修改 eip
- ret 指令把 esp 指向的内存单元中的值保存到 eip
- push 指令把值保存到 esp 指向的内存单元
- pop 把 esp 指向的内存单元的值取出。

> More details found in blog [C语言函数调用栈(一)](http://www.cnblogs.com/clover-toeic/p/3755401.html)


### 2. Analysis the result
```c

int main() {
 8048460:	55                   	push   ebp
 8048461:	89 e5                	mov    ebp,esp
 8048463:	83 ec 10             	sub    esp,0x10
	int a[3] = {0};
 8048466:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
 804846d:	c7 45 f8 00 00 00 00 	mov    DWORD PTR [ebp-0x8],0x0
 8048474:	c7 45 fc 00 00 00 00 	mov    DWORD PTR [ebp-0x4],0x0
	a[3] = (int)fun;
 804847b:	b8 3b 84 04 08       	mov    eax,0x804843b
 8048480:	89 45 00             	mov    DWORD PTR [ebp+0x0],eax
	a[4] = (int)fun;
 8048483:	b8 3b 84 04 08       	mov    eax,0x804843b
 8048488:	89 45 04             	mov    DWORD PTR [ebp+0x4],eax
	
	return 0;
 804848b:	b8 00 00 00 00       	mov    eax,0x0
}

```


> Note: In the code block of 
```c
>>>>>>> modify the markdown

### 1. 上下文切换

所谓的上下文，指是就是当前的寄存器环境(eax, edx, ecx, ebx, esp, ebp, esi, edi, eflags)

<<<<<<< 721878c8080d51909e22fe0987c0ab64cd0aaa30
[Context Switch Definition](http://www.linfo.org/context_switch.html)
> 摘自上文的定义
> A context switch (also sometimes referred to as a process switch or a task switch) is the switching of the CPU (central processing unit) from one process or thread to another.
> A context is the contents of a CPU's registers and program counter at any point in time.
=======
```
>>>>>>> modify the markdown


### 2. 保存寄存器环境

#### Method A.
三个线程对应的结构体是 struct context ctx[3]. 当我们从线程 0 切换到线程 1 的时候，我们就将线程 0 当前的寄存器环境保存到 ctx[0] 里去。什么时候我们重新切换回线程 0 的时候，再把 ctx[0] 中的值恢复到所有寄存器中。
```c
struct context {
  int eax;
  int edx;
  int ecx;
  int ebx;
  int esp;
  int ebp;
  int esi;
  int edi;
  int eflags;
}
```

#### Method B. (What OS is using)
- 线程 0 （请允许我称此为线程吧）正准备切换时，将当前 cpu 中的寄存器环境一个一个压入到自己的栈中，最后一个压栈的是 eflags 寄存器。
- 线程 0 将自己的栈顶指针（保存 eflags 的那个位置）保存到全局数组 task[0] 中。
- 线程 0 从全局数据 task 中取出下一个线程的栈顶，假设下一个要运行的线程是 1 号线程，则从 task[1] 中取出线程 1 的栈顶指针保存到 cpu 的 esp 寄存器中。此时意味着栈已经被切换。栈切换完成后，本质上已经在线程 1 中了。
- 线程 1 将自己栈中的寄存器环境 pop 到对应的 cpu 寄存器中，比如第一个 pop 到 eflags 中，最后一个是 pop ebp.

### 3. Result

```actionscript
nick@ubuntu:~/Develop/thread_schedule$ ./main
I'm - start - 1
I'm - fun - 1
I'm - start - 2
I'm - fun - 2
Fun - 1 Back
I'm - fun - 1
Fun - 2 Back
I'm - fun - 2
Fun - 1 Back
I'm - fun - 1
Fun - 2 Back
I'm - fun - 2
Fun - 1 Back
I'm - fun - 1
Fun - 2 Back
I'm - fun - 2
Fun - 1 Back
I'm - fun - 1
Fun - 2 Back
I'm - fun - 2
Fun - 1 Back
Segmentation fault (core dumped)
```

### 4. Analysis
- 1. 在我们的程序中，将`stack1` 和 `stack2` 分别作为`fun1()` 和 `fun2()`的栈
> 通过代码段 '''task[1] = (int)(stack1 + 1013);	task[2] = (int)(stack2 + 1013);'''
> 来进行操作

- 2. 在栈中，设置了 `stack1[1021] = (int)start;` 其实是造成了函数调用的假象，而后面的`Segmentation fault (core dumped)`也是由于`stack[1022]=100`造成的，正确的栈应该压入`eip`指向的空间，而`stack1[1023]=1` 则是simulate了调用start函数时，入参的函数栈

- 3. 所以，当通过`switch_to(1)`时，一方面保存了main的上下文在main的stack中， 一方面，将栈切换至`stack1`，从而在pop出所有寄存器之后，调用了`start()`函数

- 4. 而后，通过 `fun1()` 调用了 `switch_to(2)`, 调用了`start(2)`

- 5. 在 `fun1()` 和 `fun2()` 调用循环5次结束之后，回到了之前上面第3步的栈底，然后发生了`Segmentation fault (core dumped)`
