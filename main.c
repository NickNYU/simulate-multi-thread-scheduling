#include <stdio.h>
#include <unistd.h>


void fun() {
	while(1) {
		printf("I'm - fun \n");
		sleep(1);
	}
}


int main() {
	int a[3] = {0};
	a[3] = (int)fun;
	a[4] = (int)fun;
	
	return 0;
}
