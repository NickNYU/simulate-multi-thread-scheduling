
main:     file format elf32-i386


Disassembly of section .init:

080482c8 <_init>:
 80482c8:	53                   	push   ebx
 80482c9:	83 ec 08             	sub    esp,0x8
 80482cc:	e8 9f 00 00 00       	call   8048370 <__x86.get_pc_thunk.bx>
 80482d1:	81 c3 2f 1d 00 00    	add    ebx,0x1d2f
 80482d7:	8b 83 fc ff ff ff    	mov    eax,DWORD PTR [ebx-0x4]
 80482dd:	85 c0                	test   eax,eax
 80482df:	74 05                	je     80482e6 <_init+0x1e>
 80482e1:	e8 4a 00 00 00       	call   8048330 <__libc_start_main@plt+0x10>
 80482e6:	83 c4 08             	add    esp,0x8
 80482e9:	5b                   	pop    ebx
 80482ea:	c3                   	ret    

Disassembly of section .plt:

080482f0 <sleep@plt-0x10>:
 80482f0:	ff 35 04 a0 04 08    	push   DWORD PTR ds:0x804a004
 80482f6:	ff 25 08 a0 04 08    	jmp    DWORD PTR ds:0x804a008
 80482fc:	00 00                	add    BYTE PTR [eax],al
	...

08048300 <sleep@plt>:
 8048300:	ff 25 0c a0 04 08    	jmp    DWORD PTR ds:0x804a00c
 8048306:	68 00 00 00 00       	push   0x0
 804830b:	e9 e0 ff ff ff       	jmp    80482f0 <_init+0x28>

08048310 <puts@plt>:
 8048310:	ff 25 10 a0 04 08    	jmp    DWORD PTR ds:0x804a010
 8048316:	68 08 00 00 00       	push   0x8
 804831b:	e9 d0 ff ff ff       	jmp    80482f0 <_init+0x28>

08048320 <__libc_start_main@plt>:
 8048320:	ff 25 14 a0 04 08    	jmp    DWORD PTR ds:0x804a014
 8048326:	68 10 00 00 00       	push   0x10
 804832b:	e9 c0 ff ff ff       	jmp    80482f0 <_init+0x28>

Disassembly of section .plt.got:

08048330 <.plt.got>:
 8048330:	ff 25 fc 9f 04 08    	jmp    DWORD PTR ds:0x8049ffc
 8048336:	66 90                	xchg   ax,ax

Disassembly of section .text:

08048340 <_start>:
 8048340:	31 ed                	xor    ebp,ebp
 8048342:	5e                   	pop    esi
 8048343:	89 e1                	mov    ecx,esp
 8048345:	83 e4 f0             	and    esp,0xfffffff0
 8048348:	50                   	push   eax
 8048349:	54                   	push   esp
 804834a:	52                   	push   edx
 804834b:	68 00 85 04 08       	push   0x8048500
 8048350:	68 a0 84 04 08       	push   0x80484a0
 8048355:	51                   	push   ecx
 8048356:	56                   	push   esi
 8048357:	68 60 84 04 08       	push   0x8048460
 804835c:	e8 bf ff ff ff       	call   8048320 <__libc_start_main@plt>
 8048361:	f4                   	hlt    
 8048362:	66 90                	xchg   ax,ax
 8048364:	66 90                	xchg   ax,ax
 8048366:	66 90                	xchg   ax,ax
 8048368:	66 90                	xchg   ax,ax
 804836a:	66 90                	xchg   ax,ax
 804836c:	66 90                	xchg   ax,ax
 804836e:	66 90                	xchg   ax,ax

08048370 <__x86.get_pc_thunk.bx>:
 8048370:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
 8048373:	c3                   	ret    
 8048374:	66 90                	xchg   ax,ax
 8048376:	66 90                	xchg   ax,ax
 8048378:	66 90                	xchg   ax,ax
 804837a:	66 90                	xchg   ax,ax
 804837c:	66 90                	xchg   ax,ax
 804837e:	66 90                	xchg   ax,ax

08048380 <deregister_tm_clones>:
 8048380:	b8 23 a0 04 08       	mov    eax,0x804a023
 8048385:	2d 20 a0 04 08       	sub    eax,0x804a020
 804838a:	83 f8 06             	cmp    eax,0x6
 804838d:	76 1a                	jbe    80483a9 <deregister_tm_clones+0x29>
 804838f:	b8 00 00 00 00       	mov    eax,0x0
 8048394:	85 c0                	test   eax,eax
 8048396:	74 11                	je     80483a9 <deregister_tm_clones+0x29>
 8048398:	55                   	push   ebp
 8048399:	89 e5                	mov    ebp,esp
 804839b:	83 ec 14             	sub    esp,0x14
 804839e:	68 20 a0 04 08       	push   0x804a020
 80483a3:	ff d0                	call   eax
 80483a5:	83 c4 10             	add    esp,0x10
 80483a8:	c9                   	leave  
 80483a9:	f3 c3                	repz ret 
 80483ab:	90                   	nop
 80483ac:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

080483b0 <register_tm_clones>:
 80483b0:	b8 20 a0 04 08       	mov    eax,0x804a020
 80483b5:	2d 20 a0 04 08       	sub    eax,0x804a020
 80483ba:	c1 f8 02             	sar    eax,0x2
 80483bd:	89 c2                	mov    edx,eax
 80483bf:	c1 ea 1f             	shr    edx,0x1f
 80483c2:	01 d0                	add    eax,edx
 80483c4:	d1 f8                	sar    eax,1
 80483c6:	74 1b                	je     80483e3 <register_tm_clones+0x33>
 80483c8:	ba 00 00 00 00       	mov    edx,0x0
 80483cd:	85 d2                	test   edx,edx
 80483cf:	74 12                	je     80483e3 <register_tm_clones+0x33>
 80483d1:	55                   	push   ebp
 80483d2:	89 e5                	mov    ebp,esp
 80483d4:	83 ec 10             	sub    esp,0x10
 80483d7:	50                   	push   eax
 80483d8:	68 20 a0 04 08       	push   0x804a020
 80483dd:	ff d2                	call   edx
 80483df:	83 c4 10             	add    esp,0x10
 80483e2:	c9                   	leave  
 80483e3:	f3 c3                	repz ret 
 80483e5:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]
 80483e9:	8d bc 27 00 00 00 00 	lea    edi,[edi+eiz*1+0x0]

080483f0 <__do_global_dtors_aux>:
 80483f0:	80 3d 20 a0 04 08 00 	cmp    BYTE PTR ds:0x804a020,0x0
 80483f7:	75 13                	jne    804840c <__do_global_dtors_aux+0x1c>
 80483f9:	55                   	push   ebp
 80483fa:	89 e5                	mov    ebp,esp
 80483fc:	83 ec 08             	sub    esp,0x8
 80483ff:	e8 7c ff ff ff       	call   8048380 <deregister_tm_clones>
 8048404:	c6 05 20 a0 04 08 01 	mov    BYTE PTR ds:0x804a020,0x1
 804840b:	c9                   	leave  
 804840c:	f3 c3                	repz ret 
 804840e:	66 90                	xchg   ax,ax

08048410 <frame_dummy>:
 8048410:	b8 10 9f 04 08       	mov    eax,0x8049f10
 8048415:	8b 10                	mov    edx,DWORD PTR [eax]
 8048417:	85 d2                	test   edx,edx
 8048419:	75 05                	jne    8048420 <frame_dummy+0x10>
 804841b:	eb 93                	jmp    80483b0 <register_tm_clones>
 804841d:	8d 76 00             	lea    esi,[esi+0x0]
 8048420:	ba 00 00 00 00       	mov    edx,0x0
 8048425:	85 d2                	test   edx,edx
 8048427:	74 f2                	je     804841b <frame_dummy+0xb>
 8048429:	55                   	push   ebp
 804842a:	89 e5                	mov    ebp,esp
 804842c:	83 ec 14             	sub    esp,0x14
 804842f:	50                   	push   eax
 8048430:	ff d2                	call   edx
 8048432:	83 c4 10             	add    esp,0x10
 8048435:	c9                   	leave  
 8048436:	e9 75 ff ff ff       	jmp    80483b0 <register_tm_clones>

0804843b <fun>:
#include <stdio.h>
#include <unistd.h>


void fun() {
 804843b:	55                   	push   ebp
 804843c:	89 e5                	mov    ebp,esp
 804843e:	83 ec 08             	sub    esp,0x8
	while(1) {
		printf("I'm - fun \n");
 8048441:	83 ec 0c             	sub    esp,0xc
 8048444:	68 20 85 04 08       	push   0x8048520
 8048449:	e8 c2 fe ff ff       	call   8048310 <puts@plt>
 804844e:	83 c4 10             	add    esp,0x10
		sleep(1);
 8048451:	83 ec 0c             	sub    esp,0xc
 8048454:	6a 01                	push   0x1
 8048456:	e8 a5 fe ff ff       	call   8048300 <sleep@plt>
 804845b:	83 c4 10             	add    esp,0x10
	}
 804845e:	eb e1                	jmp    8048441 <fun+0x6>

08048460 <main>:
}


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
 8048490:	c9                   	leave  
 8048491:	c3                   	ret    
 8048492:	66 90                	xchg   ax,ax
 8048494:	66 90                	xchg   ax,ax
 8048496:	66 90                	xchg   ax,ax
 8048498:	66 90                	xchg   ax,ax
 804849a:	66 90                	xchg   ax,ax
 804849c:	66 90                	xchg   ax,ax
 804849e:	66 90                	xchg   ax,ax

080484a0 <__libc_csu_init>:
 80484a0:	55                   	push   ebp
 80484a1:	57                   	push   edi
 80484a2:	56                   	push   esi
 80484a3:	53                   	push   ebx
 80484a4:	e8 c7 fe ff ff       	call   8048370 <__x86.get_pc_thunk.bx>
 80484a9:	81 c3 57 1b 00 00    	add    ebx,0x1b57
 80484af:	83 ec 0c             	sub    esp,0xc
 80484b2:	8b 6c 24 20          	mov    ebp,DWORD PTR [esp+0x20]
 80484b6:	8d b3 0c ff ff ff    	lea    esi,[ebx-0xf4]
 80484bc:	e8 07 fe ff ff       	call   80482c8 <_init>
 80484c1:	8d 83 08 ff ff ff    	lea    eax,[ebx-0xf8]
 80484c7:	29 c6                	sub    esi,eax
 80484c9:	c1 fe 02             	sar    esi,0x2
 80484cc:	85 f6                	test   esi,esi
 80484ce:	74 25                	je     80484f5 <__libc_csu_init+0x55>
 80484d0:	31 ff                	xor    edi,edi
 80484d2:	8d b6 00 00 00 00    	lea    esi,[esi+0x0]
 80484d8:	83 ec 04             	sub    esp,0x4
 80484db:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 80484df:	ff 74 24 2c          	push   DWORD PTR [esp+0x2c]
 80484e3:	55                   	push   ebp
 80484e4:	ff 94 bb 08 ff ff ff 	call   DWORD PTR [ebx+edi*4-0xf8]
 80484eb:	83 c7 01             	add    edi,0x1
 80484ee:	83 c4 10             	add    esp,0x10
 80484f1:	39 f7                	cmp    edi,esi
 80484f3:	75 e3                	jne    80484d8 <__libc_csu_init+0x38>
 80484f5:	83 c4 0c             	add    esp,0xc
 80484f8:	5b                   	pop    ebx
 80484f9:	5e                   	pop    esi
 80484fa:	5f                   	pop    edi
 80484fb:	5d                   	pop    ebp
 80484fc:	c3                   	ret    
 80484fd:	8d 76 00             	lea    esi,[esi+0x0]

08048500 <__libc_csu_fini>:
 8048500:	f3 c3                	repz ret 

Disassembly of section .fini:

08048504 <_fini>:
 8048504:	53                   	push   ebx
 8048505:	83 ec 08             	sub    esp,0x8
 8048508:	e8 63 fe ff ff       	call   8048370 <__x86.get_pc_thunk.bx>
 804850d:	81 c3 f3 1a 00 00    	add    ebx,0x1af3
 8048513:	83 c4 08             	add    esp,0x8
 8048516:	5b                   	pop    ebx
 8048517:	c3                   	ret    
 
 
