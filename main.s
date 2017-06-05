
main:     file format elf32-i386


Disassembly of section .init:

080482ec <_init>:
 80482ec:	53                   	push   ebx
 80482ed:	83 ec 08             	sub    esp,0x8
 80482f0:	e8 ab 00 00 00       	call   80483a0 <__x86.get_pc_thunk.bx>
 80482f5:	81 c3 0b 1d 00 00    	add    ebx,0x1d0b
 80482fb:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 8048301:	85 c0                	test   eax,eax
 8048303:	74 05                	je     804830a <_init+0x1e>
 8048305:	e8 56 00 00 00       	call   8048360 <__libc_start_main@plt+0x10>
 804830a:	83 c4 08             	add    esp,0x8
 804830d:	5b                   	pop    ebx
 804830e:	c3                   	ret    

Disassembly of section .plt:

08048310 <printf@plt-0x10>:
 8048310:	ff 35 04 a0 04 08    	push   DWORD PTR ds:0x804a004
 8048316:	ff 25 08 a0 04 08    	jmp    DWORD PTR ds:0x804a008
 804831c:	00 00                	add    BYTE PTR [eax],al
	...

08048320 <printf@plt>:
 8048320:	ff 25 0c a0 04 08    	jmp    DWORD PTR ds:0x804a00c
 8048326:	68 00 00 00 00       	push   0x0
 804832b:	e9 e0 ff ff ff       	jmp    8048310 <_init+0x24>

08048330 <sleep@plt>:
 8048330:	ff 25 10 a0 04 08    	jmp    DWORD PTR ds:0x804a010
 8048336:	68 08 00 00 00       	push   0x8
 804833b:	e9 d0 ff ff ff       	jmp    8048310 <_init+0x24>

08048340 <puts@plt>:
 8048340:	ff 25 14 a0 04 08    	jmp    DWORD PTR ds:0x804a014
 8048346:	68 10 00 00 00       	push   0x10
 804834b:	e9 c0 ff ff ff       	jmp    8048310 <_init+0x24>

08048350 <__libc_start_main@plt>:
 8048350:	ff 25 18 a0 04 08    	jmp    DWORD PTR ds:0x804a018
 8048356:	68 18 00 00 00       	push   0x18
 804835b:	e9 b0 ff ff ff       	jmp    8048310 <_init+0x24>

Disassembly of section .plt.got:

08048360 <.plt.got>:
 8048360:	ff 25 fc 9f 04 08    	jmp    DWORD PTR ds:0x8049ffc
 8048366:	66 90                	xchg   ax,ax

Disassembly of section .text:

08048370 <_start>:
 8048370:	31 ed                	xor    ebp,ebp
 8048372:	5e                   	pop    esi
 8048373:	89 e1                	mov    ecx,esp
 8048375:	83 e4 f0             	and    esp,0xfffffff0
 8048378:	50                   	push   eax
 8048379:	54                   	push   esp
 804837a:	52                   	push   edx
 804837b:	68 f0 86 04 08       	push   0x80486f0
 8048380:	68 90 86 04 08       	push   0x8048690
 8048385:	51                   	push   ecx
 8048386:	56                   	push   esi
 8048387:	68 2b 85 04 08       	push   0x804852b
 804838c:	e8 bf ff ff ff       	call   8048350 <__libc_start_main@plt>
 8048391:	f4                   	hlt    
 8048392:	66 90                	xchg   ax,ax
 8048394:	66 90                	xchg   ax,ax
 8048396:	66 90                	xchg   ax,ax
 8048398:	66 90                	xchg   ax,ax
 804839a:	66 90                	xchg   ax,ax
 804839c:	66 90                	xchg   ax,ax
 804839e:	66 90                	xchg   ax,ax

080483a0 <__x86.get_pc_thunk.bx>:
 80483a0:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 80483a3:	c3                   	ret    
 80483a4:	66 90                	xchg   ax,ax
 80483a6:	66 90                	xchg   ax,ax
 80483a8:	66 90                	xchg   ax,ax
 80483aa:	66 90                	xchg   ax,ax
 80483ac:	66 90                	xchg   ax,ax
 80483ae:	66 90                	xchg   ax,ax

080483b0 <deregister_tm_clones>:
 80483b0:	b8 27 a0 04 08       	mov    eax,0x804a027
 80483b5:	2d 24 a0 04 08       	sub    eax,0x804a024
 80483ba:	83 f8 06             	cmp    eax,0x6
 80483bd:	76 1a                	jbe    80483d9 <deregister_tm_clones+0x29>
 80483bf:	b8 00 00 00 00       	mov    eax,0x0
 80483c4:	85 c0                	test   eax,eax
 80483c6:	74 11                	je     80483d9 <deregister_tm_clones+0x29>
 80483c8:	55                   	push   ebp
 80483c9:	89 e5                	mov    ebp,esp
 80483cb:	83 ec 14             	sub    esp,0x14
 80483ce:	68 24 a0 04 08       	push   0x804a024
 80483d3:	ff d0                	call   eax
 80483d5:	83 c4 10             	add    esp,0x10
 80483d8:	c9                   	leave  
 80483d9:	f3 c3                	repz ret 
 80483db:	90                   	nop
 80483dc:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

080483e0 <register_tm_clones>:
 80483e0:	b8 24 a0 04 08       	mov    eax,0x804a024
 80483e5:	2d 24 a0 04 08       	sub    eax,0x804a024
 80483ea:	c1 f8 02             	sar    eax,0x2
 80483ed:	89 c2                	mov    edx,eax
 80483ef:	c1 ea 1f             	shr    edx,0x1f
 80483f2:	01 d0                	add    eax,edx
 80483f4:	d1 f8                	sar    eax,1
 80483f6:	74 1b                	je     8048413 <register_tm_clones+0x33>
 80483f8:	ba 00 00 00 00       	mov    edx,0x0
 80483fd:	85 d2                	test   edx,edx
 80483ff:	74 12                	je     8048413 <register_tm_clones+0x33>
 8048401:	55                   	push   ebp
 8048402:	89 e5                	mov    ebp,esp
 8048404:	83 ec 10             	sub    esp,0x10
 8048407:	50                   	push   eax
 8048408:	68 24 a0 04 08       	push   0x804a024
 804840d:	ff d2                	call   edx
 804840f:	83 c4 10             	add    esp,0x10
 8048412:	c9                   	leave  
 8048413:	f3 c3                	repz ret 
 8048415:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 8048419:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

08048420 <__do_global_dtors_aux>:
 8048420:	80 3d 24 a0 04 08 00 	cmp    BYTE PTR ds:0x804a024,0x0
 8048427:	75 13                	jne    804843c <__do_global_dtors_aux+0x1c>
 8048429:	55                   	push   ebp
 804842a:	89 e5                	mov    ebp,esp
 804842c:	83 ec 08             	sub    esp,0x8
 804842f:	e8 7c ff ff ff       	call   80483b0 <deregister_tm_clones>
 8048434:	c6 05 24 a0 04 08 01 	mov    BYTE PTR ds:0x804a024,0x1
 804843b:	c9                   	leave  
 804843c:	f3 c3                	repz ret 
 804843e:	66 90                	xchg   ax,ax

08048440 <frame_dummy>:
 8048440:	b8 10 9f 04 08       	mov    eax,0x8049f10
 8048445:	8b 10                	mov    edx,DWORD PTR [eax]
 8048447:	85 d2                	test   edx,edx
 8048449:	75 05                	jne    8048450 <frame_dummy+0x10>
 804844b:	eb 93                	jmp    80483e0 <register_tm_clones>
 804844d:	8d 76 00             	lea    esi,[esi+0x0]
 8048450:	ba 00 00 00 00       	mov    edx,0x0
 8048455:	85 d2                	test   edx,edx
 8048457:	74 f2                	je     804844b <frame_dummy+0xb>
 8048459:	55                   	push   ebp
 804845a:	89 e5                	mov    ebp,esp
 804845c:	83 ec 14             	sub    esp,0x14
 804845f:	50                   	push   eax
 8048460:	ff d2                	call   edx
 8048462:	83 c4 10             	add    esp,0x10
 8048465:	c9                   	leave  
 8048466:	e9 75 ff ff ff       	jmp    80483e0 <register_tm_clones>

0804846b <fun1>:

int cur = 0;
int task[3] = {0, 0, 0};


void fun1() {
 804846b:	55                   	push   ebp
 804846c:	89 e5                	mov    ebp,esp
 804846e:	83 ec 18             	sub    esp,0x18
	for(int i = 0; i < 5; i++) {
 8048471:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
 8048478:	eb 2e                	jmp    80484a8 <fun1+0x3d>
		printf("I'm fun - 1 \n");
 804847a:	83 ec 0c             	sub    esp,0xc
 804847d:	68 10 87 04 08       	push   0x8048710
 8048482:	e8 b9 fe ff ff       	call   8048340 <puts@plt>
 8048487:	83 c4 10             	add    esp,0x10
		sleep(1);
 804848a:	83 ec 0c             	sub    esp,0xc
 804848d:	6a 01                	push   0x1
 804848f:	e8 9c fe ff ff       	call   8048330 <sleep@plt>
 8048494:	83 c4 10             	add    esp,0x10
		
		switch_to(2);
 8048497:	83 ec 0c             	sub    esp,0xc
 804849a:	6a 02                	push   0x2
 804849c:	e8 c0 01 00 00       	call   8048661 <switch_to>
 80484a1:	83 c4 10             	add    esp,0x10
int cur = 0;
int task[3] = {0, 0, 0};


void fun1() {
	for(int i = 0; i < 5; i++) {
 80484a4:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
 80484a8:	83 7d f4 04          	cmp    DWORD PTR [ebp-0xc],0x4
 80484ac:	7e cc                	jle    804847a <fun1+0xf>
		printf("I'm fun - 1 \n");
		sleep(1);
		
		switch_to(2);
	}
}
 80484ae:	90                   	nop
 80484af:	c9                   	leave  
 80484b0:	c3                   	ret    

080484b1 <fun2>:

void fun2() {
 80484b1:	55                   	push   ebp
 80484b2:	89 e5                	mov    ebp,esp
 80484b4:	83 ec 18             	sub    esp,0x18
	for(int i = 0; i < 5; i++) {
 80484b7:	c7 45 f4 00 00 00 00 	mov    DWORD PTR [ebp-0xc],0x0
 80484be:	eb 2e                	jmp    80484ee <fun2+0x3d>
		printf("I'm fun - 2 \n");
 80484c0:	83 ec 0c             	sub    esp,0xc
 80484c3:	68 1d 87 04 08       	push   0x804871d
 80484c8:	e8 73 fe ff ff       	call   8048340 <puts@plt>
 80484cd:	83 c4 10             	add    esp,0x10
		sleep(1);
 80484d0:	83 ec 0c             	sub    esp,0xc
 80484d3:	6a 01                	push   0x1
 80484d5:	e8 56 fe ff ff       	call   8048330 <sleep@plt>
 80484da:	83 c4 10             	add    esp,0x10
		
		switch_to(1);
 80484dd:	83 ec 0c             	sub    esp,0xc
 80484e0:	6a 01                	push   0x1
 80484e2:	e8 7a 01 00 00       	call   8048661 <switch_to>
 80484e7:	83 c4 10             	add    esp,0x10
		switch_to(2);
	}
}

void fun2() {
	for(int i = 0; i < 5; i++) {
 80484ea:	83 45 f4 01          	add    DWORD PTR [ebp-0xc],0x1
 80484ee:	83 7d f4 04          	cmp    DWORD PTR [ebp-0xc],0x4
 80484f2:	7e cc                	jle    80484c0 <fun2+0xf>
		printf("I'm fun - 2 \n");
		sleep(1);
		
		switch_to(1);
	}
}
 80484f4:	90                   	nop
 80484f5:	c9                   	leave  
 80484f6:	c3                   	ret    

080484f7 <start>:


void start(int n) {
 80484f7:	55                   	push   ebp
 80484f8:	89 e5                	mov    ebp,esp
 80484fa:	83 ec 08             	sub    esp,0x8
	printf("I'm start - %d \n", n);
 80484fd:	83 ec 08             	sub    esp,0x8
 8048500:	ff 75 08             	push   DWORD PTR [ebp+0x8]
 8048503:	68 2a 87 04 08       	push   0x804872a
 8048508:	e8 13 fe ff ff       	call   8048320 <printf@plt>
 804850d:	83 c4 10             	add    esp,0x10
	if(n == 1)	fun1();
 8048510:	83 7d 08 01          	cmp    DWORD PTR [ebp+0x8],0x1
 8048514:	75 07                	jne    804851d <start+0x26>
 8048516:	e8 50 ff ff ff       	call   804846b <fun1>
	else if(n == 2) fun2();
}
 804851b:	eb 0b                	jmp    8048528 <start+0x31>


void start(int n) {
	printf("I'm start - %d \n", n);
	if(n == 1)	fun1();
	else if(n == 2) fun2();
 804851d:	83 7d 08 02          	cmp    DWORD PTR [ebp+0x8],0x2
 8048521:	75 05                	jne    8048528 <start+0x31>
 8048523:	e8 89 ff ff ff       	call   80484b1 <fun2>
}
 8048528:	90                   	nop
 8048529:	c9                   	leave  
 804852a:	c3                   	ret    

0804852b <main>:

int main() {
 804852b:	8d 4c 24 04          	lea    ecx,[esp+0x4]
 804852f:	83 e4 f0             	and    esp,0xfffffff0
 8048532:	ff 71 fc             	push   DWORD PTR [ecx-0x4]
 8048535:	55                   	push   ebp
 8048536:	89 e5                	mov    ebp,esp
 8048538:	57                   	push   edi
 8048539:	51                   	push   ecx
 804853a:	81 ec 00 20 00 00    	sub    esp,0x2000
	int stack1[1024] = {0};
 8048540:	8d 95 f8 df ff ff    	lea    edx,[ebp-0x2008]
 8048546:	b8 00 00 00 00       	mov    eax,0x0
 804854b:	b9 00 04 00 00       	mov    ecx,0x400
 8048550:	89 d7                	mov    edi,edx
 8048552:	f3 ab                	rep stos DWORD PTR es:[edi],eax
	int stack2[1024] = {0};
 8048554:	8d 95 f8 ef ff ff    	lea    edx,[ebp-0x1008]
 804855a:	b8 00 00 00 00       	mov    eax,0x0
 804855f:	b9 00 04 00 00       	mov    ecx,0x400
 8048564:	89 d7                	mov    edi,edx
 8048566:	f3 ab                	rep stos DWORD PTR es:[edi],eax
	
	// fun1's stack
	stack1[1023] = 1;
 8048568:	c7 85 f4 ef ff ff 01 	mov    DWORD PTR [ebp-0x100c],0x1
 804856f:	00 00 00 
	stack1[1022] = 100;
 8048572:	c7 85 f0 ef ff ff 64 	mov    DWORD PTR [ebp-0x1010],0x64
 8048579:	00 00 00 
	stack1[1021] = (int) start;
 804857c:	b8 f7 84 04 08       	mov    eax,0x80484f7
 8048581:	89 85 ec ef ff ff    	mov    DWORD PTR [ebp-0x1014],eax
	
	stack1[1020] = 1;
 8048587:	c7 85 e8 ef ff ff 01 	mov    DWORD PTR [ebp-0x1018],0x1
 804858e:	00 00 00 
	stack1[1019] = 1;
 8048591:	c7 85 e4 ef ff ff 01 	mov    DWORD PTR [ebp-0x101c],0x1
 8048598:	00 00 00 
	stack1[1018] = 1;
 804859b:	c7 85 e0 ef ff ff 01 	mov    DWORD PTR [ebp-0x1020],0x1
 80485a2:	00 00 00 
	stack1[1017] = 1;
 80485a5:	c7 85 dc ef ff ff 01 	mov    DWORD PTR [ebp-0x1024],0x1
 80485ac:	00 00 00 
	stack1[1016] = 1;
 80485af:	c7 85 d8 ef ff ff 01 	mov    DWORD PTR [ebp-0x1028],0x1
 80485b6:	00 00 00 
	stack1[1015] = 1;
 80485b9:	c7 85 d4 ef ff ff 01 	mov    DWORD PTR [ebp-0x102c],0x1
 80485c0:	00 00 00 
	stack1[1014] = 1;
 80485c3:	c7 85 d0 ef ff ff 01 	mov    DWORD PTR [ebp-0x1030],0x1
 80485ca:	00 00 00 
	stack1[1013] = 1;
 80485cd:	c7 85 cc ef ff ff 01 	mov    DWORD PTR [ebp-0x1034],0x1
 80485d4:	00 00 00 
	
	// fun2's stack
	stack2[1023] = 2;
 80485d7:	c7 45 f4 02 00 00 00 	mov    DWORD PTR [ebp-0xc],0x2
	stack2[1022] = 100;
 80485de:	c7 45 f0 64 00 00 00 	mov    DWORD PTR [ebp-0x10],0x64
	stack2[1021] = (int) start;
 80485e5:	b8 f7 84 04 08       	mov    eax,0x80484f7
 80485ea:	89 45 ec             	mov    DWORD PTR [ebp-0x14],eax
	
	stack2[1020] = 1;
 80485ed:	c7 45 e8 01 00 00 00 	mov    DWORD PTR [ebp-0x18],0x1
	stack2[1019] = 1;
 80485f4:	c7 45 e4 01 00 00 00 	mov    DWORD PTR [ebp-0x1c],0x1
	stack2[1018] = 1;
 80485fb:	c7 45 e0 01 00 00 00 	mov    DWORD PTR [ebp-0x20],0x1
	stack2[1017] = 1;
 8048602:	c7 45 dc 01 00 00 00 	mov    DWORD PTR [ebp-0x24],0x1
	stack2[1016] = 1;
 8048609:	c7 45 d8 01 00 00 00 	mov    DWORD PTR [ebp-0x28],0x1
	stack2[1015] = 1;
 8048610:	c7 45 d4 01 00 00 00 	mov    DWORD PTR [ebp-0x2c],0x1
	stack2[1014] = 1;
 8048617:	c7 45 d0 01 00 00 00 	mov    DWORD PTR [ebp-0x30],0x1
	stack2[1013] = 1;
 804861e:	c7 45 cc 01 00 00 00 	mov    DWORD PTR [ebp-0x34],0x1
	
	// set up the thread1 stack and thread2 stack
	task[1] = (int) (stack1 + 1013);
 8048625:	8d 85 f8 df ff ff    	lea    eax,[ebp-0x2008]
 804862b:	05 d4 0f 00 00       	add    eax,0xfd4
 8048630:	a3 30 a0 04 08       	mov    ds:0x804a030,eax
	task[2] = (int) (stack2 + 1013);
 8048635:	8d 85 f8 ef ff ff    	lea    eax,[ebp-0x1008]
 804863b:	05 d4 0f 00 00       	add    eax,0xfd4
 8048640:	a3 34 a0 04 08       	mov    ds:0x804a034,eax
	
	switch_to(1);
 8048645:	83 ec 0c             	sub    esp,0xc
 8048648:	6a 01                	push   0x1
 804864a:	e8 12 00 00 00       	call   8048661 <switch_to>
 804864f:	83 c4 10             	add    esp,0x10
	return 0;
 8048652:	b8 00 00 00 00       	mov    eax,0x0
}
 8048657:	8d 65 f8             	lea    esp,[ebp-0x8]
 804865a:	59                   	pop    ecx
 804865b:	5f                   	pop    edi
 804865c:	5d                   	pop    ebp
 804865d:	8d 61 fc             	lea    esp,[ecx-0x4]
 8048660:	c3                   	ret    

08048661 <switch_to>:
.section .text
.global switch_to

switch_to:
	
	push %ebp
 8048661:	55                   	push   ebp
	mov %esp, %ebp
 8048662:	89 e5                	mov    ebp,esp
	
	push %edi
 8048664:	57                   	push   edi
	push %esi
 8048665:	56                   	push   esi
	push %edx
 8048666:	52                   	push   edx
	push %ebx
 8048667:	53                   	push   ebx
	push %ecx
 8048668:	51                   	push   ecx
	push %eax
 8048669:	50                   	push   eax
	pushfl
 804866a:	9c                   	pushf  
	
	mov cur, %eax
 804866b:	a1 28 a0 04 08       	mov    eax,ds:0x804a028
	mov %esp, task(, %eax, 4)
 8048670:	89 24 85 2c a0 04 08 	mov    DWORD PTR [eax*4+0x804a02c],esp
	
	mov 8(%ebp), %eax
 8048677:	8b 45 08             	mov    eax,DWORD PTR [ebp+0x8]
	mov %eax, cur
 804867a:	a3 28 a0 04 08       	mov    ds:0x804a028,eax
	mov task(, %eax, 4), %esp
 804867f:	8b 24 85 2c a0 04 08 	mov    esp,DWORD PTR [eax*4+0x804a02c]
	
	popfl
 8048686:	9d                   	popf   
	pop %eax
 8048687:	58                   	pop    eax
	pop %ecx
 8048688:	59                   	pop    ecx
	pop %ebx
 8048689:	5b                   	pop    ebx
	pop %edx
 804868a:	5a                   	pop    edx
	pop %esi
 804868b:	5e                   	pop    esi
	pop %edi
 804868c:	5f                   	pop    edi
	
	pop %ebp
 804868d:	5d                   	pop    ebp
	
	ret
 804868e:	c3                   	ret    
 804868f:	90                   	nop

08048690 <__libc_csu_init>:
 8048690:	55                   	push   ebp
 8048691:	57                   	push   edi
 8048692:	56                   	push   esi
 8048693:	53                   	push   ebx
 8048694:	e8 07 fd ff ff       	call   80483a0 <__x86.get_pc_thunk.bx>
 8048699:	81 c3 67 19 00 00    	add    ebx,0x1967
 804869f:	83 ec 0c             	sub    esp,0xc
 80486a2:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
 80486a6:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 80486ac:	e8 3b fc ff ff       	call   80482ec <_init>
 80486b1:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 80486b7:	29 c6                	sub    esi,eax
 80486b9:	c1 fe 02             	sar    esi,0x2
 80486bc:	85 f6                	test   esi,esi
 80486be:	74 25                	je     80486e5 <__libc_csu_init+0x55>
 80486c0:	31 ff                	xor    edi,edi
 80486c2:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 80486c8:	83 ec 04             	sub    esp,0x4
 80486cb:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 80486cf:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 80486d3:	55                   	push   ebp
 80486d4:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 80486db:	83 c7 01             	add    edi,0x1
 80486de:	83 c4 10             	add    esp,0x10
 80486e1:	39 f7                	cmp    edi,esi
 80486e3:	75 e3                	jne    80486c8 <__libc_csu_init+0x38>
 80486e5:	83 c4 0c             	add    esp,0xc
 80486e8:	5b                   	pop    ebx
 80486e9:	5e                   	pop    esi
 80486ea:	5f                   	pop    edi
 80486eb:	5d                   	pop    ebp
 80486ec:	c3                   	ret    
 80486ed:	8d 76 00             	lea    esi,[esi+0x0]

080486f0 <__libc_csu_fini>:
 80486f0:	f3 c3                	repz ret 

Disassembly of section .fini:

080486f4 <_fini>:
 80486f4:	53                   	push   ebx
 80486f5:	83 ec 08             	sub    esp,0x8
 80486f8:	e8 a3 fc ff ff       	call   80483a0 <__x86.get_pc_thunk.bx>
 80486fd:	81 c3 03 19 00 00    	add    ebx,0x1903
 8048703:	83 c4 08             	add    esp,0x8
 8048706:	5b                   	pop    ebx
 8048707:	c3                   	ret    
