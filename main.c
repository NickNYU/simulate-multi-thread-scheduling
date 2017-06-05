#include <stdio.h>
#include <unistd.h>


void switch_to(int n);

int cur = 0;
int task[3] = {0, 0, 0};


void fun1() {
	for(int i = 0; i < 5; i++) {
		printf("I'm fun - 1 \n");
		sleep(1);
		
		switch_to(2);
	}
}

void fun2() {
	for(int i = 0; i < 5; i++) {
		printf("I'm fun - 2 \n");
		sleep(1);
		
		switch_to(1);
	}
}


void start(int n) {
	printf("I'm start - %d \n", n);
	if(n == 1)	fun1();
	else if(n == 2) fun2();
}

int main() {
	int stack1[1024] = {0};
	int stack2[1024] = {0};
	
	// fun1's stack
	stack1[1023] = 1;
	stack1[1022] = 100;
	stack1[1021] = (int) start;
	
	stack1[1020] = 1;
	stack1[1019] = 1;
	stack1[1018] = 1;
	stack1[1017] = 1;
	stack1[1016] = 1;
	stack1[1015] = 1;
	stack1[1014] = 1;
	stack1[1013] = 1;
	
	// fun2's stack
	stack2[1023] = 2;
	stack2[1022] = 100;
	stack2[1021] = (int) start;
	
	stack2[1020] = 1;
	stack2[1019] = 1;
	stack2[1018] = 1;
	stack2[1017] = 1;
	stack2[1016] = 1;
	stack2[1015] = 1;
	stack2[1014] = 1;
	stack2[1013] = 1;
	
	// set up the thread1 stack and thread2 stack
	task[1] = (int) (stack1 + 1013);
	task[2] = (int) (stack2 + 1013);
	
	switch_to(1);
	return 0;
}

