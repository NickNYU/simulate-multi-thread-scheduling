# 控制流切换原理

## Link

> Find the original blog from [控制流切换原理](http://blog.csdn.net/q1007729991/article/details/60113405)

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

	a[3] = (int)fun;
 804847b:	b8 3b 84 04 08       	mov    eax,0x804843b
 8048480:	89 45 00             	mov    DWORD PTR [ebp+0x0],eax
 
	a[4] = (int)fun;
 8048483:	b8 3b 84 04 08       	mov    eax,0x804843b
 8048488:	89 45 04             	mov    DWORD PTR [ebp+0x4],eax


```

[ebp + 0x4] will be the return address of main function

So, function "fun" will be called

### 3. Stack

![](http://img.blog.csdn.net/20170303103105140?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvcTEwMDc3Mjk5OTE=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast)



