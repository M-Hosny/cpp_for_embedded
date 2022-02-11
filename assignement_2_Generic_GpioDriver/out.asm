
Assign2/out.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret    
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 a5 35 00 00 	mov    0x35a5(%rip),%rax        # 1400045c0 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 a6 35 00 00 	mov    0x35a6(%rip),%rax        # 1400045d0 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 a9 35 00 00 	mov    0x35a9(%rip),%rax        # 1400045e0 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 1c 35 00 00 	mov    0x351c(%rip),%rax        # 140004560 <.refptr.__image_base__>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 4f 35 00 00 	mov    0x354f(%rip),%rax        # 1400045b0 <.refptr.__mingw_app_type>
   140001061:	89 0d b9 5f 00 00    	mov    %ecx,0x5fb9(%rip)        # 140007020 <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 21 1d 00 00       	call   140002d98 <__set_app_type>
   140001077:	e8 94 1c 00 00       	call   140002d10 <__p__fmode>
   14000107c:	48 8b 15 fd 35 00 00 	mov    0x35fd(%rip),%rdx        # 140004680 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 94 1c 00 00       	call   140002d20 <__p__commode>
   14000108c:	48 8b 15 cd 35 00 00 	mov    0x35cd(%rip),%rdx        # 140004660 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 84 0c 00 00       	call   140001d20 <_setargv>
   14000109c:	48 8b 05 4d 34 00 00 	mov    0x344d(%rip),%rax        # 1400044f0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret    
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 de 1c 00 00       	call   140002d98 <__set_app_type>
   1400010ba:	eb bb                	jmp    140001077 <pre_c_init+0x67>
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010c9:	74 45                	je     140001110 <pre_c_init+0x100>
   1400010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010d0:	75 88                	jne    14000105a <pre_c_init+0x4a>
   1400010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010d9:	0f 86 7b ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   1400010df:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010e5:	31 c9                	xor    %ecx,%ecx
   1400010e7:	85 d2                	test   %edx,%edx
   1400010e9:	0f 95 c1             	setne  %cl
   1400010ec:	e9 69 ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   1400010f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400010f8:	48 8b 0d a1 35 00 00 	mov    0x35a1(%rip),%rcx        # 1400046a0 <.refptr._matherr>
   1400010ff:	e8 7c 13 00 00       	call   140002480 <__mingw_setusermatherr>
   140001104:	31 c0                	xor    %eax,%eax
   140001106:	48 83 c4 28          	add    $0x28,%rsp
   14000110a:	c3                   	ret    
   14000110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001110:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001114:	0f 86 40 ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   14000111a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001121:	31 c9                	xor    %ecx,%ecx
   140001123:	45 85 c0             	test   %r8d,%r8d
   140001126:	0f 95 c1             	setne  %cl
   140001129:	e9 2c ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   14000112e:	66 90                	xchg   %ax,%ax

0000000140001130 <pre_cpp_init>:
   140001130:	48 83 ec 38          	sub    $0x38,%rsp
   140001134:	48 8b 05 75 35 00 00 	mov    0x3575(%rip),%rax        # 1400046b0 <.refptr._newmode>
   14000113b:	4c 8d 05 e6 5e 00 00 	lea    0x5ee6(%rip),%r8        # 140007028 <envp>
   140001142:	48 8d 15 e7 5e 00 00 	lea    0x5ee7(%rip),%rdx        # 140007030 <argv>
   140001149:	48 8d 0d e8 5e 00 00 	lea    0x5ee8(%rip),%rcx        # 140007038 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 c0 5e 00 00    	mov    %eax,0x5ec0(%rip)        # 140007018 <startinfo>
   140001158:	48 8d 05 b9 5e 00 00 	lea    0x5eb9(%rip),%rax        # 140007018 <startinfo>
   14000115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001164:	48 8b 05 05 35 00 00 	mov    0x3505(%rip),%rax        # 140004670 <.refptr._dowildcard>
   14000116b:	44 8b 08             	mov    (%rax),%r9d
   14000116e:	e8 15 1c 00 00       	call   140002d88 <__getmainargs>
   140001173:	90                   	nop
   140001174:	48 83 c4 38          	add    $0x38,%rsp
   140001178:	c3                   	ret    
   140001179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001180 <__tmainCRTStartup>:
   140001180:	41 55                	push   %r13
   140001182:	41 54                	push   %r12
   140001184:	55                   	push   %rbp
   140001185:	57                   	push   %rdi
   140001186:	56                   	push   %rsi
   140001187:	53                   	push   %rbx
   140001188:	48 81 ec 98 00 00 00 	sub    $0x98,%rsp
   14000118f:	b9 0d 00 00 00       	mov    $0xd,%ecx
   140001194:	31 c0                	xor    %eax,%eax
   140001196:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
   14000119b:	4c 89 c7             	mov    %r8,%rdi
   14000119e:	f3 48 ab             	rep stos %rax,%es:(%rdi)
   1400011a1:	48 8b 3d 08 34 00 00 	mov    0x3408(%rip),%rdi        # 1400045b0 <.refptr.__mingw_app_type>
   1400011a8:	44 8b 0f             	mov    (%rdi),%r9d
   1400011ab:	45 85 c9             	test   %r9d,%r9d
   1400011ae:	0f 85 9c 02 00 00    	jne    140001450 <__tmainCRTStartup+0x2d0>
   1400011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011bb:	00 00 
   1400011bd:	48 8b 1d 3c 34 00 00 	mov    0x343c(%rip),%rbx        # 140004600 <.refptr.__native_startup_lock>
   1400011c4:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011c8:	31 ed                	xor    %ebp,%ebp
   1400011ca:	4c 8b 25 6b 70 00 00 	mov    0x706b(%rip),%r12        # 14000823c <__imp_Sleep>
   1400011d1:	eb 16                	jmp    1400011e9 <__tmainCRTStartup+0x69>
   1400011d3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400011d8:	48 39 c6             	cmp    %rax,%rsi
   1400011db:	0f 84 17 02 00 00    	je     1400013f8 <__tmainCRTStartup+0x278>
   1400011e1:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011e6:	41 ff d4             	call   *%r12
   1400011e9:	48 89 e8             	mov    %rbp,%rax
   1400011ec:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   1400011f1:	48 85 c0             	test   %rax,%rax
   1400011f4:	75 e2                	jne    1400011d8 <__tmainCRTStartup+0x58>
   1400011f6:	48 8b 35 13 34 00 00 	mov    0x3413(%rip),%rsi        # 140004610 <.refptr.__native_startup_state>
   1400011fd:	31 ed                	xor    %ebp,%ebp
   1400011ff:	8b 06                	mov    (%rsi),%eax
   140001201:	83 f8 01             	cmp    $0x1,%eax
   140001204:	0f 84 05 02 00 00    	je     14000140f <__tmainCRTStartup+0x28f>
   14000120a:	8b 06                	mov    (%rsi),%eax
   14000120c:	85 c0                	test   %eax,%eax
   14000120e:	0f 84 6c 02 00 00    	je     140001480 <__tmainCRTStartup+0x300>
   140001214:	c7 05 fe 5d 00 00 01 	movl   $0x1,0x5dfe(%rip)        # 14000701c <has_cctor>
   14000121b:	00 00 00 
   14000121e:	8b 06                	mov    (%rsi),%eax
   140001220:	83 f8 01             	cmp    $0x1,%eax
   140001223:	0f 84 fb 01 00 00    	je     140001424 <__tmainCRTStartup+0x2a4>
   140001229:	85 ed                	test   %ebp,%ebp
   14000122b:	0f 84 14 02 00 00    	je     140001445 <__tmainCRTStartup+0x2c5>
   140001231:	48 8b 05 18 33 00 00 	mov    0x3318(%rip),%rax        # 140004550 <.refptr.__dyn_tls_init_callback>
   140001238:	48 8b 00             	mov    (%rax),%rax
   14000123b:	48 85 c0             	test   %rax,%rax
   14000123e:	74 0c                	je     14000124c <__tmainCRTStartup+0xcc>
   140001240:	45 31 c0             	xor    %r8d,%r8d
   140001243:	ba 02 00 00 00       	mov    $0x2,%edx
   140001248:	31 c9                	xor    %ecx,%ecx
   14000124a:	ff d0                	call   *%rax
   14000124c:	e8 9f 0e 00 00       	call   1400020f0 <_pei386_runtime_relocator>
   140001251:	48 8b 0d 38 34 00 00 	mov    0x3438(%rip),%rcx        # 140004690 <.refptr._gnu_exception_handler>
   140001258:	ff 15 d6 6f 00 00    	call   *0x6fd6(%rip)        # 140008234 <__imp_SetUnhandledExceptionFilter>
   14000125e:	48 8b 15 8b 33 00 00 	mov    0x338b(%rip),%rdx        # 1400045f0 <.refptr.__mingw_oldexcpt_handler>
   140001265:	48 8d 0d 94 fd ff ff 	lea    -0x26c(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   14000126c:	48 89 02             	mov    %rax,(%rdx)
   14000126f:	e8 dc 1a 00 00       	call   140002d50 <_set_invalid_parameter_handler>
   140001274:	e8 87 0c 00 00       	call   140001f00 <_fpreset>
   140001279:	48 8b 05 e0 32 00 00 	mov    0x32e0(%rip),%rax        # 140004560 <.refptr.__image_base__>
   140001280:	48 89 05 89 5d 00 00 	mov    %rax,0x5d89(%rip)        # 140007010 <__mingw_winmain_hInstance>
   140001287:	e8 a4 1a 00 00       	call   140002d30 <__p__acmdln>
   14000128c:	31 c9                	xor    %ecx,%ecx
   14000128e:	48 8b 00             	mov    (%rax),%rax
   140001291:	48 85 c0             	test   %rax,%rax
   140001294:	75 1c                	jne    1400012b2 <__tmainCRTStartup+0x132>
   140001296:	eb 58                	jmp    1400012f0 <__tmainCRTStartup+0x170>
   140001298:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000129f:	00 
   1400012a0:	84 d2                	test   %dl,%dl
   1400012a2:	74 45                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012a4:	83 e1 01             	and    $0x1,%ecx
   1400012a7:	74 27                	je     1400012d0 <__tmainCRTStartup+0x150>
   1400012a9:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400012ae:	48 83 c0 01          	add    $0x1,%rax
   1400012b2:	0f b6 10             	movzbl (%rax),%edx
   1400012b5:	80 fa 20             	cmp    $0x20,%dl
   1400012b8:	7e e6                	jle    1400012a0 <__tmainCRTStartup+0x120>
   1400012ba:	41 89 c8             	mov    %ecx,%r8d
   1400012bd:	41 83 f0 01          	xor    $0x1,%r8d
   1400012c1:	80 fa 22             	cmp    $0x22,%dl
   1400012c4:	41 0f 44 c8          	cmove  %r8d,%ecx
   1400012c8:	eb e4                	jmp    1400012ae <__tmainCRTStartup+0x12e>
   1400012ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400012d0:	84 d2                	test   %dl,%dl
   1400012d2:	74 15                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012d4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400012d8:	0f b6 50 01          	movzbl 0x1(%rax),%edx
   1400012dc:	48 83 c0 01          	add    $0x1,%rax
   1400012e0:	84 d2                	test   %dl,%dl
   1400012e2:	74 05                	je     1400012e9 <__tmainCRTStartup+0x169>
   1400012e4:	80 fa 20             	cmp    $0x20,%dl
   1400012e7:	7e ef                	jle    1400012d8 <__tmainCRTStartup+0x158>
   1400012e9:	48 89 05 18 5d 00 00 	mov    %rax,0x5d18(%rip)        # 140007008 <__mingw_winmain_lpCmdLine>
   1400012f0:	44 8b 07             	mov    (%rdi),%r8d
   1400012f3:	45 85 c0             	test   %r8d,%r8d
   1400012f6:	74 16                	je     14000130e <__tmainCRTStartup+0x18e>
   1400012f8:	b8 0a 00 00 00       	mov    $0xa,%eax
   1400012fd:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
   140001302:	0f 85 e0 00 00 00    	jne    1400013e8 <__tmainCRTStartup+0x268>
   140001308:	89 05 f2 1c 00 00    	mov    %eax,0x1cf2(%rip)        # 140003000 <__data_start__>
   14000130e:	48 63 2d 23 5d 00 00 	movslq 0x5d23(%rip),%rbp        # 140007038 <argc>
   140001315:	44 8d 65 01          	lea    0x1(%rbp),%r12d
   140001319:	4d 63 e4             	movslq %r12d,%r12
   14000131c:	49 c1 e4 03          	shl    $0x3,%r12
   140001320:	4c 89 e1             	mov    %r12,%rcx
   140001323:	e8 d0 1a 00 00       	call   140002df8 <malloc>
   140001328:	4c 8b 2d 01 5d 00 00 	mov    0x5d01(%rip),%r13        # 140007030 <argv>
   14000132f:	48 89 c7             	mov    %rax,%rdi
   140001332:	85 ed                	test   %ebp,%ebp
   140001334:	7e 42                	jle    140001378 <__tmainCRTStartup+0x1f8>
   140001336:	31 db                	xor    %ebx,%ebx
   140001338:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000133f:	00 
   140001340:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
   140001345:	e8 c6 1a 00 00       	call   140002e10 <strlen>
   14000134a:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000134e:	48 89 f1             	mov    %rsi,%rcx
   140001351:	e8 a2 1a 00 00       	call   140002df8 <malloc>
   140001356:	49 89 f0             	mov    %rsi,%r8
   140001359:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
   14000135d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
   140001362:	48 89 c1             	mov    %rax,%rcx
   140001365:	48 83 c3 01          	add    $0x1,%rbx
   140001369:	e8 92 1a 00 00       	call   140002e00 <memcpy>
   14000136e:	48 39 dd             	cmp    %rbx,%rbp
   140001371:	75 cd                	jne    140001340 <__tmainCRTStartup+0x1c0>
   140001373:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
   140001378:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   14000137f:	48 89 3d aa 5c 00 00 	mov    %rdi,0x5caa(%rip)        # 140007030 <argv>
   140001386:	e8 75 09 00 00       	call   140001d00 <__main>
   14000138b:	48 8b 05 de 31 00 00 	mov    0x31de(%rip),%rax        # 140004570 <.refptr.__imp___initenv>
   140001392:	4c 8b 05 8f 5c 00 00 	mov    0x5c8f(%rip),%r8        # 140007028 <envp>
   140001399:	8b 0d 99 5c 00 00    	mov    0x5c99(%rip),%ecx        # 140007038 <argc>
   14000139f:	48 8b 00             	mov    (%rax),%rax
   1400013a2:	4c 89 00             	mov    %r8,(%rax)
   1400013a5:	48 8b 15 84 5c 00 00 	mov    0x5c84(%rip),%rdx        # 140007030 <argv>
   1400013ac:	e8 cf 06 00 00       	call   140001a80 <main>
   1400013b1:	8b 0d 69 5c 00 00    	mov    0x5c69(%rip),%ecx        # 140007020 <managedapp>
   1400013b7:	89 05 67 5c 00 00    	mov    %eax,0x5c67(%rip)        # 140007024 <mainret>
   1400013bd:	85 c9                	test   %ecx,%ecx
   1400013bf:	0f 84 d9 00 00 00    	je     14000149e <__tmainCRTStartup+0x31e>
   1400013c5:	8b 15 51 5c 00 00    	mov    0x5c51(%rip),%edx        # 14000701c <has_cctor>
   1400013cb:	85 d2                	test   %edx,%edx
   1400013cd:	0f 84 8d 00 00 00    	je     140001460 <__tmainCRTStartup+0x2e0>
   1400013d3:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   1400013da:	5b                   	pop    %rbx
   1400013db:	5e                   	pop    %rsi
   1400013dc:	5f                   	pop    %rdi
   1400013dd:	5d                   	pop    %rbp
   1400013de:	41 5c                	pop    %r12
   1400013e0:	41 5d                	pop    %r13
   1400013e2:	c3                   	ret    
   1400013e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400013e8:	0f b7 44 24 60       	movzwl 0x60(%rsp),%eax
   1400013ed:	e9 16 ff ff ff       	jmp    140001308 <__tmainCRTStartup+0x188>
   1400013f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400013f8:	48 8b 35 11 32 00 00 	mov    0x3211(%rip),%rsi        # 140004610 <.refptr.__native_startup_state>
   1400013ff:	bd 01 00 00 00       	mov    $0x1,%ebp
   140001404:	8b 06                	mov    (%rsi),%eax
   140001406:	83 f8 01             	cmp    $0x1,%eax
   140001409:	0f 85 fb fd ff ff    	jne    14000120a <__tmainCRTStartup+0x8a>
   14000140f:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   140001414:	e8 8f 19 00 00       	call   140002da8 <_amsg_exit>
   140001419:	8b 06                	mov    (%rsi),%eax
   14000141b:	83 f8 01             	cmp    $0x1,%eax
   14000141e:	0f 85 05 fe ff ff    	jne    140001229 <__tmainCRTStartup+0xa9>
   140001424:	48 8b 15 05 32 00 00 	mov    0x3205(%rip),%rdx        # 140004630 <.refptr.__xc_z>
   14000142b:	48 8b 0d ee 31 00 00 	mov    0x31ee(%rip),%rcx        # 140004620 <.refptr.__xc_a>
   140001432:	e8 81 19 00 00       	call   140002db8 <_initterm>
   140001437:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   14000143d:	85 ed                	test   %ebp,%ebp
   14000143f:	0f 85 ec fd ff ff    	jne    140001231 <__tmainCRTStartup+0xb1>
   140001445:	31 c0                	xor    %eax,%eax
   140001447:	48 87 03             	xchg   %rax,(%rbx)
   14000144a:	e9 e2 fd ff ff       	jmp    140001231 <__tmainCRTStartup+0xb1>
   14000144f:	90                   	nop
   140001450:	4c 89 c1             	mov    %r8,%rcx
   140001453:	ff 15 c3 6d 00 00    	call   *0x6dc3(%rip)        # 14000821c <__imp_GetStartupInfoA>
   140001459:	e9 56 fd ff ff       	jmp    1400011b4 <__tmainCRTStartup+0x34>
   14000145e:	66 90                	xchg   %ax,%ax
   140001460:	e8 4b 19 00 00       	call   140002db0 <_cexit>
   140001465:	8b 05 b9 5b 00 00    	mov    0x5bb9(%rip),%eax        # 140007024 <mainret>
   14000146b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140001472:	5b                   	pop    %rbx
   140001473:	5e                   	pop    %rsi
   140001474:	5f                   	pop    %rdi
   140001475:	5d                   	pop    %rbp
   140001476:	41 5c                	pop    %r12
   140001478:	41 5d                	pop    %r13
   14000147a:	c3                   	ret    
   14000147b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001480:	48 8b 15 c9 31 00 00 	mov    0x31c9(%rip),%rdx        # 140004650 <.refptr.__xi_z>
   140001487:	48 8b 0d b2 31 00 00 	mov    0x31b2(%rip),%rcx        # 140004640 <.refptr.__xi_a>
   14000148e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   140001494:	e8 1f 19 00 00       	call   140002db8 <_initterm>
   140001499:	e9 80 fd ff ff       	jmp    14000121e <__tmainCRTStartup+0x9e>
   14000149e:	89 c1                	mov    %eax,%ecx
   1400014a0:	e8 33 19 00 00       	call   140002dd8 <exit>
   1400014a5:	90                   	nop
   1400014a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400014ad:	00 00 00 

00000001400014b0 <WinMainCRTStartup>:
   1400014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014b4 <.l_startw>:
   1400014b4:	48 8b 05 f5 30 00 00 	mov    0x30f5(%rip),%rax        # 1400045b0 <.refptr.__mingw_app_type>
   1400014bb:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400014c1:	e8 ba fc ff ff       	call   140001180 <__tmainCRTStartup>
   1400014c6:	90                   	nop

00000001400014c7 <.l_endw>:
   1400014c7:	90                   	nop
   1400014c8:	48 83 c4 28          	add    $0x28,%rsp
   1400014cc:	c3                   	ret    
   1400014cd:	0f 1f 00             	nopl   (%rax)

00000001400014d0 <mainCRTStartup>:
   1400014d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014d4 <.l_start>:
   1400014d4:	48 8b 05 d5 30 00 00 	mov    0x30d5(%rip),%rax        # 1400045b0 <.refptr.__mingw_app_type>
   1400014db:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   1400014e1:	e8 9a fc ff ff       	call   140001180 <__tmainCRTStartup>
   1400014e6:	90                   	nop

00000001400014e7 <.l_end>:
   1400014e7:	90                   	nop
   1400014e8:	48 83 c4 28          	add    $0x28,%rsp
   1400014ec:	c3                   	ret    
   1400014ed:	0f 1f 00             	nopl   (%rax)

00000001400014f0 <atexit>:
   1400014f0:	48 83 ec 28          	sub    $0x28,%rsp
   1400014f4:	e8 c7 18 00 00       	call   140002dc0 <_onexit>
   1400014f9:	48 83 f8 01          	cmp    $0x1,%rax
   1400014fd:	19 c0                	sbb    %eax,%eax
   1400014ff:	48 83 c4 28          	add    $0x28,%rsp
   140001503:	c3                   	ret    
   140001504:	90                   	nop
   140001505:	90                   	nop
   140001506:	90                   	nop
   140001507:	90                   	nop
   140001508:	90                   	nop
   140001509:	90                   	nop
   14000150a:	90                   	nop
   14000150b:	90                   	nop
   14000150c:	90                   	nop
   14000150d:	90                   	nop
   14000150e:	90                   	nop
   14000150f:	90                   	nop

0000000140001510 <__gcc_register_frame>:
   140001510:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001520 <__gcc_deregister_frame>
   140001517:	e9 d4 ff ff ff       	jmp    1400014f0 <atexit>
   14000151c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001520 <__gcc_deregister_frame>:
   140001520:	c3                   	ret    
   140001521:	90                   	nop
   140001522:	90                   	nop
   140001523:	90                   	nop
   140001524:	90                   	nop
   140001525:	90                   	nop
   140001526:	90                   	nop
   140001527:	90                   	nop
   140001528:	90                   	nop
   140001529:	90                   	nop
   14000152a:	90                   	nop
   14000152b:	90                   	nop
   14000152c:	90                   	nop
   14000152d:	90                   	nop
   14000152e:	90                   	nop
#include "GPIO.hpp"
#include <iostream>
using std::cout;
using std::cin;
using std::endl;
GPIO_Driver::GPIO_Driver()
   14000152f:	90                   	nop

0000000140001530 <_ZN11GPIO_DriverC1Ev>:
   140001530:	55                   	push   %rbp
   140001531:	48 89 e5             	mov    %rsp,%rbp
   140001534:	48 83 ec 20          	sub    $0x20,%rsp
   140001538:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000153c:	48 8d 15 2d 32 00 00 	lea    0x322d(%rip),%rdx        # 140004770 <_ZTV11GPIO_Driver+0x10>
   140001543:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001547:	48 89 10             	mov    %rdx,(%rax)
{
    cout<<"Generic GPIO Driver Construtor"<<endl;
   14000154a:	48 8d 05 af 2a 00 00 	lea    0x2aaf(%rip),%rax        # 140004000 <.rdata>
   140001551:	48 89 c2             	mov    %rax,%rdx
   140001554:	48 8b 05 a5 2f 00 00 	mov    0x2fa5(%rip),%rax        # 140004500 <__fu3__ZSt4cout>
   14000155b:	48 89 c1             	mov    %rax,%rcx
   14000155e:	e8 b5 06 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001563:	48 89 c1             	mov    %rax,%rcx
   140001566:	48 8b 05 a3 2f 00 00 	mov    0x2fa3(%rip),%rax        # 140004510 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000156d:	48 89 c2             	mov    %rax,%rdx
   140001570:	e8 d3 06 00 00       	call   140001c48 <_ZNSolsEPFRSoS_E>
}
   140001575:	90                   	nop
   140001576:	48 83 c4 20          	add    $0x20,%rsp
   14000157a:	5d                   	pop    %rbp
   14000157b:	c3                   	ret    

000000014000157c <_ZN11GPIO_DriverD1Ev>:
GPIO_Driver::~GPIO_Driver()
   14000157c:	55                   	push   %rbp
   14000157d:	48 89 e5             	mov    %rsp,%rbp
   140001580:	48 83 ec 20          	sub    $0x20,%rsp
   140001584:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001588:	48 8d 15 e1 31 00 00 	lea    0x31e1(%rip),%rdx        # 140004770 <_ZTV11GPIO_Driver+0x10>
   14000158f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   140001593:	48 89 10             	mov    %rdx,(%rax)
{
    cout<<"Generic GPIO Driver destrutor"<<endl;
   140001596:	48 8d 05 82 2a 00 00 	lea    0x2a82(%rip),%rax        # 14000401f <.rdata+0x1f>
   14000159d:	48 89 c2             	mov    %rax,%rdx
   1400015a0:	48 8b 05 59 2f 00 00 	mov    0x2f59(%rip),%rax        # 140004500 <__fu3__ZSt4cout>
   1400015a7:	48 89 c1             	mov    %rax,%rcx
   1400015aa:	e8 69 06 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400015af:	48 89 c1             	mov    %rax,%rcx
   1400015b2:	48 8b 05 57 2f 00 00 	mov    0x2f57(%rip),%rax        # 140004510 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400015b9:	48 89 c2             	mov    %rax,%rdx
   1400015bc:	e8 87 06 00 00       	call   140001c48 <_ZNSolsEPFRSoS_E>
}
   1400015c1:	90                   	nop
   1400015c2:	48 83 c4 20          	add    $0x20,%rsp
   1400015c6:	5d                   	pop    %rbp
   1400015c7:	c3                   	ret    

00000001400015c8 <_ZN8GPIO_AVRC1Ev>:
GPIO_AVR::GPIO_AVR()
   1400015c8:	55                   	push   %rbp
   1400015c9:	53                   	push   %rbx
   1400015ca:	48 83 ec 28          	sub    $0x28,%rsp
   1400015ce:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   1400015d3:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   1400015d7:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400015db:	48 89 c1             	mov    %rax,%rcx
   1400015de:	e8 4d ff ff ff       	call   140001530 <_ZN11GPIO_DriverC1Ev>
   1400015e3:	48 8d 15 e6 31 00 00 	lea    0x31e6(%rip),%rdx        # 1400047d0 <_ZTV8GPIO_AVR+0x10>
   1400015ea:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400015ee:	48 89 10             	mov    %rdx,(%rax)
{
    //Initializing the atteributes related to ARM's GPIO Driver
    cout<<"AVR's GPIO Driver Object constructed"<<endl;
   1400015f1:	48 8d 05 48 2a 00 00 	lea    0x2a48(%rip),%rax        # 140004040 <.rdata+0x40>
   1400015f8:	48 89 c2             	mov    %rax,%rdx
   1400015fb:	48 8b 05 fe 2e 00 00 	mov    0x2efe(%rip),%rax        # 140004500 <__fu3__ZSt4cout>
   140001602:	48 89 c1             	mov    %rax,%rcx
   140001605:	e8 0e 06 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000160a:	48 89 c1             	mov    %rax,%rcx
   14000160d:	48 8b 05 fc 2e 00 00 	mov    0x2efc(%rip),%rax        # 140004510 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001614:	48 89 c2             	mov    %rax,%rdx
   140001617:	e8 2c 06 00 00       	call   140001c48 <_ZNSolsEPFRSoS_E>
}
   14000161c:	eb 1b                	jmp    140001639 <_ZN8GPIO_AVRC1Ev+0x71>
   14000161e:	48 89 c3             	mov    %rax,%rbx
   140001621:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140001625:	48 89 c1             	mov    %rax,%rcx
   140001628:	e8 4f ff ff ff       	call   14000157c <_ZN11GPIO_DriverD1Ev>
   14000162d:	48 89 d8             	mov    %rbx,%rax
   140001630:	48 89 c1             	mov    %rax,%rcx
   140001633:	e8 88 16 00 00       	call   140002cc0 <_Unwind_Resume>
   140001638:	90                   	nop
   140001639:	48 83 c4 28          	add    $0x28,%rsp
   14000163d:	5b                   	pop    %rbx
   14000163e:	5d                   	pop    %rbp
   14000163f:	c3                   	ret    

0000000140001640 <_ZN8GPIO_AVR4readE11Pin_No_Type>:
bool GPIO_AVR::read(Pin_No_Type pin)
{
   140001640:	55                   	push   %rbp
   140001641:	48 89 e5             	mov    %rsp,%rbp
   140001644:	48 83 ec 20          	sub    $0x20,%rsp
   140001648:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   14000164c:	89 55 18             	mov    %edx,0x18(%rbp)
    cout<<"Reading from pin No. "<<pin<<" using AVR's GPIO Driver"<<endl;
   14000164f:	48 8d 05 0f 2a 00 00 	lea    0x2a0f(%rip),%rax        # 140004065 <.rdata+0x65>
   140001656:	48 89 c2             	mov    %rax,%rdx
   140001659:	48 8b 05 a0 2e 00 00 	mov    0x2ea0(%rip),%rax        # 140004500 <__fu3__ZSt4cout>
   140001660:	48 89 c1             	mov    %rax,%rcx
   140001663:	e8 b0 05 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001668:	48 89 c1             	mov    %rax,%rcx
   14000166b:	8b 45 18             	mov    0x18(%rbp),%eax
   14000166e:	89 c2                	mov    %eax,%edx
   140001670:	e8 c3 05 00 00       	call   140001c38 <_ZNSolsEi>
   140001675:	48 89 c1             	mov    %rax,%rcx
   140001678:	48 8d 05 fc 29 00 00 	lea    0x29fc(%rip),%rax        # 14000407b <.rdata+0x7b>
   14000167f:	48 89 c2             	mov    %rax,%rdx
   140001682:	e8 91 05 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001687:	48 89 c1             	mov    %rax,%rcx
   14000168a:	48 8b 05 7f 2e 00 00 	mov    0x2e7f(%rip),%rax        # 140004510 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001691:	48 89 c2             	mov    %rax,%rdx
   140001694:	e8 af 05 00 00       	call   140001c48 <_ZNSolsEPFRSoS_E>
    return 0;
   140001699:	b8 00 00 00 00       	mov    $0x0,%eax
}
   14000169e:	48 83 c4 20          	add    $0x20,%rsp
   1400016a2:	5d                   	pop    %rbp
   1400016a3:	c3                   	ret    

00000001400016a4 <_ZN8GPIO_AVR5writeE11Pin_No_Typeb>:
void GPIO_AVR::write(Pin_No_Type pin , bool bit)
{
   1400016a4:	55                   	push   %rbp
   1400016a5:	48 89 e5             	mov    %rsp,%rbp
   1400016a8:	48 83 ec 20          	sub    $0x20,%rsp
   1400016ac:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400016b0:	89 55 18             	mov    %edx,0x18(%rbp)
   1400016b3:	44 89 c0             	mov    %r8d,%eax
   1400016b6:	88 45 20             	mov    %al,0x20(%rbp)
    cout<<"writing "<<bit<<"on pin No. "<<bit<<" using AVR's GPIO Driver"<<endl;
   1400016b9:	48 8d 05 d4 29 00 00 	lea    0x29d4(%rip),%rax        # 140004094 <.rdata+0x94>
   1400016c0:	48 89 c2             	mov    %rax,%rdx
   1400016c3:	48 8b 05 36 2e 00 00 	mov    0x2e36(%rip),%rax        # 140004500 <__fu3__ZSt4cout>
   1400016ca:	48 89 c1             	mov    %rax,%rcx
   1400016cd:	e8 46 05 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400016d2:	48 89 c1             	mov    %rax,%rcx
   1400016d5:	0f b6 45 20          	movzbl 0x20(%rbp),%eax
   1400016d9:	89 c2                	mov    %eax,%edx
   1400016db:	e8 60 05 00 00       	call   140001c40 <_ZNSolsEb>
   1400016e0:	48 89 c1             	mov    %rax,%rcx
   1400016e3:	48 8d 05 b3 29 00 00 	lea    0x29b3(%rip),%rax        # 14000409d <.rdata+0x9d>
   1400016ea:	48 89 c2             	mov    %rax,%rdx
   1400016ed:	e8 26 05 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400016f2:	48 89 c1             	mov    %rax,%rcx
   1400016f5:	0f b6 45 20          	movzbl 0x20(%rbp),%eax
   1400016f9:	89 c2                	mov    %eax,%edx
   1400016fb:	e8 40 05 00 00       	call   140001c40 <_ZNSolsEb>
   140001700:	48 89 c1             	mov    %rax,%rcx
   140001703:	48 8d 05 71 29 00 00 	lea    0x2971(%rip),%rax        # 14000407b <.rdata+0x7b>
   14000170a:	48 89 c2             	mov    %rax,%rdx
   14000170d:	e8 06 05 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001712:	48 89 c1             	mov    %rax,%rcx
   140001715:	48 8b 05 f4 2d 00 00 	mov    0x2df4(%rip),%rax        # 140004510 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000171c:	48 89 c2             	mov    %rax,%rdx
   14000171f:	e8 24 05 00 00       	call   140001c48 <_ZNSolsEPFRSoS_E>
}
   140001724:	90                   	nop
   140001725:	48 83 c4 20          	add    $0x20,%rsp
   140001729:	5d                   	pop    %rbp
   14000172a:	c3                   	ret    
   14000172b:	90                   	nop

000000014000172c <_ZN8GPIO_AVR6toggleE11Pin_No_Type>:
void GPIO_AVR::toggle(Pin_No_Type pin)
{
   14000172c:	55                   	push   %rbp
   14000172d:	48 89 e5             	mov    %rsp,%rbp
   140001730:	48 83 ec 20          	sub    $0x20,%rsp
   140001734:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001738:	89 55 18             	mov    %edx,0x18(%rbp)
    cout<<"toggling pin No. "<<pin<<"using AVR's GPIO Driver"<<endl;
   14000173b:	48 8d 05 67 29 00 00 	lea    0x2967(%rip),%rax        # 1400040a9 <.rdata+0xa9>
   140001742:	48 89 c2             	mov    %rax,%rdx
   140001745:	48 8b 05 b4 2d 00 00 	mov    0x2db4(%rip),%rax        # 140004500 <__fu3__ZSt4cout>
   14000174c:	48 89 c1             	mov    %rax,%rcx
   14000174f:	e8 c4 04 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001754:	48 89 c1             	mov    %rax,%rcx
   140001757:	8b 45 18             	mov    0x18(%rbp),%eax
   14000175a:	89 c2                	mov    %eax,%edx
   14000175c:	e8 d7 04 00 00       	call   140001c38 <_ZNSolsEi>
   140001761:	48 89 c1             	mov    %rax,%rcx
   140001764:	48 8d 05 50 29 00 00 	lea    0x2950(%rip),%rax        # 1400040bb <.rdata+0xbb>
   14000176b:	48 89 c2             	mov    %rax,%rdx
   14000176e:	e8 a5 04 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001773:	48 89 c1             	mov    %rax,%rcx
   140001776:	48 8b 05 93 2d 00 00 	mov    0x2d93(%rip),%rax        # 140004510 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   14000177d:	48 89 c2             	mov    %rax,%rdx
   140001780:	e8 c3 04 00 00       	call   140001c48 <_ZNSolsEPFRSoS_E>
}
   140001785:	90                   	nop
   140001786:	48 83 c4 20          	add    $0x20,%rsp
   14000178a:	5d                   	pop    %rbp
   14000178b:	c3                   	ret    

000000014000178c <_ZN8GPIO_AVRD1Ev>:
GPIO_AVR::~GPIO_AVR()
   14000178c:	55                   	push   %rbp
   14000178d:	48 89 e5             	mov    %rsp,%rbp
   140001790:	48 83 ec 20          	sub    $0x20,%rsp
   140001794:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001798:	48 8d 15 31 30 00 00 	lea    0x3031(%rip),%rdx        # 1400047d0 <_ZTV8GPIO_AVR+0x10>
   14000179f:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400017a3:	48 89 10             	mov    %rdx,(%rax)
{
    cout<<"AVR's GPIO Driver Object destructed"<<endl;
   1400017a6:	48 8d 05 2b 29 00 00 	lea    0x292b(%rip),%rax        # 1400040d8 <.rdata+0xd8>
   1400017ad:	48 89 c2             	mov    %rax,%rdx
   1400017b0:	48 8b 05 49 2d 00 00 	mov    0x2d49(%rip),%rax        # 140004500 <__fu3__ZSt4cout>
   1400017b7:	48 89 c1             	mov    %rax,%rcx
   1400017ba:	e8 59 04 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400017bf:	48 89 c1             	mov    %rax,%rcx
   1400017c2:	48 8b 05 47 2d 00 00 	mov    0x2d47(%rip),%rax        # 140004510 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400017c9:	48 89 c2             	mov    %rax,%rdx
   1400017cc:	e8 77 04 00 00       	call   140001c48 <_ZNSolsEPFRSoS_E>
}
   1400017d1:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400017d5:	48 89 c1             	mov    %rax,%rcx
   1400017d8:	e8 9f fd ff ff       	call   14000157c <_ZN11GPIO_DriverD1Ev>
   1400017dd:	90                   	nop
   1400017de:	48 83 c4 20          	add    $0x20,%rsp
   1400017e2:	5d                   	pop    %rbp
   1400017e3:	c3                   	ret    

00000001400017e4 <_ZN8GPIO_ARMC1Ev>:
GPIO_ARM::GPIO_ARM()
   1400017e4:	55                   	push   %rbp
   1400017e5:	53                   	push   %rbx
   1400017e6:	48 83 ec 28          	sub    $0x28,%rsp
   1400017ea:	48 8d 6c 24 20       	lea    0x20(%rsp),%rbp
   1400017ef:	48 89 4d 20          	mov    %rcx,0x20(%rbp)
   1400017f3:	48 8b 45 20          	mov    0x20(%rbp),%rax
   1400017f7:	48 89 c1             	mov    %rax,%rcx
   1400017fa:	e8 31 fd ff ff       	call   140001530 <_ZN11GPIO_DriverC1Ev>
   1400017ff:	48 8d 15 9a 2f 00 00 	lea    0x2f9a(%rip),%rdx        # 1400047a0 <_ZTV8GPIO_ARM+0x10>
   140001806:	48 8b 45 20          	mov    0x20(%rbp),%rax
   14000180a:	48 89 10             	mov    %rdx,(%rax)
{
    //Initializing the atteributes related to ARM's GPIO Driver
    cout<<"ARM's GPIO Driver Object constructed"<<endl;
   14000180d:	48 8d 05 ec 28 00 00 	lea    0x28ec(%rip),%rax        # 140004100 <.rdata+0x100>
   140001814:	48 89 c2             	mov    %rax,%rdx
   140001817:	48 8b 05 e2 2c 00 00 	mov    0x2ce2(%rip),%rax        # 140004500 <__fu3__ZSt4cout>
   14000181e:	48 89 c1             	mov    %rax,%rcx
   140001821:	e8 f2 03 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001826:	48 89 c1             	mov    %rax,%rcx
   140001829:	48 8b 05 e0 2c 00 00 	mov    0x2ce0(%rip),%rax        # 140004510 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001830:	48 89 c2             	mov    %rax,%rdx
   140001833:	e8 10 04 00 00       	call   140001c48 <_ZNSolsEPFRSoS_E>
}
   140001838:	eb 1b                	jmp    140001855 <_ZN8GPIO_ARMC1Ev+0x71>
   14000183a:	48 89 c3             	mov    %rax,%rbx
   14000183d:	48 8b 45 20          	mov    0x20(%rbp),%rax
   140001841:	48 89 c1             	mov    %rax,%rcx
   140001844:	e8 33 fd ff ff       	call   14000157c <_ZN11GPIO_DriverD1Ev>
   140001849:	48 89 d8             	mov    %rbx,%rax
   14000184c:	48 89 c1             	mov    %rax,%rcx
   14000184f:	e8 6c 14 00 00       	call   140002cc0 <_Unwind_Resume>
   140001854:	90                   	nop
   140001855:	48 83 c4 28          	add    $0x28,%rsp
   140001859:	5b                   	pop    %rbx
   14000185a:	5d                   	pop    %rbp
   14000185b:	c3                   	ret    

000000014000185c <_ZN8GPIO_ARM4readE11Pin_No_Type>:
bool GPIO_ARM::read(Pin_No_Type pin)
{
   14000185c:	55                   	push   %rbp
   14000185d:	48 89 e5             	mov    %rsp,%rbp
   140001860:	48 83 ec 20          	sub    $0x20,%rsp
   140001864:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001868:	89 55 18             	mov    %edx,0x18(%rbp)
    cout<<"Reading from pin No. "<<pin<<" using ARM's GPIO Driver"<<endl;
   14000186b:	48 8d 05 f3 27 00 00 	lea    0x27f3(%rip),%rax        # 140004065 <.rdata+0x65>
   140001872:	48 89 c2             	mov    %rax,%rdx
   140001875:	48 8b 05 84 2c 00 00 	mov    0x2c84(%rip),%rax        # 140004500 <__fu3__ZSt4cout>
   14000187c:	48 89 c1             	mov    %rax,%rcx
   14000187f:	e8 94 03 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001884:	48 89 c1             	mov    %rax,%rcx
   140001887:	8b 45 18             	mov    0x18(%rbp),%eax
   14000188a:	89 c2                	mov    %eax,%edx
   14000188c:	e8 a7 03 00 00       	call   140001c38 <_ZNSolsEi>
   140001891:	48 89 c1             	mov    %rax,%rcx
   140001894:	48 8d 05 8a 28 00 00 	lea    0x288a(%rip),%rax        # 140004125 <.rdata+0x125>
   14000189b:	48 89 c2             	mov    %rax,%rdx
   14000189e:	e8 75 03 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400018a3:	48 89 c1             	mov    %rax,%rcx
   1400018a6:	48 8b 05 63 2c 00 00 	mov    0x2c63(%rip),%rax        # 140004510 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400018ad:	48 89 c2             	mov    %rax,%rdx
   1400018b0:	e8 93 03 00 00       	call   140001c48 <_ZNSolsEPFRSoS_E>
    return 1;
   1400018b5:	b8 01 00 00 00       	mov    $0x1,%eax
}
   1400018ba:	48 83 c4 20          	add    $0x20,%rsp
   1400018be:	5d                   	pop    %rbp
   1400018bf:	c3                   	ret    

00000001400018c0 <_ZN8GPIO_ARM5writeE11Pin_No_Typeb>:
void GPIO_ARM::write(Pin_No_Type pin , bool bit)
{
   1400018c0:	55                   	push   %rbp
   1400018c1:	48 89 e5             	mov    %rsp,%rbp
   1400018c4:	48 83 ec 20          	sub    $0x20,%rsp
   1400018c8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400018cc:	89 55 18             	mov    %edx,0x18(%rbp)
   1400018cf:	44 89 c0             	mov    %r8d,%eax
   1400018d2:	88 45 20             	mov    %al,0x20(%rbp)
    cout<<"writing "<<bit<<"on pin No. "<<bit<<" using ARM's GPIO Driver"<<endl;
   1400018d5:	48 8d 05 b8 27 00 00 	lea    0x27b8(%rip),%rax        # 140004094 <.rdata+0x94>
   1400018dc:	48 89 c2             	mov    %rax,%rdx
   1400018df:	48 8b 05 1a 2c 00 00 	mov    0x2c1a(%rip),%rax        # 140004500 <__fu3__ZSt4cout>
   1400018e6:	48 89 c1             	mov    %rax,%rcx
   1400018e9:	e8 2a 03 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400018ee:	48 89 c1             	mov    %rax,%rcx
   1400018f1:	0f b6 45 20          	movzbl 0x20(%rbp),%eax
   1400018f5:	89 c2                	mov    %eax,%edx
   1400018f7:	e8 44 03 00 00       	call   140001c40 <_ZNSolsEb>
   1400018fc:	48 89 c1             	mov    %rax,%rcx
   1400018ff:	48 8d 05 97 27 00 00 	lea    0x2797(%rip),%rax        # 14000409d <.rdata+0x9d>
   140001906:	48 89 c2             	mov    %rax,%rdx
   140001909:	e8 0a 03 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000190e:	48 89 c1             	mov    %rax,%rcx
   140001911:	0f b6 45 20          	movzbl 0x20(%rbp),%eax
   140001915:	89 c2                	mov    %eax,%edx
   140001917:	e8 24 03 00 00       	call   140001c40 <_ZNSolsEb>
   14000191c:	48 89 c1             	mov    %rax,%rcx
   14000191f:	48 8d 05 ff 27 00 00 	lea    0x27ff(%rip),%rax        # 140004125 <.rdata+0x125>
   140001926:	48 89 c2             	mov    %rax,%rdx
   140001929:	e8 ea 02 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000192e:	48 89 c1             	mov    %rax,%rcx
   140001931:	48 8b 05 d8 2b 00 00 	mov    0x2bd8(%rip),%rax        # 140004510 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001938:	48 89 c2             	mov    %rax,%rdx
   14000193b:	e8 08 03 00 00       	call   140001c48 <_ZNSolsEPFRSoS_E>
}
   140001940:	90                   	nop
   140001941:	48 83 c4 20          	add    $0x20,%rsp
   140001945:	5d                   	pop    %rbp
   140001946:	c3                   	ret    
   140001947:	90                   	nop

0000000140001948 <_ZN8GPIO_ARM6toggleE11Pin_No_Type>:
void GPIO_ARM::toggle(Pin_No_Type pin)
{
   140001948:	55                   	push   %rbp
   140001949:	48 89 e5             	mov    %rsp,%rbp
   14000194c:	48 83 ec 20          	sub    $0x20,%rsp
   140001950:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   140001954:	89 55 18             	mov    %edx,0x18(%rbp)
    cout<<"toggling pin No. "<<pin<<"using ARM's GPIO Driver"<<endl;
   140001957:	48 8d 05 4b 27 00 00 	lea    0x274b(%rip),%rax        # 1400040a9 <.rdata+0xa9>
   14000195e:	48 89 c2             	mov    %rax,%rdx
   140001961:	48 8b 05 98 2b 00 00 	mov    0x2b98(%rip),%rax        # 140004500 <__fu3__ZSt4cout>
   140001968:	48 89 c1             	mov    %rax,%rcx
   14000196b:	e8 a8 02 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001970:	48 89 c1             	mov    %rax,%rcx
   140001973:	8b 45 18             	mov    0x18(%rbp),%eax
   140001976:	89 c2                	mov    %eax,%edx
   140001978:	e8 bb 02 00 00       	call   140001c38 <_ZNSolsEi>
   14000197d:	48 89 c1             	mov    %rax,%rcx
   140001980:	48 8d 05 b7 27 00 00 	lea    0x27b7(%rip),%rax        # 14000413e <.rdata+0x13e>
   140001987:	48 89 c2             	mov    %rax,%rdx
   14000198a:	e8 89 02 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   14000198f:	48 89 c1             	mov    %rax,%rcx
   140001992:	48 8b 05 77 2b 00 00 	mov    0x2b77(%rip),%rax        # 140004510 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001999:	48 89 c2             	mov    %rax,%rdx
   14000199c:	e8 a7 02 00 00       	call   140001c48 <_ZNSolsEPFRSoS_E>
}
   1400019a1:	90                   	nop
   1400019a2:	48 83 c4 20          	add    $0x20,%rsp
   1400019a6:	5d                   	pop    %rbp
   1400019a7:	c3                   	ret    

00000001400019a8 <_ZN8GPIO_ARMD1Ev>:
GPIO_ARM::~GPIO_ARM()
   1400019a8:	55                   	push   %rbp
   1400019a9:	48 89 e5             	mov    %rsp,%rbp
   1400019ac:	48 83 ec 20          	sub    $0x20,%rsp
   1400019b0:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400019b4:	48 8d 15 e5 2d 00 00 	lea    0x2de5(%rip),%rdx        # 1400047a0 <_ZTV8GPIO_ARM+0x10>
   1400019bb:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400019bf:	48 89 10             	mov    %rdx,(%rax)
{
    cout<<"ARM's GPIO Driver Object destructed"<<endl;
   1400019c2:	48 8d 05 8f 27 00 00 	lea    0x278f(%rip),%rax        # 140004158 <.rdata+0x158>
   1400019c9:	48 89 c2             	mov    %rax,%rdx
   1400019cc:	48 8b 05 2d 2b 00 00 	mov    0x2b2d(%rip),%rax        # 140004500 <__fu3__ZSt4cout>
   1400019d3:	48 89 c1             	mov    %rax,%rcx
   1400019d6:	e8 3d 02 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400019db:	48 89 c1             	mov    %rax,%rcx
   1400019de:	48 8b 05 2b 2b 00 00 	mov    0x2b2b(%rip),%rax        # 140004510 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400019e5:	48 89 c2             	mov    %rax,%rdx
   1400019e8:	e8 5b 02 00 00       	call   140001c48 <_ZNSolsEPFRSoS_E>
   1400019ed:	48 8b 45 10          	mov    0x10(%rbp),%rax
   1400019f1:	48 89 c1             	mov    %rax,%rcx
   1400019f4:	e8 83 fb ff ff       	call   14000157c <_ZN11GPIO_DriverD1Ev>
   1400019f9:	90                   	nop
   1400019fa:	48 83 c4 20          	add    $0x20,%rsp
   1400019fe:	5d                   	pop    %rbp
   1400019ff:	c3                   	ret    

0000000140001a00 <__tcf_0>:
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  ///@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
   140001a00:	55                   	push   %rbp
   140001a01:	48 89 e5             	mov    %rsp,%rbp
   140001a04:	48 83 ec 20          	sub    $0x20,%rsp
   140001a08:	48 8d 05 31 56 00 00 	lea    0x5631(%rip),%rax        # 140007040 <_ZStL8__ioinit>
   140001a0f:	48 89 c1             	mov    %rax,%rcx
   140001a12:	e8 11 02 00 00       	call   140001c28 <_ZNSt8ios_base4InitD1Ev>
   140001a17:	90                   	nop
   140001a18:	48 83 c4 20          	add    $0x20,%rsp
   140001a1c:	5d                   	pop    %rbp
   140001a1d:	c3                   	ret    

0000000140001a1e <_Z41__static_initialization_and_destruction_0ii>:
   140001a1e:	55                   	push   %rbp
   140001a1f:	48 89 e5             	mov    %rsp,%rbp
   140001a22:	48 83 ec 20          	sub    $0x20,%rsp
   140001a26:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140001a29:	89 55 18             	mov    %edx,0x18(%rbp)
   140001a2c:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
   140001a30:	75 27                	jne    140001a59 <_Z41__static_initialization_and_destruction_0ii+0x3b>
   140001a32:	81 7d 18 ff ff 00 00 	cmpl   $0xffff,0x18(%rbp)
   140001a39:	75 1e                	jne    140001a59 <_Z41__static_initialization_and_destruction_0ii+0x3b>
   140001a3b:	48 8d 05 fe 55 00 00 	lea    0x55fe(%rip),%rax        # 140007040 <_ZStL8__ioinit>
   140001a42:	48 89 c1             	mov    %rax,%rcx
   140001a45:	e8 e6 01 00 00       	call   140001c30 <_ZNSt8ios_base4InitC1Ev>
   140001a4a:	48 8d 05 af ff ff ff 	lea    -0x51(%rip),%rax        # 140001a00 <__tcf_0>
   140001a51:	48 89 c1             	mov    %rax,%rcx
   140001a54:	e8 97 fa ff ff       	call   1400014f0 <atexit>
   140001a59:	90                   	nop
   140001a5a:	48 83 c4 20          	add    $0x20,%rsp
   140001a5e:	5d                   	pop    %rbp
   140001a5f:	c3                   	ret    

0000000140001a60 <_GLOBAL__sub_I__ZN11GPIO_DriverC2Ev>:
   140001a60:	55                   	push   %rbp
   140001a61:	48 89 e5             	mov    %rsp,%rbp
   140001a64:	48 83 ec 20          	sub    $0x20,%rsp
   140001a68:	ba ff ff 00 00       	mov    $0xffff,%edx
   140001a6d:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001a72:	e8 a7 ff ff ff       	call   140001a1e <_Z41__static_initialization_and_destruction_0ii>
   140001a77:	90                   	nop
   140001a78:	48 83 c4 20          	add    $0x20,%rsp
   140001a7c:	5d                   	pop    %rbp
   140001a7d:	c3                   	ret    
   140001a7e:	90                   	nop
#include "GPIO.hpp"
#include<iostream>
using std::cout;
using std::endl;
int main(void)
{
   140001a7f:	90                   	nop

0000000140001a80 <main>:
   140001a80:	55                   	push   %rbp
   140001a81:	53                   	push   %rbx
   140001a82:	48 83 ec 48          	sub    $0x48,%rsp
   140001a86:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140001a8b:	e8 70 02 00 00       	call   140001d00 <__main>
    bool b;
    GPIO_AVR AVR_Driver;
   140001a90:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   140001a94:	48 89 c1             	mov    %rax,%rcx
   140001a97:	e8 2c fb ff ff       	call   1400015c8 <_ZN8GPIO_AVRC1Ev>
    GPIO_ARM ARM_Driver;
   140001a9c:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
   140001aa0:	48 89 c1             	mov    %rax,%rcx
   140001aa3:	e8 3c fd ff ff       	call   1400017e4 <_ZN8GPIO_ARMC1Ev>
    b=ARM_Driver.read(p3);
   140001aa8:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
   140001aac:	ba 02 00 00 00       	mov    $0x2,%edx
   140001ab1:	48 89 c1             	mov    %rax,%rcx
   140001ab4:	e8 a3 fd ff ff       	call   14000185c <_ZN8GPIO_ARM4readE11Pin_No_Type>
   140001ab9:	88 45 ff             	mov    %al,-0x1(%rbp)
    cout<<b<<" is read from ARM's GPIO Driver"<<endl;
   140001abc:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
   140001ac0:	89 c2                	mov    %eax,%edx
   140001ac2:	48 8b 05 37 2a 00 00 	mov    0x2a37(%rip),%rax        # 140004500 <__fu3__ZSt4cout>
   140001ac9:	48 89 c1             	mov    %rax,%rcx
   140001acc:	e8 6f 01 00 00       	call   140001c40 <_ZNSolsEb>
   140001ad1:	48 89 c1             	mov    %rax,%rcx
   140001ad4:	48 8d 05 a5 26 00 00 	lea    0x26a5(%rip),%rax        # 140004180 <.rdata>
   140001adb:	48 89 c2             	mov    %rax,%rdx
   140001ade:	e8 35 01 00 00       	call   140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001ae3:	48 89 c1             	mov    %rax,%rcx
   140001ae6:	48 8b 05 23 2a 00 00 	mov    0x2a23(%rip),%rax        # 140004510 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001aed:	48 89 c2             	mov    %rax,%rdx
   140001af0:	e8 53 01 00 00       	call   140001c48 <_ZNSolsEPFRSoS_E>
    ARM_Driver.write(p1,1);
   140001af5:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
   140001af9:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140001aff:	ba 00 00 00 00       	mov    $0x0,%edx
   140001b04:	48 89 c1             	mov    %rax,%rcx
   140001b07:	e8 b4 fd ff ff       	call   1400018c0 <_ZN8GPIO_ARM5writeE11Pin_No_Typeb>
    AVR_Driver.toggle(p5);
   140001b0c:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   140001b10:	ba 04 00 00 00       	mov    $0x4,%edx
   140001b15:	48 89 c1             	mov    %rax,%rcx
   140001b18:	e8 0f fc ff ff       	call   14000172c <_ZN8GPIO_AVR6toggleE11Pin_No_Type>
    AVR_Driver.write(p3,1);
   140001b1d:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   140001b21:	41 b8 01 00 00 00    	mov    $0x1,%r8d
   140001b27:	ba 02 00 00 00       	mov    $0x2,%edx
   140001b2c:	48 89 c1             	mov    %rax,%rcx
   140001b2f:	e8 70 fb ff ff       	call   1400016a4 <_ZN8GPIO_AVR5writeE11Pin_No_Typeb>
    return 0;
   140001b34:	bb 00 00 00 00       	mov    $0x0,%ebx
   140001b39:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
   140001b3d:	48 89 c1             	mov    %rax,%rcx
   140001b40:	e8 63 fe ff ff       	call   1400019a8 <_ZN8GPIO_ARMD1Ev>
   140001b45:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   140001b49:	48 89 c1             	mov    %rax,%rcx
   140001b4c:	e8 3b fc ff ff       	call   14000178c <_ZN8GPIO_AVRD1Ev>
   140001b51:	89 d8                	mov    %ebx,%eax
   140001b53:	eb 2b                	jmp    140001b80 <main+0x100>
   140001b55:	48 89 c3             	mov    %rax,%rbx
   140001b58:	48 8d 45 e8          	lea    -0x18(%rbp),%rax
   140001b5c:	48 89 c1             	mov    %rax,%rcx
   140001b5f:	e8 44 fe ff ff       	call   1400019a8 <_ZN8GPIO_ARMD1Ev>
   140001b64:	eb 03                	jmp    140001b69 <main+0xe9>
   140001b66:	48 89 c3             	mov    %rax,%rbx
   140001b69:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
   140001b6d:	48 89 c1             	mov    %rax,%rcx
   140001b70:	e8 17 fc ff ff       	call   14000178c <_ZN8GPIO_AVRD1Ev>
   140001b75:	48 89 d8             	mov    %rbx,%rax
   140001b78:	48 89 c1             	mov    %rax,%rcx
   140001b7b:	e8 40 11 00 00       	call   140002cc0 <_Unwind_Resume>
   140001b80:	48 83 c4 48          	add    $0x48,%rsp
   140001b84:	5b                   	pop    %rbx
   140001b85:	5d                   	pop    %rbp
   140001b86:	c3                   	ret    

0000000140001b87 <__tcf_0>:
   140001b87:	55                   	push   %rbp
   140001b88:	48 89 e5             	mov    %rsp,%rbp
   140001b8b:	48 83 ec 20          	sub    $0x20,%rsp
   140001b8f:	48 8d 05 ba 54 00 00 	lea    0x54ba(%rip),%rax        # 140007050 <_ZStL8__ioinit>
   140001b96:	48 89 c1             	mov    %rax,%rcx
   140001b99:	e8 8a 00 00 00       	call   140001c28 <_ZNSt8ios_base4InitD1Ev>
   140001b9e:	90                   	nop
   140001b9f:	48 83 c4 20          	add    $0x20,%rsp
   140001ba3:	5d                   	pop    %rbp
   140001ba4:	c3                   	ret    

0000000140001ba5 <_Z41__static_initialization_and_destruction_0ii>:
   140001ba5:	55                   	push   %rbp
   140001ba6:	48 89 e5             	mov    %rsp,%rbp
   140001ba9:	48 83 ec 20          	sub    $0x20,%rsp
   140001bad:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140001bb0:	89 55 18             	mov    %edx,0x18(%rbp)
   140001bb3:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
   140001bb7:	75 27                	jne    140001be0 <_Z41__static_initialization_and_destruction_0ii+0x3b>
   140001bb9:	81 7d 18 ff ff 00 00 	cmpl   $0xffff,0x18(%rbp)
   140001bc0:	75 1e                	jne    140001be0 <_Z41__static_initialization_and_destruction_0ii+0x3b>
   140001bc2:	48 8d 05 87 54 00 00 	lea    0x5487(%rip),%rax        # 140007050 <_ZStL8__ioinit>
   140001bc9:	48 89 c1             	mov    %rax,%rcx
   140001bcc:	e8 5f 00 00 00       	call   140001c30 <_ZNSt8ios_base4InitC1Ev>
   140001bd1:	48 8d 05 af ff ff ff 	lea    -0x51(%rip),%rax        # 140001b87 <__tcf_0>
   140001bd8:	48 89 c1             	mov    %rax,%rcx
   140001bdb:	e8 10 f9 ff ff       	call   1400014f0 <atexit>
   140001be0:	90                   	nop
   140001be1:	48 83 c4 20          	add    $0x20,%rsp
   140001be5:	5d                   	pop    %rbp
   140001be6:	c3                   	ret    

0000000140001be7 <_GLOBAL__sub_I_main>:
   140001be7:	55                   	push   %rbp
   140001be8:	48 89 e5             	mov    %rsp,%rbp
   140001beb:	48 83 ec 20          	sub    $0x20,%rsp
   140001bef:	ba ff ff 00 00       	mov    $0xffff,%edx
   140001bf4:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001bf9:	e8 a7 ff ff ff       	call   140001ba5 <_Z41__static_initialization_and_destruction_0ii>
   140001bfe:	90                   	nop
   140001bff:	48 83 c4 20          	add    $0x20,%rsp
   140001c03:	5d                   	pop    %rbp
   140001c04:	c3                   	ret    
   140001c05:	90                   	nop
   140001c06:	90                   	nop
   140001c07:	90                   	nop
   140001c08:	90                   	nop
   140001c09:	90                   	nop
   140001c0a:	90                   	nop
   140001c0b:	90                   	nop
   140001c0c:	90                   	nop
   140001c0d:	90                   	nop
   140001c0e:	90                   	nop
   140001c0f:	90                   	nop

0000000140001c10 <__gxx_personality_seh0>:
   140001c10:	ff 25 7e 67 00 00    	jmp    *0x677e(%rip)        # 140008394 <__imp___gxx_personality_seh0>
   140001c16:	90                   	nop
   140001c17:	90                   	nop

0000000140001c18 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
   140001c18:	ff 25 5e 67 00 00    	jmp    *0x675e(%rip)        # 14000837c <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001c1e:	90                   	nop
   140001c1f:	90                   	nop

0000000140001c20 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
   140001c20:	ff 25 4e 67 00 00    	jmp    *0x674e(%rip)        # 140008374 <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001c26:	90                   	nop
   140001c27:	90                   	nop

0000000140001c28 <_ZNSt8ios_base4InitD1Ev>:
   140001c28:	ff 25 36 67 00 00    	jmp    *0x6736(%rip)        # 140008364 <__imp__ZNSt8ios_base4InitD1Ev>
   140001c2e:	90                   	nop
   140001c2f:	90                   	nop

0000000140001c30 <_ZNSt8ios_base4InitC1Ev>:
   140001c30:	ff 25 26 67 00 00    	jmp    *0x6726(%rip)        # 14000835c <__imp__ZNSt8ios_base4InitC1Ev>
   140001c36:	90                   	nop
   140001c37:	90                   	nop

0000000140001c38 <_ZNSolsEi>:
   140001c38:	ff 25 16 67 00 00    	jmp    *0x6716(%rip)        # 140008354 <__imp__ZNSolsEi>
   140001c3e:	90                   	nop
   140001c3f:	90                   	nop

0000000140001c40 <_ZNSolsEb>:
   140001c40:	ff 25 06 67 00 00    	jmp    *0x6706(%rip)        # 14000834c <__imp__ZNSolsEb>
   140001c46:	90                   	nop
   140001c47:	90                   	nop

0000000140001c48 <_ZNSolsEPFRSoS_E>:
   140001c48:	ff 25 f6 66 00 00    	jmp    *0x66f6(%rip)        # 140008344 <__imp__ZNSolsEPFRSoS_E>
   140001c4e:	90                   	nop
   140001c4f:	90                   	nop

0000000140001c50 <__do_global_dtors>:
   140001c50:	48 83 ec 28          	sub    $0x28,%rsp
   140001c54:	48 8b 05 b5 13 00 00 	mov    0x13b5(%rip),%rax        # 140003010 <p.0>
   140001c5b:	48 8b 00             	mov    (%rax),%rax
   140001c5e:	48 85 c0             	test   %rax,%rax
   140001c61:	74 22                	je     140001c85 <__do_global_dtors+0x35>
   140001c63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001c68:	ff d0                	call   *%rax
   140001c6a:	48 8b 05 9f 13 00 00 	mov    0x139f(%rip),%rax        # 140003010 <p.0>
   140001c71:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140001c75:	48 8b 40 08          	mov    0x8(%rax),%rax
   140001c79:	48 89 15 90 13 00 00 	mov    %rdx,0x1390(%rip)        # 140003010 <p.0>
   140001c80:	48 85 c0             	test   %rax,%rax
   140001c83:	75 e3                	jne    140001c68 <__do_global_dtors+0x18>
   140001c85:	48 83 c4 28          	add    $0x28,%rsp
   140001c89:	c3                   	ret    
   140001c8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001c90 <__do_global_ctors>:
   140001c90:	56                   	push   %rsi
   140001c91:	53                   	push   %rbx
   140001c92:	48 83 ec 28          	sub    $0x28,%rsp
   140001c96:	48 8b 15 83 28 00 00 	mov    0x2883(%rip),%rdx        # 140004520 <.refptr.__CTOR_LIST__>
   140001c9d:	48 8b 02             	mov    (%rdx),%rax
   140001ca0:	89 c1                	mov    %eax,%ecx
   140001ca2:	83 f8 ff             	cmp    $0xffffffff,%eax
   140001ca5:	74 39                	je     140001ce0 <__do_global_ctors+0x50>
   140001ca7:	85 c9                	test   %ecx,%ecx
   140001ca9:	74 20                	je     140001ccb <__do_global_ctors+0x3b>
   140001cab:	89 c8                	mov    %ecx,%eax
   140001cad:	83 e9 01             	sub    $0x1,%ecx
   140001cb0:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140001cb4:	48 29 c8             	sub    %rcx,%rax
   140001cb7:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   140001cbc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001cc0:	ff 13                	call   *(%rbx)
   140001cc2:	48 83 eb 08          	sub    $0x8,%rbx
   140001cc6:	48 39 f3             	cmp    %rsi,%rbx
   140001cc9:	75 f5                	jne    140001cc0 <__do_global_ctors+0x30>
   140001ccb:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140001c50 <__do_global_dtors>
   140001cd2:	48 83 c4 28          	add    $0x28,%rsp
   140001cd6:	5b                   	pop    %rbx
   140001cd7:	5e                   	pop    %rsi
   140001cd8:	e9 13 f8 ff ff       	jmp    1400014f0 <atexit>
   140001cdd:	0f 1f 00             	nopl   (%rax)
   140001ce0:	31 c0                	xor    %eax,%eax
   140001ce2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001ce8:	44 8d 40 01          	lea    0x1(%rax),%r8d
   140001cec:	89 c1                	mov    %eax,%ecx
   140001cee:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001cf3:	4c 89 c0             	mov    %r8,%rax
   140001cf6:	75 f0                	jne    140001ce8 <__do_global_ctors+0x58>
   140001cf8:	eb ad                	jmp    140001ca7 <__do_global_ctors+0x17>
   140001cfa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001d00 <__main>:
   140001d00:	8b 05 5a 53 00 00    	mov    0x535a(%rip),%eax        # 140007060 <initialized>
   140001d06:	85 c0                	test   %eax,%eax
   140001d08:	74 06                	je     140001d10 <__main+0x10>
   140001d0a:	c3                   	ret    
   140001d0b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001d10:	c7 05 46 53 00 00 01 	movl   $0x1,0x5346(%rip)        # 140007060 <initialized>
   140001d17:	00 00 00 
   140001d1a:	e9 71 ff ff ff       	jmp    140001c90 <__do_global_ctors>
   140001d1f:	90                   	nop

0000000140001d20 <_setargv>:
   140001d20:	31 c0                	xor    %eax,%eax
   140001d22:	c3                   	ret    
   140001d23:	90                   	nop
   140001d24:	90                   	nop
   140001d25:	90                   	nop
   140001d26:	90                   	nop
   140001d27:	90                   	nop
   140001d28:	90                   	nop
   140001d29:	90                   	nop
   140001d2a:	90                   	nop
   140001d2b:	90                   	nop
   140001d2c:	90                   	nop
   140001d2d:	90                   	nop
   140001d2e:	90                   	nop
   140001d2f:	90                   	nop

0000000140001d30 <__dyn_tls_dtor>:
   140001d30:	48 83 ec 28          	sub    $0x28,%rsp
   140001d34:	83 fa 03             	cmp    $0x3,%edx
   140001d37:	74 17                	je     140001d50 <__dyn_tls_dtor+0x20>
   140001d39:	85 d2                	test   %edx,%edx
   140001d3b:	74 13                	je     140001d50 <__dyn_tls_dtor+0x20>
   140001d3d:	b8 01 00 00 00       	mov    $0x1,%eax
   140001d42:	48 83 c4 28          	add    $0x28,%rsp
   140001d46:	c3                   	ret    
   140001d47:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001d4e:	00 00 
   140001d50:	e8 9b 0a 00 00       	call   1400027f0 <__mingw_TLScallback>
   140001d55:	b8 01 00 00 00       	mov    $0x1,%eax
   140001d5a:	48 83 c4 28          	add    $0x28,%rsp
   140001d5e:	c3                   	ret    
   140001d5f:	90                   	nop

0000000140001d60 <__dyn_tls_init>:
   140001d60:	56                   	push   %rsi
   140001d61:	53                   	push   %rbx
   140001d62:	48 83 ec 28          	sub    $0x28,%rsp
   140001d66:	48 8b 05 73 27 00 00 	mov    0x2773(%rip),%rax        # 1400044e0 <.refptr._CRT_MT>
   140001d6d:	83 38 02             	cmpl   $0x2,(%rax)
   140001d70:	74 06                	je     140001d78 <__dyn_tls_init+0x18>
   140001d72:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140001d78:	83 fa 02             	cmp    $0x2,%edx
   140001d7b:	74 13                	je     140001d90 <__dyn_tls_init+0x30>
   140001d7d:	83 fa 01             	cmp    $0x1,%edx
   140001d80:	74 4e                	je     140001dd0 <__dyn_tls_init+0x70>
   140001d82:	b8 01 00 00 00       	mov    $0x1,%eax
   140001d87:	48 83 c4 28          	add    $0x28,%rsp
   140001d8b:	5b                   	pop    %rbx
   140001d8c:	5e                   	pop    %rsi
   140001d8d:	c3                   	ret    
   140001d8e:	66 90                	xchg   %ax,%ax
   140001d90:	48 8d 1d c1 72 00 00 	lea    0x72c1(%rip),%rbx        # 140009058 <__xd_z>
   140001d97:	48 8d 35 ba 72 00 00 	lea    0x72ba(%rip),%rsi        # 140009058 <__xd_z>
   140001d9e:	48 39 de             	cmp    %rbx,%rsi
   140001da1:	74 df                	je     140001d82 <__dyn_tls_init+0x22>
   140001da3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001da8:	48 8b 03             	mov    (%rbx),%rax
   140001dab:	48 85 c0             	test   %rax,%rax
   140001dae:	74 02                	je     140001db2 <__dyn_tls_init+0x52>
   140001db0:	ff d0                	call   *%rax
   140001db2:	48 83 c3 08          	add    $0x8,%rbx
   140001db6:	48 39 de             	cmp    %rbx,%rsi
   140001db9:	75 ed                	jne    140001da8 <__dyn_tls_init+0x48>
   140001dbb:	b8 01 00 00 00       	mov    $0x1,%eax
   140001dc0:	48 83 c4 28          	add    $0x28,%rsp
   140001dc4:	5b                   	pop    %rbx
   140001dc5:	5e                   	pop    %rsi
   140001dc6:	c3                   	ret    
   140001dc7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001dce:	00 00 
   140001dd0:	e8 1b 0a 00 00       	call   1400027f0 <__mingw_TLScallback>
   140001dd5:	b8 01 00 00 00       	mov    $0x1,%eax
   140001dda:	48 83 c4 28          	add    $0x28,%rsp
   140001dde:	5b                   	pop    %rbx
   140001ddf:	5e                   	pop    %rsi
   140001de0:	c3                   	ret    
   140001de1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001de8:	00 00 00 00 
   140001dec:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001df0 <__tlregdtor>:
   140001df0:	31 c0                	xor    %eax,%eax
   140001df2:	c3                   	ret    
   140001df3:	90                   	nop
   140001df4:	90                   	nop
   140001df5:	90                   	nop
   140001df6:	90                   	nop
   140001df7:	90                   	nop
   140001df8:	90                   	nop
   140001df9:	90                   	nop
   140001dfa:	90                   	nop
   140001dfb:	90                   	nop
   140001dfc:	90                   	nop
   140001dfd:	90                   	nop
   140001dfe:	90                   	nop
   140001dff:	90                   	nop

0000000140001e00 <_matherr>:
   140001e00:	56                   	push   %rsi
   140001e01:	53                   	push   %rbx
   140001e02:	48 83 ec 78          	sub    $0x78,%rsp
   140001e06:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
   140001e0b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
   140001e10:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
   140001e16:	83 39 06             	cmpl   $0x6,(%rcx)
   140001e19:	0f 87 cd 00 00 00    	ja     140001eec <_matherr+0xec>
   140001e1f:	8b 01                	mov    (%rcx),%eax
   140001e21:	48 8d 15 fc 24 00 00 	lea    0x24fc(%rip),%rdx        # 140004324 <.rdata+0x124>
   140001e28:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001e2c:	48 01 d0             	add    %rdx,%rax
   140001e2f:	ff e0                	jmp    *%rax
   140001e31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001e38:	48 8d 1d e0 23 00 00 	lea    0x23e0(%rip),%rbx        # 14000421f <.rdata+0x1f>
   140001e3f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140001e45:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   140001e4a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   140001e4f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   140001e53:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001e58:	e8 03 0f 00 00       	call   140002d60 <__acrt_iob_func>
   140001e5d:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   140001e64:	49 89 d8             	mov    %rbx,%r8
   140001e67:	48 8d 15 8a 24 00 00 	lea    0x248a(%rip),%rdx        # 1400042f8 <.rdata+0xf8>
   140001e6e:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140001e74:	48 89 c1             	mov    %rax,%rcx
   140001e77:	49 89 f1             	mov    %rsi,%r9
   140001e7a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140001e80:	e8 5b 0f 00 00       	call   140002de0 <fprintf>
   140001e85:	90                   	nop
   140001e86:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
   140001e8b:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
   140001e90:	31 c0                	xor    %eax,%eax
   140001e92:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
   140001e98:	48 83 c4 78          	add    $0x78,%rsp
   140001e9c:	5b                   	pop    %rbx
   140001e9d:	5e                   	pop    %rsi
   140001e9e:	c3                   	ret    
   140001e9f:	90                   	nop
   140001ea0:	48 8d 1d 59 23 00 00 	lea    0x2359(%rip),%rbx        # 140004200 <.rdata>
   140001ea7:	eb 96                	jmp    140001e3f <_matherr+0x3f>
   140001ea9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001eb0:	48 8d 1d a9 23 00 00 	lea    0x23a9(%rip),%rbx        # 140004260 <.rdata+0x60>
   140001eb7:	eb 86                	jmp    140001e3f <_matherr+0x3f>
   140001eb9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001ec0:	48 8d 1d 79 23 00 00 	lea    0x2379(%rip),%rbx        # 140004240 <.rdata+0x40>
   140001ec7:	e9 73 ff ff ff       	jmp    140001e3f <_matherr+0x3f>
   140001ecc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001ed0:	48 8d 1d d9 23 00 00 	lea    0x23d9(%rip),%rbx        # 1400042b0 <.rdata+0xb0>
   140001ed7:	e9 63 ff ff ff       	jmp    140001e3f <_matherr+0x3f>
   140001edc:	0f 1f 40 00          	nopl   0x0(%rax)
   140001ee0:	48 8d 1d a1 23 00 00 	lea    0x23a1(%rip),%rbx        # 140004288 <.rdata+0x88>
   140001ee7:	e9 53 ff ff ff       	jmp    140001e3f <_matherr+0x3f>
   140001eec:	48 8d 1d f3 23 00 00 	lea    0x23f3(%rip),%rbx        # 1400042e6 <.rdata+0xe6>
   140001ef3:	e9 47 ff ff ff       	jmp    140001e3f <_matherr+0x3f>
   140001ef8:	90                   	nop
   140001ef9:	90                   	nop
   140001efa:	90                   	nop
   140001efb:	90                   	nop
   140001efc:	90                   	nop
   140001efd:	90                   	nop
   140001efe:	90                   	nop
   140001eff:	90                   	nop

0000000140001f00 <_fpreset>:
   140001f00:	db e3                	fninit 
   140001f02:	c3                   	ret    
   140001f03:	90                   	nop
   140001f04:	90                   	nop
   140001f05:	90                   	nop
   140001f06:	90                   	nop
   140001f07:	90                   	nop
   140001f08:	90                   	nop
   140001f09:	90                   	nop
   140001f0a:	90                   	nop
   140001f0b:	90                   	nop
   140001f0c:	90                   	nop
   140001f0d:	90                   	nop
   140001f0e:	90                   	nop
   140001f0f:	90                   	nop

0000000140001f10 <__report_error>:
   140001f10:	41 54                	push   %r12
   140001f12:	53                   	push   %rbx
   140001f13:	48 83 ec 38          	sub    $0x38,%rsp
   140001f17:	49 89 cc             	mov    %rcx,%r12
   140001f1a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   140001f1f:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001f24:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140001f29:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   140001f2e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140001f33:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140001f38:	e8 23 0e 00 00       	call   140002d60 <__acrt_iob_func>
   140001f3d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140001f43:	ba 01 00 00 00       	mov    $0x1,%edx
   140001f48:	48 8d 0d f1 23 00 00 	lea    0x23f1(%rip),%rcx        # 140004340 <.rdata>
   140001f4f:	49 89 c1             	mov    %rax,%r9
   140001f52:	e8 99 0e 00 00       	call   140002df0 <fwrite>
   140001f57:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
   140001f5c:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001f61:	e8 fa 0d 00 00       	call   140002d60 <__acrt_iob_func>
   140001f66:	4c 89 e2             	mov    %r12,%rdx
   140001f69:	48 89 c1             	mov    %rax,%rcx
   140001f6c:	49 89 d8             	mov    %rbx,%r8
   140001f6f:	e8 ac 0e 00 00       	call   140002e20 <vfprintf>
   140001f74:	e8 4f 0e 00 00       	call   140002dc8 <abort>
   140001f79:	90                   	nop
   140001f7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001f80 <mark_section_writable>:
   140001f80:	41 54                	push   %r12
   140001f82:	56                   	push   %rsi
   140001f83:	53                   	push   %rbx
   140001f84:	48 83 ec 50          	sub    $0x50,%rsp
   140001f88:	48 63 1d 35 51 00 00 	movslq 0x5135(%rip),%rbx        # 1400070c4 <maxSections>
   140001f8f:	49 89 cc             	mov    %rcx,%r12
   140001f92:	85 db                	test   %ebx,%ebx
   140001f94:	0f 8e 16 01 00 00    	jle    1400020b0 <mark_section_writable+0x130>
   140001f9a:	48 8b 05 27 51 00 00 	mov    0x5127(%rip),%rax        # 1400070c8 <the_secs>
   140001fa1:	45 31 c9             	xor    %r9d,%r9d
   140001fa4:	48 83 c0 18          	add    $0x18,%rax
   140001fa8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001faf:	00 
   140001fb0:	4c 8b 00             	mov    (%rax),%r8
   140001fb3:	4d 39 e0             	cmp    %r12,%r8
   140001fb6:	77 13                	ja     140001fcb <mark_section_writable+0x4b>
   140001fb8:	48 8b 50 08          	mov    0x8(%rax),%rdx
   140001fbc:	8b 52 08             	mov    0x8(%rdx),%edx
   140001fbf:	49 01 d0             	add    %rdx,%r8
   140001fc2:	4d 39 c4             	cmp    %r8,%r12
   140001fc5:	0f 82 8a 00 00 00    	jb     140002055 <mark_section_writable+0xd5>
   140001fcb:	41 83 c1 01          	add    $0x1,%r9d
   140001fcf:	48 83 c0 28          	add    $0x28,%rax
   140001fd3:	41 39 d9             	cmp    %ebx,%r9d
   140001fd6:	75 d8                	jne    140001fb0 <mark_section_writable+0x30>
   140001fd8:	4c 89 e1             	mov    %r12,%rcx
   140001fdb:	e8 20 0a 00 00       	call   140002a00 <__mingw_GetSectionForAddress>
   140001fe0:	48 89 c6             	mov    %rax,%rsi
   140001fe3:	48 85 c0             	test   %rax,%rax
   140001fe6:	0f 84 e6 00 00 00    	je     1400020d2 <mark_section_writable+0x152>
   140001fec:	48 8b 05 d5 50 00 00 	mov    0x50d5(%rip),%rax        # 1400070c8 <the_secs>
   140001ff3:	48 8d 1c 9b          	lea    (%rbx,%rbx,4),%rbx
   140001ff7:	48 c1 e3 03          	shl    $0x3,%rbx
   140001ffb:	48 01 d8             	add    %rbx,%rax
   140001ffe:	48 89 70 20          	mov    %rsi,0x20(%rax)
   140002002:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140002008:	e8 23 0b 00 00       	call   140002b30 <_GetPEImageBase>
   14000200d:	8b 56 0c             	mov    0xc(%rsi),%edx
   140002010:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140002016:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000201a:	48 8b 05 a7 50 00 00 	mov    0x50a7(%rip),%rax        # 1400070c8 <the_secs>
   140002021:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140002026:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000202b:	ff 15 23 62 00 00    	call   *0x6223(%rip)        # 140008254 <__imp_VirtualQuery>
   140002031:	48 85 c0             	test   %rax,%rax
   140002034:	0f 84 7d 00 00 00    	je     1400020b7 <mark_section_writable+0x137>
   14000203a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000203e:	8d 50 c0             	lea    -0x40(%rax),%edx
   140002041:	83 e2 bf             	and    $0xffffffbf,%edx
   140002044:	74 08                	je     14000204e <mark_section_writable+0xce>
   140002046:	8d 50 fc             	lea    -0x4(%rax),%edx
   140002049:	83 e2 fb             	and    $0xfffffffb,%edx
   14000204c:	75 12                	jne    140002060 <mark_section_writable+0xe0>
   14000204e:	83 05 6f 50 00 00 01 	addl   $0x1,0x506f(%rip)        # 1400070c4 <maxSections>
   140002055:	48 83 c4 50          	add    $0x50,%rsp
   140002059:	5b                   	pop    %rbx
   14000205a:	5e                   	pop    %rsi
   14000205b:	41 5c                	pop    %r12
   14000205d:	c3                   	ret    
   14000205e:	66 90                	xchg   %ax,%ax
   140002060:	83 f8 02             	cmp    $0x2,%eax
   140002063:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   140002068:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   14000206d:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   140002073:	b8 40 00 00 00       	mov    $0x40,%eax
   140002078:	44 0f 45 c0          	cmovne %eax,%r8d
   14000207c:	48 03 1d 45 50 00 00 	add    0x5045(%rip),%rbx        # 1400070c8 <the_secs>
   140002083:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   140002087:	49 89 d9             	mov    %rbx,%r9
   14000208a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   14000208e:	ff 15 b8 61 00 00    	call   *0x61b8(%rip)        # 14000824c <__imp_VirtualProtect>
   140002094:	85 c0                	test   %eax,%eax
   140002096:	75 b6                	jne    14000204e <mark_section_writable+0xce>
   140002098:	ff 15 76 61 00 00    	call   *0x6176(%rip)        # 140008214 <__imp_GetLastError>
   14000209e:	48 8d 0d 13 23 00 00 	lea    0x2313(%rip),%rcx        # 1400043b8 <.rdata+0x78>
   1400020a5:	89 c2                	mov    %eax,%edx
   1400020a7:	e8 64 fe ff ff       	call   140001f10 <__report_error>
   1400020ac:	0f 1f 40 00          	nopl   0x0(%rax)
   1400020b0:	31 db                	xor    %ebx,%ebx
   1400020b2:	e9 21 ff ff ff       	jmp    140001fd8 <mark_section_writable+0x58>
   1400020b7:	48 8b 05 0a 50 00 00 	mov    0x500a(%rip),%rax        # 1400070c8 <the_secs>
   1400020be:	8b 56 08             	mov    0x8(%rsi),%edx
   1400020c1:	48 8d 0d b8 22 00 00 	lea    0x22b8(%rip),%rcx        # 140004380 <.rdata+0x40>
   1400020c8:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   1400020cd:	e8 3e fe ff ff       	call   140001f10 <__report_error>
   1400020d2:	4c 89 e2             	mov    %r12,%rdx
   1400020d5:	48 8d 0d 84 22 00 00 	lea    0x2284(%rip),%rcx        # 140004360 <.rdata+0x20>
   1400020dc:	e8 2f fe ff ff       	call   140001f10 <__report_error>
   1400020e1:	90                   	nop
   1400020e2:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400020e9:	00 00 00 00 
   1400020ed:	0f 1f 00             	nopl   (%rax)

00000001400020f0 <_pei386_runtime_relocator>:
   1400020f0:	55                   	push   %rbp
   1400020f1:	41 57                	push   %r15
   1400020f3:	41 56                	push   %r14
   1400020f5:	41 55                	push   %r13
   1400020f7:	41 54                	push   %r12
   1400020f9:	57                   	push   %rdi
   1400020fa:	56                   	push   %rsi
   1400020fb:	53                   	push   %rbx
   1400020fc:	48 83 ec 48          	sub    $0x48,%rsp
   140002100:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140002105:	8b 35 b5 4f 00 00    	mov    0x4fb5(%rip),%esi        # 1400070c0 <was_init.0>
   14000210b:	85 f6                	test   %esi,%esi
   14000210d:	74 11                	je     140002120 <_pei386_runtime_relocator+0x30>
   14000210f:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140002113:	5b                   	pop    %rbx
   140002114:	5e                   	pop    %rsi
   140002115:	5f                   	pop    %rdi
   140002116:	41 5c                	pop    %r12
   140002118:	41 5d                	pop    %r13
   14000211a:	41 5e                	pop    %r14
   14000211c:	41 5f                	pop    %r15
   14000211e:	5d                   	pop    %rbp
   14000211f:	c3                   	ret    
   140002120:	c7 05 96 4f 00 00 01 	movl   $0x1,0x4f96(%rip)        # 1400070c0 <was_init.0>
   140002127:	00 00 00 
   14000212a:	e8 51 09 00 00       	call   140002a80 <__mingw_GetSectionCount>
   14000212f:	48 98                	cltq   
   140002131:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002135:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   14000213c:	00 
   14000213d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140002141:	e8 8a 0b 00 00       	call   140002cd0 <___chkstk_ms>
   140002146:	48 8b 3d e3 23 00 00 	mov    0x23e3(%rip),%rdi        # 140004530 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   14000214d:	48 8b 1d ec 23 00 00 	mov    0x23ec(%rip),%rbx        # 140004540 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   140002154:	c7 05 66 4f 00 00 00 	movl   $0x0,0x4f66(%rip)        # 1400070c4 <maxSections>
   14000215b:	00 00 00 
   14000215e:	48 29 c4             	sub    %rax,%rsp
   140002161:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   140002166:	48 89 05 5b 4f 00 00 	mov    %rax,0x4f5b(%rip)        # 1400070c8 <the_secs>
   14000216d:	48 89 f8             	mov    %rdi,%rax
   140002170:	48 29 d8             	sub    %rbx,%rax
   140002173:	48 83 f8 07          	cmp    $0x7,%rax
   140002177:	7e 96                	jle    14000210f <_pei386_runtime_relocator+0x1f>
   140002179:	8b 13                	mov    (%rbx),%edx
   14000217b:	48 83 f8 0b          	cmp    $0xb,%rax
   14000217f:	0f 8f 83 01 00 00    	jg     140002308 <_pei386_runtime_relocator+0x218>
   140002185:	8b 03                	mov    (%rbx),%eax
   140002187:	85 c0                	test   %eax,%eax
   140002189:	0f 85 29 02 00 00    	jne    1400023b8 <_pei386_runtime_relocator+0x2c8>
   14000218f:	8b 43 04             	mov    0x4(%rbx),%eax
   140002192:	85 c0                	test   %eax,%eax
   140002194:	0f 85 1e 02 00 00    	jne    1400023b8 <_pei386_runtime_relocator+0x2c8>
   14000219a:	8b 53 08             	mov    0x8(%rbx),%edx
   14000219d:	83 fa 01             	cmp    $0x1,%edx
   1400021a0:	0f 85 72 02 00 00    	jne    140002418 <_pei386_runtime_relocator+0x328>
   1400021a6:	48 83 c3 0c          	add    $0xc,%rbx
   1400021aa:	48 39 fb             	cmp    %rdi,%rbx
   1400021ad:	0f 83 5c ff ff ff    	jae    14000210f <_pei386_runtime_relocator+0x1f>
   1400021b3:	4c 8b 3d a6 23 00 00 	mov    0x23a6(%rip),%r15        # 140004560 <.refptr.__image_base__>
   1400021ba:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
   1400021c1:	ff ff ff 
   1400021c4:	eb 5d                	jmp    140002223 <_pei386_runtime_relocator+0x133>
   1400021c6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400021cd:	00 00 00 
   1400021d0:	41 0f b6 06          	movzbl (%r14),%eax
   1400021d4:	49 89 c3             	mov    %rax,%r11
   1400021d7:	49 81 cb 00 ff ff ff 	or     $0xffffffffffffff00,%r11
   1400021de:	84 c0                	test   %al,%al
   1400021e0:	49 0f 48 c3          	cmovs  %r11,%rax
   1400021e4:	48 29 c8             	sub    %rcx,%rax
   1400021e7:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   1400021ee:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   1400021f2:	75 17                	jne    14000220b <_pei386_runtime_relocator+0x11b>
   1400021f4:	49 83 fd 80          	cmp    $0xffffffffffffff80,%r13
   1400021f8:	0f 8c 06 02 00 00    	jl     140002404 <_pei386_runtime_relocator+0x314>
   1400021fe:	49 81 fd ff 00 00 00 	cmp    $0xff,%r13
   140002205:	0f 8f f9 01 00 00    	jg     140002404 <_pei386_runtime_relocator+0x314>
   14000220b:	4c 89 f1             	mov    %r14,%rcx
   14000220e:	e8 6d fd ff ff       	call   140001f80 <mark_section_writable>
   140002213:	45 88 2e             	mov    %r13b,(%r14)
   140002216:	48 83 c3 0c          	add    $0xc,%rbx
   14000221a:	48 39 fb             	cmp    %rdi,%rbx
   14000221d:	0f 83 8d 00 00 00    	jae    1400022b0 <_pei386_runtime_relocator+0x1c0>
   140002223:	8b 0b                	mov    (%rbx),%ecx
   140002225:	44 8b 43 08          	mov    0x8(%rbx),%r8d
   140002229:	44 8b 73 04          	mov    0x4(%rbx),%r14d
   14000222d:	4c 01 f9             	add    %r15,%rcx
   140002230:	41 0f b6 d0          	movzbl %r8b,%edx
   140002234:	4c 8b 09             	mov    (%rcx),%r9
   140002237:	4d 01 fe             	add    %r15,%r14
   14000223a:	83 fa 20             	cmp    $0x20,%edx
   14000223d:	0f 84 25 01 00 00    	je     140002368 <_pei386_runtime_relocator+0x278>
   140002243:	0f 87 e7 00 00 00    	ja     140002330 <_pei386_runtime_relocator+0x240>
   140002249:	83 fa 08             	cmp    $0x8,%edx
   14000224c:	74 82                	je     1400021d0 <_pei386_runtime_relocator+0xe0>
   14000224e:	83 fa 10             	cmp    $0x10,%edx
   140002251:	0f 85 a1 01 00 00    	jne    1400023f8 <_pei386_runtime_relocator+0x308>
   140002257:	41 0f b7 06          	movzwl (%r14),%eax
   14000225b:	49 89 c3             	mov    %rax,%r11
   14000225e:	49 81 cb 00 00 ff ff 	or     $0xffffffffffff0000,%r11
   140002265:	66 85 c0             	test   %ax,%ax
   140002268:	49 0f 48 c3          	cmovs  %r11,%rax
   14000226c:	48 29 c8             	sub    %rcx,%rax
   14000226f:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140002276:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   14000227a:	75 1a                	jne    140002296 <_pei386_runtime_relocator+0x1a6>
   14000227c:	49 81 fd 00 80 ff ff 	cmp    $0xffffffffffff8000,%r13
   140002283:	0f 8c 7b 01 00 00    	jl     140002404 <_pei386_runtime_relocator+0x314>
   140002289:	49 81 fd ff ff 00 00 	cmp    $0xffff,%r13
   140002290:	0f 8f 6e 01 00 00    	jg     140002404 <_pei386_runtime_relocator+0x314>
   140002296:	4c 89 f1             	mov    %r14,%rcx
   140002299:	48 83 c3 0c          	add    $0xc,%rbx
   14000229d:	e8 de fc ff ff       	call   140001f80 <mark_section_writable>
   1400022a2:	66 45 89 2e          	mov    %r13w,(%r14)
   1400022a6:	48 39 fb             	cmp    %rdi,%rbx
   1400022a9:	0f 82 74 ff ff ff    	jb     140002223 <_pei386_runtime_relocator+0x133>
   1400022af:	90                   	nop
   1400022b0:	8b 15 0e 4e 00 00    	mov    0x4e0e(%rip),%edx        # 1400070c4 <maxSections>
   1400022b6:	85 d2                	test   %edx,%edx
   1400022b8:	0f 8e 51 fe ff ff    	jle    14000210f <_pei386_runtime_relocator+0x1f>
   1400022be:	48 8b 3d 87 5f 00 00 	mov    0x5f87(%rip),%rdi        # 14000824c <__imp_VirtualProtect>
   1400022c5:	31 db                	xor    %ebx,%ebx
   1400022c7:	4c 8d 65 fc          	lea    -0x4(%rbp),%r12
   1400022cb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400022d0:	48 8b 05 f1 4d 00 00 	mov    0x4df1(%rip),%rax        # 1400070c8 <the_secs>
   1400022d7:	48 01 d8             	add    %rbx,%rax
   1400022da:	44 8b 00             	mov    (%rax),%r8d
   1400022dd:	45 85 c0             	test   %r8d,%r8d
   1400022e0:	74 0d                	je     1400022ef <_pei386_runtime_relocator+0x1ff>
   1400022e2:	48 8b 50 10          	mov    0x10(%rax),%rdx
   1400022e6:	48 8b 48 08          	mov    0x8(%rax),%rcx
   1400022ea:	4d 89 e1             	mov    %r12,%r9
   1400022ed:	ff d7                	call   *%rdi
   1400022ef:	83 c6 01             	add    $0x1,%esi
   1400022f2:	48 83 c3 28          	add    $0x28,%rbx
   1400022f6:	3b 35 c8 4d 00 00    	cmp    0x4dc8(%rip),%esi        # 1400070c4 <maxSections>
   1400022fc:	7c d2                	jl     1400022d0 <_pei386_runtime_relocator+0x1e0>
   1400022fe:	e9 0c fe ff ff       	jmp    14000210f <_pei386_runtime_relocator+0x1f>
   140002303:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002308:	85 d2                	test   %edx,%edx
   14000230a:	0f 85 a8 00 00 00    	jne    1400023b8 <_pei386_runtime_relocator+0x2c8>
   140002310:	8b 43 04             	mov    0x4(%rbx),%eax
   140002313:	89 c2                	mov    %eax,%edx
   140002315:	0b 53 08             	or     0x8(%rbx),%edx
   140002318:	0f 85 74 fe ff ff    	jne    140002192 <_pei386_runtime_relocator+0xa2>
   14000231e:	48 83 c3 0c          	add    $0xc,%rbx
   140002322:	e9 5e fe ff ff       	jmp    140002185 <_pei386_runtime_relocator+0x95>
   140002327:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000232e:	00 00 
   140002330:	83 fa 40             	cmp    $0x40,%edx
   140002333:	0f 85 bf 00 00 00    	jne    1400023f8 <_pei386_runtime_relocator+0x308>
   140002339:	49 8b 06             	mov    (%r14),%rax
   14000233c:	48 29 c8             	sub    %rcx,%rax
   14000233f:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140002346:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   14000234a:	75 09                	jne    140002355 <_pei386_runtime_relocator+0x265>
   14000234c:	4d 85 ed             	test   %r13,%r13
   14000234f:	0f 89 af 00 00 00    	jns    140002404 <_pei386_runtime_relocator+0x314>
   140002355:	4c 89 f1             	mov    %r14,%rcx
   140002358:	e8 23 fc ff ff       	call   140001f80 <mark_section_writable>
   14000235d:	4d 89 2e             	mov    %r13,(%r14)
   140002360:	e9 b1 fe ff ff       	jmp    140002216 <_pei386_runtime_relocator+0x126>
   140002365:	0f 1f 00             	nopl   (%rax)
   140002368:	41 8b 06             	mov    (%r14),%eax
   14000236b:	49 89 c2             	mov    %rax,%r10
   14000236e:	4c 09 e0             	or     %r12,%rax
   140002371:	45 85 d2             	test   %r10d,%r10d
   140002374:	49 0f 49 c2          	cmovns %r10,%rax
   140002378:	48 29 c8             	sub    %rcx,%rax
   14000237b:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140002382:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   140002386:	75 19                	jne    1400023a1 <_pei386_runtime_relocator+0x2b1>
   140002388:	48 b8 ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%rax
   14000238f:	ff ff ff 
   140002392:	49 39 c5             	cmp    %rax,%r13
   140002395:	7e 6d                	jle    140002404 <_pei386_runtime_relocator+0x314>
   140002397:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000239c:	49 39 c5             	cmp    %rax,%r13
   14000239f:	7f 63                	jg     140002404 <_pei386_runtime_relocator+0x314>
   1400023a1:	4c 89 f1             	mov    %r14,%rcx
   1400023a4:	e8 d7 fb ff ff       	call   140001f80 <mark_section_writable>
   1400023a9:	45 89 2e             	mov    %r13d,(%r14)
   1400023ac:	e9 65 fe ff ff       	jmp    140002216 <_pei386_runtime_relocator+0x126>
   1400023b1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400023b8:	48 39 fb             	cmp    %rdi,%rbx
   1400023bb:	0f 83 4e fd ff ff    	jae    14000210f <_pei386_runtime_relocator+0x1f>
   1400023c1:	4c 8b 35 98 21 00 00 	mov    0x2198(%rip),%r14        # 140004560 <.refptr.__image_base__>
   1400023c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400023cf:	00 
   1400023d0:	44 8b 63 04          	mov    0x4(%rbx),%r12d
   1400023d4:	44 8b 2b             	mov    (%rbx),%r13d
   1400023d7:	48 83 c3 08          	add    $0x8,%rbx
   1400023db:	4d 01 f4             	add    %r14,%r12
   1400023de:	45 03 2c 24          	add    (%r12),%r13d
   1400023e2:	4c 89 e1             	mov    %r12,%rcx
   1400023e5:	e8 96 fb ff ff       	call   140001f80 <mark_section_writable>
   1400023ea:	45 89 2c 24          	mov    %r13d,(%r12)
   1400023ee:	48 39 fb             	cmp    %rdi,%rbx
   1400023f1:	72 dd                	jb     1400023d0 <_pei386_runtime_relocator+0x2e0>
   1400023f3:	e9 b8 fe ff ff       	jmp    1400022b0 <_pei386_runtime_relocator+0x1c0>
   1400023f8:	48 8d 0d 19 20 00 00 	lea    0x2019(%rip),%rcx        # 140004418 <.rdata+0xd8>
   1400023ff:	e8 0c fb ff ff       	call   140001f10 <__report_error>
   140002404:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
   140002409:	4d 89 f0             	mov    %r14,%r8
   14000240c:	48 8d 0d 35 20 00 00 	lea    0x2035(%rip),%rcx        # 140004448 <.rdata+0x108>
   140002413:	e8 f8 fa ff ff       	call   140001f10 <__report_error>
   140002418:	48 8d 0d c1 1f 00 00 	lea    0x1fc1(%rip),%rcx        # 1400043e0 <.rdata+0xa0>
   14000241f:	e8 ec fa ff ff       	call   140001f10 <__report_error>
   140002424:	90                   	nop
   140002425:	90                   	nop
   140002426:	90                   	nop
   140002427:	90                   	nop
   140002428:	90                   	nop
   140002429:	90                   	nop
   14000242a:	90                   	nop
   14000242b:	90                   	nop
   14000242c:	90                   	nop
   14000242d:	90                   	nop
   14000242e:	90                   	nop
   14000242f:	90                   	nop

0000000140002430 <__mingw_raise_matherr>:
   140002430:	48 83 ec 58          	sub    $0x58,%rsp
   140002434:	48 8b 05 95 4c 00 00 	mov    0x4c95(%rip),%rax        # 1400070d0 <stUserMathErr>
   14000243b:	48 85 c0             	test   %rax,%rax
   14000243e:	74 2c                	je     14000246c <__mingw_raise_matherr+0x3c>
   140002440:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140002447:	00 00 
   140002449:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   14000244d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140002452:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140002457:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
   14000245d:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
   140002463:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140002469:	ff d0                	call   *%rax
   14000246b:	90                   	nop
   14000246c:	48 83 c4 58          	add    $0x58,%rsp
   140002470:	c3                   	ret    
   140002471:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002478:	00 00 00 00 
   14000247c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002480 <__mingw_setusermatherr>:
   140002480:	48 89 0d 49 4c 00 00 	mov    %rcx,0x4c49(%rip)        # 1400070d0 <stUserMathErr>
   140002487:	e9 14 09 00 00       	jmp    140002da0 <__setusermatherr>
   14000248c:	90                   	nop
   14000248d:	90                   	nop
   14000248e:	90                   	nop
   14000248f:	90                   	nop

0000000140002490 <_gnu_exception_handler>:
   140002490:	41 54                	push   %r12
   140002492:	48 83 ec 20          	sub    $0x20,%rsp
   140002496:	48 8b 11             	mov    (%rcx),%rdx
   140002499:	8b 02                	mov    (%rdx),%eax
   14000249b:	49 89 cc             	mov    %rcx,%r12
   14000249e:	89 c1                	mov    %eax,%ecx
   1400024a0:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   1400024a6:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   1400024ac:	0f 84 be 00 00 00    	je     140002570 <_gnu_exception_handler+0xe0>
   1400024b2:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   1400024b7:	0f 87 9a 00 00 00    	ja     140002557 <_gnu_exception_handler+0xc7>
   1400024bd:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   1400024c2:	76 44                	jbe    140002508 <_gnu_exception_handler+0x78>
   1400024c4:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   1400024c9:	83 f8 09             	cmp    $0x9,%eax
   1400024cc:	77 2a                	ja     1400024f8 <_gnu_exception_handler+0x68>
   1400024ce:	48 8d 15 cb 1f 00 00 	lea    0x1fcb(%rip),%rdx        # 1400044a0 <.rdata>
   1400024d5:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   1400024d9:	48 01 d0             	add    %rdx,%rax
   1400024dc:	ff e0                	jmp    *%rax
   1400024de:	66 90                	xchg   %ax,%ax
   1400024e0:	ba 01 00 00 00       	mov    $0x1,%edx
   1400024e5:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400024ea:	e8 19 09 00 00       	call   140002e08 <signal>
   1400024ef:	e8 0c fa ff ff       	call   140001f00 <_fpreset>
   1400024f4:	0f 1f 40 00          	nopl   0x0(%rax)
   1400024f8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400024fd:	48 83 c4 20          	add    $0x20,%rsp
   140002501:	41 5c                	pop    %r12
   140002503:	c3                   	ret    
   140002504:	0f 1f 40 00          	nopl   0x0(%rax)
   140002508:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   14000250d:	0f 84 dd 00 00 00    	je     1400025f0 <_gnu_exception_handler+0x160>
   140002513:	76 3b                	jbe    140002550 <_gnu_exception_handler+0xc0>
   140002515:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   14000251a:	74 dc                	je     1400024f8 <_gnu_exception_handler+0x68>
   14000251c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140002521:	75 34                	jne    140002557 <_gnu_exception_handler+0xc7>
   140002523:	31 d2                	xor    %edx,%edx
   140002525:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000252a:	e8 d9 08 00 00       	call   140002e08 <signal>
   14000252f:	48 83 f8 01          	cmp    $0x1,%rax
   140002533:	0f 84 e3 00 00 00    	je     14000261c <_gnu_exception_handler+0x18c>
   140002539:	48 85 c0             	test   %rax,%rax
   14000253c:	74 19                	je     140002557 <_gnu_exception_handler+0xc7>
   14000253e:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002543:	ff d0                	call   *%rax
   140002545:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000254a:	eb b1                	jmp    1400024fd <_gnu_exception_handler+0x6d>
   14000254c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002550:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140002555:	74 a1                	je     1400024f8 <_gnu_exception_handler+0x68>
   140002557:	48 8b 05 92 4b 00 00 	mov    0x4b92(%rip),%rax        # 1400070f0 <__mingw_oldexcpt_handler>
   14000255e:	48 85 c0             	test   %rax,%rax
   140002561:	74 1d                	je     140002580 <_gnu_exception_handler+0xf0>
   140002563:	4c 89 e1             	mov    %r12,%rcx
   140002566:	48 83 c4 20          	add    $0x20,%rsp
   14000256a:	41 5c                	pop    %r12
   14000256c:	48 ff e0             	rex.W jmp *%rax
   14000256f:	90                   	nop
   140002570:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140002574:	0f 85 38 ff ff ff    	jne    1400024b2 <_gnu_exception_handler+0x22>
   14000257a:	e9 79 ff ff ff       	jmp    1400024f8 <_gnu_exception_handler+0x68>
   14000257f:	90                   	nop
   140002580:	31 c0                	xor    %eax,%eax
   140002582:	48 83 c4 20          	add    $0x20,%rsp
   140002586:	41 5c                	pop    %r12
   140002588:	c3                   	ret    
   140002589:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002590:	31 d2                	xor    %edx,%edx
   140002592:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002597:	e8 6c 08 00 00       	call   140002e08 <signal>
   14000259c:	48 83 f8 01          	cmp    $0x1,%rax
   1400025a0:	0f 84 3a ff ff ff    	je     1400024e0 <_gnu_exception_handler+0x50>
   1400025a6:	48 85 c0             	test   %rax,%rax
   1400025a9:	74 ac                	je     140002557 <_gnu_exception_handler+0xc7>
   1400025ab:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400025b0:	ff d0                	call   *%rax
   1400025b2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400025b7:	e9 41 ff ff ff       	jmp    1400024fd <_gnu_exception_handler+0x6d>
   1400025bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400025c0:	31 d2                	xor    %edx,%edx
   1400025c2:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400025c7:	e8 3c 08 00 00       	call   140002e08 <signal>
   1400025cc:	48 83 f8 01          	cmp    $0x1,%rax
   1400025d0:	75 d4                	jne    1400025a6 <_gnu_exception_handler+0x116>
   1400025d2:	ba 01 00 00 00       	mov    $0x1,%edx
   1400025d7:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400025dc:	e8 27 08 00 00       	call   140002e08 <signal>
   1400025e1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400025e6:	e9 12 ff ff ff       	jmp    1400024fd <_gnu_exception_handler+0x6d>
   1400025eb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400025f0:	31 d2                	xor    %edx,%edx
   1400025f2:	b9 0b 00 00 00       	mov    $0xb,%ecx
   1400025f7:	e8 0c 08 00 00       	call   140002e08 <signal>
   1400025fc:	48 83 f8 01          	cmp    $0x1,%rax
   140002600:	74 31                	je     140002633 <_gnu_exception_handler+0x1a3>
   140002602:	48 85 c0             	test   %rax,%rax
   140002605:	0f 84 4c ff ff ff    	je     140002557 <_gnu_exception_handler+0xc7>
   14000260b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002610:	ff d0                	call   *%rax
   140002612:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002617:	e9 e1 fe ff ff       	jmp    1400024fd <_gnu_exception_handler+0x6d>
   14000261c:	ba 01 00 00 00       	mov    $0x1,%edx
   140002621:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002626:	e8 dd 07 00 00       	call   140002e08 <signal>
   14000262b:	83 c8 ff             	or     $0xffffffff,%eax
   14000262e:	e9 ca fe ff ff       	jmp    1400024fd <_gnu_exception_handler+0x6d>
   140002633:	ba 01 00 00 00       	mov    $0x1,%edx
   140002638:	b9 0b 00 00 00       	mov    $0xb,%ecx
   14000263d:	e8 c6 07 00 00       	call   140002e08 <signal>
   140002642:	83 c8 ff             	or     $0xffffffff,%eax
   140002645:	e9 b3 fe ff ff       	jmp    1400024fd <_gnu_exception_handler+0x6d>
   14000264a:	90                   	nop
   14000264b:	90                   	nop
   14000264c:	90                   	nop
   14000264d:	90                   	nop
   14000264e:	90                   	nop
   14000264f:	90                   	nop

0000000140002650 <__mingwthr_run_key_dtors.part.0>:
   140002650:	41 55                	push   %r13
   140002652:	41 54                	push   %r12
   140002654:	57                   	push   %rdi
   140002655:	56                   	push   %rsi
   140002656:	53                   	push   %rbx
   140002657:	48 83 ec 20          	sub    $0x20,%rsp
   14000265b:	4c 8d 2d be 4a 00 00 	lea    0x4abe(%rip),%r13        # 140007120 <__mingwthr_cs>
   140002662:	4c 89 e9             	mov    %r13,%rcx
   140002665:	ff 15 a1 5b 00 00    	call   *0x5ba1(%rip)        # 14000820c <__imp_EnterCriticalSection>
   14000266b:	48 8b 1d 8e 4a 00 00 	mov    0x4a8e(%rip),%rbx        # 140007100 <key_dtor_list>
   140002672:	48 85 db             	test   %rbx,%rbx
   140002675:	74 35                	je     1400026ac <__mingwthr_run_key_dtors.part.0+0x5c>
   140002677:	48 8b 3d c6 5b 00 00 	mov    0x5bc6(%rip),%rdi        # 140008244 <__imp_TlsGetValue>
   14000267e:	48 8b 35 8f 5b 00 00 	mov    0x5b8f(%rip),%rsi        # 140008214 <__imp_GetLastError>
   140002685:	0f 1f 00             	nopl   (%rax)
   140002688:	8b 0b                	mov    (%rbx),%ecx
   14000268a:	ff d7                	call   *%rdi
   14000268c:	49 89 c4             	mov    %rax,%r12
   14000268f:	ff d6                	call   *%rsi
   140002691:	85 c0                	test   %eax,%eax
   140002693:	75 0e                	jne    1400026a3 <__mingwthr_run_key_dtors.part.0+0x53>
   140002695:	4d 85 e4             	test   %r12,%r12
   140002698:	74 09                	je     1400026a3 <__mingwthr_run_key_dtors.part.0+0x53>
   14000269a:	48 8b 43 08          	mov    0x8(%rbx),%rax
   14000269e:	4c 89 e1             	mov    %r12,%rcx
   1400026a1:	ff d0                	call   *%rax
   1400026a3:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   1400026a7:	48 85 db             	test   %rbx,%rbx
   1400026aa:	75 dc                	jne    140002688 <__mingwthr_run_key_dtors.part.0+0x38>
   1400026ac:	4c 89 e9             	mov    %r13,%rcx
   1400026af:	48 83 c4 20          	add    $0x20,%rsp
   1400026b3:	5b                   	pop    %rbx
   1400026b4:	5e                   	pop    %rsi
   1400026b5:	5f                   	pop    %rdi
   1400026b6:	41 5c                	pop    %r12
   1400026b8:	41 5d                	pop    %r13
   1400026ba:	48 ff 25 6b 5b 00 00 	rex.W jmp *0x5b6b(%rip)        # 14000822c <__imp_LeaveCriticalSection>
   1400026c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400026c8:	00 00 00 00 
   1400026cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400026d0 <___w64_mingwthr_add_key_dtor>:
   1400026d0:	41 54                	push   %r12
   1400026d2:	57                   	push   %rdi
   1400026d3:	56                   	push   %rsi
   1400026d4:	53                   	push   %rbx
   1400026d5:	48 83 ec 28          	sub    $0x28,%rsp
   1400026d9:	8b 05 29 4a 00 00    	mov    0x4a29(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   1400026df:	89 cf                	mov    %ecx,%edi
   1400026e1:	48 89 d6             	mov    %rdx,%rsi
   1400026e4:	85 c0                	test   %eax,%eax
   1400026e6:	75 10                	jne    1400026f8 <___w64_mingwthr_add_key_dtor+0x28>
   1400026e8:	48 83 c4 28          	add    $0x28,%rsp
   1400026ec:	5b                   	pop    %rbx
   1400026ed:	5e                   	pop    %rsi
   1400026ee:	5f                   	pop    %rdi
   1400026ef:	41 5c                	pop    %r12
   1400026f1:	c3                   	ret    
   1400026f2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400026f8:	ba 18 00 00 00       	mov    $0x18,%edx
   1400026fd:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002702:	e8 c9 06 00 00       	call   140002dd0 <calloc>
   140002707:	48 89 c3             	mov    %rax,%rbx
   14000270a:	48 85 c0             	test   %rax,%rax
   14000270d:	74 3d                	je     14000274c <___w64_mingwthr_add_key_dtor+0x7c>
   14000270f:	4c 8d 25 0a 4a 00 00 	lea    0x4a0a(%rip),%r12        # 140007120 <__mingwthr_cs>
   140002716:	89 38                	mov    %edi,(%rax)
   140002718:	48 89 70 08          	mov    %rsi,0x8(%rax)
   14000271c:	4c 89 e1             	mov    %r12,%rcx
   14000271f:	ff 15 e7 5a 00 00    	call   *0x5ae7(%rip)        # 14000820c <__imp_EnterCriticalSection>
   140002725:	48 8b 05 d4 49 00 00 	mov    0x49d4(%rip),%rax        # 140007100 <key_dtor_list>
   14000272c:	4c 89 e1             	mov    %r12,%rcx
   14000272f:	48 89 1d ca 49 00 00 	mov    %rbx,0x49ca(%rip)        # 140007100 <key_dtor_list>
   140002736:	48 89 43 10          	mov    %rax,0x10(%rbx)
   14000273a:	ff 15 ec 5a 00 00    	call   *0x5aec(%rip)        # 14000822c <__imp_LeaveCriticalSection>
   140002740:	31 c0                	xor    %eax,%eax
   140002742:	48 83 c4 28          	add    $0x28,%rsp
   140002746:	5b                   	pop    %rbx
   140002747:	5e                   	pop    %rsi
   140002748:	5f                   	pop    %rdi
   140002749:	41 5c                	pop    %r12
   14000274b:	c3                   	ret    
   14000274c:	83 c8 ff             	or     $0xffffffff,%eax
   14000274f:	eb 97                	jmp    1400026e8 <___w64_mingwthr_add_key_dtor+0x18>
   140002751:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002758:	00 00 00 00 
   14000275c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002760 <___w64_mingwthr_remove_key_dtor>:
   140002760:	41 54                	push   %r12
   140002762:	53                   	push   %rbx
   140002763:	48 83 ec 28          	sub    $0x28,%rsp
   140002767:	8b 05 9b 49 00 00    	mov    0x499b(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   14000276d:	89 cb                	mov    %ecx,%ebx
   14000276f:	85 c0                	test   %eax,%eax
   140002771:	75 0d                	jne    140002780 <___w64_mingwthr_remove_key_dtor+0x20>
   140002773:	31 c0                	xor    %eax,%eax
   140002775:	48 83 c4 28          	add    $0x28,%rsp
   140002779:	5b                   	pop    %rbx
   14000277a:	41 5c                	pop    %r12
   14000277c:	c3                   	ret    
   14000277d:	0f 1f 00             	nopl   (%rax)
   140002780:	4c 8d 25 99 49 00 00 	lea    0x4999(%rip),%r12        # 140007120 <__mingwthr_cs>
   140002787:	4c 89 e1             	mov    %r12,%rcx
   14000278a:	ff 15 7c 5a 00 00    	call   *0x5a7c(%rip)        # 14000820c <__imp_EnterCriticalSection>
   140002790:	48 8b 0d 69 49 00 00 	mov    0x4969(%rip),%rcx        # 140007100 <key_dtor_list>
   140002797:	48 85 c9             	test   %rcx,%rcx
   14000279a:	74 27                	je     1400027c3 <___w64_mingwthr_remove_key_dtor+0x63>
   14000279c:	31 d2                	xor    %edx,%edx
   14000279e:	eb 0b                	jmp    1400027ab <___w64_mingwthr_remove_key_dtor+0x4b>
   1400027a0:	48 89 ca             	mov    %rcx,%rdx
   1400027a3:	48 85 c0             	test   %rax,%rax
   1400027a6:	74 1b                	je     1400027c3 <___w64_mingwthr_remove_key_dtor+0x63>
   1400027a8:	48 89 c1             	mov    %rax,%rcx
   1400027ab:	8b 01                	mov    (%rcx),%eax
   1400027ad:	39 d8                	cmp    %ebx,%eax
   1400027af:	48 8b 41 10          	mov    0x10(%rcx),%rax
   1400027b3:	75 eb                	jne    1400027a0 <___w64_mingwthr_remove_key_dtor+0x40>
   1400027b5:	48 85 d2             	test   %rdx,%rdx
   1400027b8:	74 26                	je     1400027e0 <___w64_mingwthr_remove_key_dtor+0x80>
   1400027ba:	48 89 42 10          	mov    %rax,0x10(%rdx)
   1400027be:	e8 25 06 00 00       	call   140002de8 <free>
   1400027c3:	4c 89 e1             	mov    %r12,%rcx
   1400027c6:	ff 15 60 5a 00 00    	call   *0x5a60(%rip)        # 14000822c <__imp_LeaveCriticalSection>
   1400027cc:	31 c0                	xor    %eax,%eax
   1400027ce:	48 83 c4 28          	add    $0x28,%rsp
   1400027d2:	5b                   	pop    %rbx
   1400027d3:	41 5c                	pop    %r12
   1400027d5:	c3                   	ret    
   1400027d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400027dd:	00 00 00 
   1400027e0:	48 89 05 19 49 00 00 	mov    %rax,0x4919(%rip)        # 140007100 <key_dtor_list>
   1400027e7:	eb d5                	jmp    1400027be <___w64_mingwthr_remove_key_dtor+0x5e>
   1400027e9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000001400027f0 <__mingw_TLScallback>:
   1400027f0:	53                   	push   %rbx
   1400027f1:	48 83 ec 20          	sub    $0x20,%rsp
   1400027f5:	83 fa 02             	cmp    $0x2,%edx
   1400027f8:	74 46                	je     140002840 <__mingw_TLScallback+0x50>
   1400027fa:	77 2c                	ja     140002828 <__mingw_TLScallback+0x38>
   1400027fc:	85 d2                	test   %edx,%edx
   1400027fe:	74 50                	je     140002850 <__mingw_TLScallback+0x60>
   140002800:	8b 05 02 49 00 00    	mov    0x4902(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   140002806:	85 c0                	test   %eax,%eax
   140002808:	0f 84 b2 00 00 00    	je     1400028c0 <__mingw_TLScallback+0xd0>
   14000280e:	c7 05 f0 48 00 00 01 	movl   $0x1,0x48f0(%rip)        # 140007108 <__mingwthr_cs_init>
   140002815:	00 00 00 
   140002818:	b8 01 00 00 00       	mov    $0x1,%eax
   14000281d:	48 83 c4 20          	add    $0x20,%rsp
   140002821:	5b                   	pop    %rbx
   140002822:	c3                   	ret    
   140002823:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002828:	83 fa 03             	cmp    $0x3,%edx
   14000282b:	75 eb                	jne    140002818 <__mingw_TLScallback+0x28>
   14000282d:	8b 05 d5 48 00 00    	mov    0x48d5(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   140002833:	85 c0                	test   %eax,%eax
   140002835:	74 e1                	je     140002818 <__mingw_TLScallback+0x28>
   140002837:	e8 14 fe ff ff       	call   140002650 <__mingwthr_run_key_dtors.part.0>
   14000283c:	eb da                	jmp    140002818 <__mingw_TLScallback+0x28>
   14000283e:	66 90                	xchg   %ax,%ax
   140002840:	e8 bb f6 ff ff       	call   140001f00 <_fpreset>
   140002845:	b8 01 00 00 00       	mov    $0x1,%eax
   14000284a:	48 83 c4 20          	add    $0x20,%rsp
   14000284e:	5b                   	pop    %rbx
   14000284f:	c3                   	ret    
   140002850:	8b 05 b2 48 00 00    	mov    0x48b2(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   140002856:	85 c0                	test   %eax,%eax
   140002858:	75 56                	jne    1400028b0 <__mingw_TLScallback+0xc0>
   14000285a:	8b 05 a8 48 00 00    	mov    0x48a8(%rip),%eax        # 140007108 <__mingwthr_cs_init>
   140002860:	83 f8 01             	cmp    $0x1,%eax
   140002863:	75 b3                	jne    140002818 <__mingw_TLScallback+0x28>
   140002865:	48 8b 1d 94 48 00 00 	mov    0x4894(%rip),%rbx        # 140007100 <key_dtor_list>
   14000286c:	48 85 db             	test   %rbx,%rbx
   14000286f:	74 18                	je     140002889 <__mingw_TLScallback+0x99>
   140002871:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002878:	48 89 d9             	mov    %rbx,%rcx
   14000287b:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   14000287f:	e8 64 05 00 00       	call   140002de8 <free>
   140002884:	48 85 db             	test   %rbx,%rbx
   140002887:	75 ef                	jne    140002878 <__mingw_TLScallback+0x88>
   140002889:	48 8d 0d 90 48 00 00 	lea    0x4890(%rip),%rcx        # 140007120 <__mingwthr_cs>
   140002890:	48 c7 05 65 48 00 00 	movq   $0x0,0x4865(%rip)        # 140007100 <key_dtor_list>
   140002897:	00 00 00 00 
   14000289b:	c7 05 63 48 00 00 00 	movl   $0x0,0x4863(%rip)        # 140007108 <__mingwthr_cs_init>
   1400028a2:	00 00 00 
   1400028a5:	ff 15 59 59 00 00    	call   *0x5959(%rip)        # 140008204 <__IAT_start__>
   1400028ab:	e9 68 ff ff ff       	jmp    140002818 <__mingw_TLScallback+0x28>
   1400028b0:	e8 9b fd ff ff       	call   140002650 <__mingwthr_run_key_dtors.part.0>
   1400028b5:	eb a3                	jmp    14000285a <__mingw_TLScallback+0x6a>
   1400028b7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400028be:	00 00 
   1400028c0:	48 8d 0d 59 48 00 00 	lea    0x4859(%rip),%rcx        # 140007120 <__mingwthr_cs>
   1400028c7:	ff 15 57 59 00 00    	call   *0x5957(%rip)        # 140008224 <__imp_InitializeCriticalSection>
   1400028cd:	e9 3c ff ff ff       	jmp    14000280e <__mingw_TLScallback+0x1e>
   1400028d2:	90                   	nop
   1400028d3:	90                   	nop
   1400028d4:	90                   	nop
   1400028d5:	90                   	nop
   1400028d6:	90                   	nop
   1400028d7:	90                   	nop
   1400028d8:	90                   	nop
   1400028d9:	90                   	nop
   1400028da:	90                   	nop
   1400028db:	90                   	nop
   1400028dc:	90                   	nop
   1400028dd:	90                   	nop
   1400028de:	90                   	nop
   1400028df:	90                   	nop

00000001400028e0 <_ValidateImageBase>:
   1400028e0:	31 c0                	xor    %eax,%eax
   1400028e2:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   1400028e7:	75 0f                	jne    1400028f8 <_ValidateImageBase+0x18>
   1400028e9:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   1400028ed:	48 01 d1             	add    %rdx,%rcx
   1400028f0:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   1400028f6:	74 08                	je     140002900 <_ValidateImageBase+0x20>
   1400028f8:	c3                   	ret    
   1400028f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002900:	31 c0                	xor    %eax,%eax
   140002902:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002908:	0f 94 c0             	sete   %al
   14000290b:	c3                   	ret    
   14000290c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002910 <_FindPESection>:
   140002910:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002914:	48 01 c1             	add    %rax,%rcx
   140002917:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000291b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002920:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   140002924:	85 c9                	test   %ecx,%ecx
   140002926:	74 2d                	je     140002955 <_FindPESection+0x45>
   140002928:	83 e9 01             	sub    $0x1,%ecx
   14000292b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   14000292f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140002934:	0f 1f 40 00          	nopl   0x0(%rax)
   140002938:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   14000293c:	4c 89 c1             	mov    %r8,%rcx
   14000293f:	49 39 d0             	cmp    %rdx,%r8
   140002942:	77 08                	ja     14000294c <_FindPESection+0x3c>
   140002944:	03 48 08             	add    0x8(%rax),%ecx
   140002947:	48 39 d1             	cmp    %rdx,%rcx
   14000294a:	77 0b                	ja     140002957 <_FindPESection+0x47>
   14000294c:	48 83 c0 28          	add    $0x28,%rax
   140002950:	4c 39 c8             	cmp    %r9,%rax
   140002953:	75 e3                	jne    140002938 <_FindPESection+0x28>
   140002955:	31 c0                	xor    %eax,%eax
   140002957:	c3                   	ret    
   140002958:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000295f:	00 

0000000140002960 <_FindPESectionByName>:
   140002960:	41 54                	push   %r12
   140002962:	56                   	push   %rsi
   140002963:	53                   	push   %rbx
   140002964:	48 83 ec 20          	sub    $0x20,%rsp
   140002968:	48 89 cb             	mov    %rcx,%rbx
   14000296b:	e8 a0 04 00 00       	call   140002e10 <strlen>
   140002970:	48 83 f8 08          	cmp    $0x8,%rax
   140002974:	77 7a                	ja     1400029f0 <_FindPESectionByName+0x90>
   140002976:	48 8b 15 e3 1b 00 00 	mov    0x1be3(%rip),%rdx        # 140004560 <.refptr.__image_base__>
   14000297d:	45 31 e4             	xor    %r12d,%r12d
   140002980:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002985:	75 57                	jne    1400029de <_FindPESectionByName+0x7e>
   140002987:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   14000298b:	48 01 d0             	add    %rdx,%rax
   14000298e:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140002994:	75 48                	jne    1400029de <_FindPESectionByName+0x7e>
   140002996:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000299c:	75 40                	jne    1400029de <_FindPESectionByName+0x7e>
   14000299e:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   1400029a2:	4c 8d 64 10 18       	lea    0x18(%rax,%rdx,1),%r12
   1400029a7:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   1400029ab:	85 c0                	test   %eax,%eax
   1400029ad:	74 41                	je     1400029f0 <_FindPESectionByName+0x90>
   1400029af:	83 e8 01             	sub    $0x1,%eax
   1400029b2:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400029b6:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
   1400029bb:	eb 0c                	jmp    1400029c9 <_FindPESectionByName+0x69>
   1400029bd:	0f 1f 00             	nopl   (%rax)
   1400029c0:	49 83 c4 28          	add    $0x28,%r12
   1400029c4:	49 39 f4             	cmp    %rsi,%r12
   1400029c7:	74 27                	je     1400029f0 <_FindPESectionByName+0x90>
   1400029c9:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   1400029cf:	48 89 da             	mov    %rbx,%rdx
   1400029d2:	4c 89 e1             	mov    %r12,%rcx
   1400029d5:	e8 3e 04 00 00       	call   140002e18 <strncmp>
   1400029da:	85 c0                	test   %eax,%eax
   1400029dc:	75 e2                	jne    1400029c0 <_FindPESectionByName+0x60>
   1400029de:	4c 89 e0             	mov    %r12,%rax
   1400029e1:	48 83 c4 20          	add    $0x20,%rsp
   1400029e5:	5b                   	pop    %rbx
   1400029e6:	5e                   	pop    %rsi
   1400029e7:	41 5c                	pop    %r12
   1400029e9:	c3                   	ret    
   1400029ea:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400029f0:	45 31 e4             	xor    %r12d,%r12d
   1400029f3:	4c 89 e0             	mov    %r12,%rax
   1400029f6:	48 83 c4 20          	add    $0x20,%rsp
   1400029fa:	5b                   	pop    %rbx
   1400029fb:	5e                   	pop    %rsi
   1400029fc:	41 5c                	pop    %r12
   1400029fe:	c3                   	ret    
   1400029ff:	90                   	nop

0000000140002a00 <__mingw_GetSectionForAddress>:
   140002a00:	48 8b 15 59 1b 00 00 	mov    0x1b59(%rip),%rdx        # 140004560 <.refptr.__image_base__>
   140002a07:	31 c0                	xor    %eax,%eax
   140002a09:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002a0e:	75 10                	jne    140002a20 <__mingw_GetSectionForAddress+0x20>
   140002a10:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002a14:	49 01 d0             	add    %rdx,%r8
   140002a17:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002a1e:	74 08                	je     140002a28 <__mingw_GetSectionForAddress+0x28>
   140002a20:	c3                   	ret    
   140002a21:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002a28:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002a2f:	75 ef                	jne    140002a20 <__mingw_GetSectionForAddress+0x20>
   140002a31:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140002a36:	48 29 d1             	sub    %rdx,%rcx
   140002a39:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
   140002a3e:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   140002a43:	85 d2                	test   %edx,%edx
   140002a45:	74 2e                	je     140002a75 <__mingw_GetSectionForAddress+0x75>
   140002a47:	83 ea 01             	sub    $0x1,%edx
   140002a4a:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002a4e:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140002a53:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002a58:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002a5c:	4c 89 c2             	mov    %r8,%rdx
   140002a5f:	4c 39 c1             	cmp    %r8,%rcx
   140002a62:	72 08                	jb     140002a6c <__mingw_GetSectionForAddress+0x6c>
   140002a64:	03 50 08             	add    0x8(%rax),%edx
   140002a67:	48 39 d1             	cmp    %rdx,%rcx
   140002a6a:	72 b4                	jb     140002a20 <__mingw_GetSectionForAddress+0x20>
   140002a6c:	48 83 c0 28          	add    $0x28,%rax
   140002a70:	4c 39 c8             	cmp    %r9,%rax
   140002a73:	75 e3                	jne    140002a58 <__mingw_GetSectionForAddress+0x58>
   140002a75:	31 c0                	xor    %eax,%eax
   140002a77:	c3                   	ret    
   140002a78:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002a7f:	00 

0000000140002a80 <__mingw_GetSectionCount>:
   140002a80:	48 8b 05 d9 1a 00 00 	mov    0x1ad9(%rip),%rax        # 140004560 <.refptr.__image_base__>
   140002a87:	45 31 c0             	xor    %r8d,%r8d
   140002a8a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140002a8f:	75 0f                	jne    140002aa0 <__mingw_GetSectionCount+0x20>
   140002a91:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002a95:	48 01 d0             	add    %rdx,%rax
   140002a98:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140002a9e:	74 08                	je     140002aa8 <__mingw_GetSectionCount+0x28>
   140002aa0:	44 89 c0             	mov    %r8d,%eax
   140002aa3:	c3                   	ret    
   140002aa4:	0f 1f 40 00          	nopl   0x0(%rax)
   140002aa8:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   140002aae:	75 f0                	jne    140002aa0 <__mingw_GetSectionCount+0x20>
   140002ab0:	44 0f b7 40 06       	movzwl 0x6(%rax),%r8d
   140002ab5:	44 89 c0             	mov    %r8d,%eax
   140002ab8:	c3                   	ret    
   140002ab9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002ac0 <_FindPESectionExec>:
   140002ac0:	4c 8b 05 99 1a 00 00 	mov    0x1a99(%rip),%r8        # 140004560 <.refptr.__image_base__>
   140002ac7:	31 c0                	xor    %eax,%eax
   140002ac9:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   140002acf:	75 0f                	jne    140002ae0 <_FindPESectionExec+0x20>
   140002ad1:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140002ad5:	4c 01 c2             	add    %r8,%rdx
   140002ad8:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   140002ade:	74 08                	je     140002ae8 <_FindPESectionExec+0x28>
   140002ae0:	c3                   	ret    
   140002ae1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002ae8:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   140002aee:	75 f0                	jne    140002ae0 <_FindPESectionExec+0x20>
   140002af0:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002af4:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   140002af9:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
   140002afd:	85 d2                	test   %edx,%edx
   140002aff:	74 27                	je     140002b28 <_FindPESectionExec+0x68>
   140002b01:	83 ea 01             	sub    $0x1,%edx
   140002b04:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002b08:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   140002b0d:	0f 1f 00             	nopl   (%rax)
   140002b10:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   140002b14:	74 09                	je     140002b1f <_FindPESectionExec+0x5f>
   140002b16:	48 85 c9             	test   %rcx,%rcx
   140002b19:	74 c5                	je     140002ae0 <_FindPESectionExec+0x20>
   140002b1b:	48 83 e9 01          	sub    $0x1,%rcx
   140002b1f:	48 83 c0 28          	add    $0x28,%rax
   140002b23:	48 39 d0             	cmp    %rdx,%rax
   140002b26:	75 e8                	jne    140002b10 <_FindPESectionExec+0x50>
   140002b28:	31 c0                	xor    %eax,%eax
   140002b2a:	c3                   	ret    
   140002b2b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140002b30 <_GetPEImageBase>:
   140002b30:	48 8b 05 29 1a 00 00 	mov    0x1a29(%rip),%rax        # 140004560 <.refptr.__image_base__>
   140002b37:	45 31 c0             	xor    %r8d,%r8d
   140002b3a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140002b3f:	75 0f                	jne    140002b50 <_GetPEImageBase+0x20>
   140002b41:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002b45:	48 01 c2             	add    %rax,%rdx
   140002b48:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   140002b4e:	74 08                	je     140002b58 <_GetPEImageBase+0x28>
   140002b50:	4c 89 c0             	mov    %r8,%rax
   140002b53:	c3                   	ret    
   140002b54:	0f 1f 40 00          	nopl   0x0(%rax)
   140002b58:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   140002b5e:	4c 0f 44 c0          	cmove  %rax,%r8
   140002b62:	4c 89 c0             	mov    %r8,%rax
   140002b65:	c3                   	ret    
   140002b66:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002b6d:	00 00 00 

0000000140002b70 <_IsNonwritableInCurrentImage>:
   140002b70:	48 8b 15 e9 19 00 00 	mov    0x19e9(%rip),%rdx        # 140004560 <.refptr.__image_base__>
   140002b77:	31 c0                	xor    %eax,%eax
   140002b79:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002b7e:	75 10                	jne    140002b90 <_IsNonwritableInCurrentImage+0x20>
   140002b80:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002b84:	49 01 d0             	add    %rdx,%r8
   140002b87:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002b8e:	74 08                	je     140002b98 <_IsNonwritableInCurrentImage+0x28>
   140002b90:	c3                   	ret    
   140002b91:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002b98:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002b9f:	75 ef                	jne    140002b90 <_IsNonwritableInCurrentImage+0x20>
   140002ba1:	48 29 d1             	sub    %rdx,%rcx
   140002ba4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002ba9:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002bae:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002bb3:	45 85 c0             	test   %r8d,%r8d
   140002bb6:	74 d8                	je     140002b90 <_IsNonwritableInCurrentImage+0x20>
   140002bb8:	41 8d 40 ff          	lea    -0x1(%r8),%eax
   140002bbc:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002bc0:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140002bc5:	0f 1f 00             	nopl   (%rax)
   140002bc8:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   140002bcc:	4c 89 c0             	mov    %r8,%rax
   140002bcf:	4c 39 c1             	cmp    %r8,%rcx
   140002bd2:	72 08                	jb     140002bdc <_IsNonwritableInCurrentImage+0x6c>
   140002bd4:	03 42 08             	add    0x8(%rdx),%eax
   140002bd7:	48 39 c1             	cmp    %rax,%rcx
   140002bda:	72 14                	jb     140002bf0 <_IsNonwritableInCurrentImage+0x80>
   140002bdc:	48 83 c2 28          	add    $0x28,%rdx
   140002be0:	4c 39 ca             	cmp    %r9,%rdx
   140002be3:	75 e3                	jne    140002bc8 <_IsNonwritableInCurrentImage+0x58>
   140002be5:	31 c0                	xor    %eax,%eax
   140002be7:	c3                   	ret    
   140002be8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002bef:	00 
   140002bf0:	8b 42 24             	mov    0x24(%rdx),%eax
   140002bf3:	f7 d0                	not    %eax
   140002bf5:	c1 e8 1f             	shr    $0x1f,%eax
   140002bf8:	c3                   	ret    
   140002bf9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002c00 <__mingw_enum_import_library_names>:
   140002c00:	4c 8b 1d 59 19 00 00 	mov    0x1959(%rip),%r11        # 140004560 <.refptr.__image_base__>
   140002c07:	45 31 c9             	xor    %r9d,%r9d
   140002c0a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002c10:	75 10                	jne    140002c22 <__mingw_enum_import_library_names+0x22>
   140002c12:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140002c16:	4d 01 d8             	add    %r11,%r8
   140002c19:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002c20:	74 0e                	je     140002c30 <__mingw_enum_import_library_names+0x30>
   140002c22:	4c 89 c8             	mov    %r9,%rax
   140002c25:	c3                   	ret    
   140002c26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002c2d:	00 00 00 
   140002c30:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002c37:	75 e9                	jne    140002c22 <__mingw_enum_import_library_names+0x22>
   140002c39:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140002c40:	85 c0                	test   %eax,%eax
   140002c42:	74 de                	je     140002c22 <__mingw_enum_import_library_names+0x22>
   140002c44:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002c49:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002c4e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002c53:	45 85 c0             	test   %r8d,%r8d
   140002c56:	74 ca                	je     140002c22 <__mingw_enum_import_library_names+0x22>
   140002c58:	41 83 e8 01          	sub    $0x1,%r8d
   140002c5c:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140002c60:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140002c65:	0f 1f 00             	nopl   (%rax)
   140002c68:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   140002c6c:	4d 89 c8             	mov    %r9,%r8
   140002c6f:	4c 39 c8             	cmp    %r9,%rax
   140002c72:	72 09                	jb     140002c7d <__mingw_enum_import_library_names+0x7d>
   140002c74:	44 03 42 08          	add    0x8(%rdx),%r8d
   140002c78:	4c 39 c0             	cmp    %r8,%rax
   140002c7b:	72 13                	jb     140002c90 <__mingw_enum_import_library_names+0x90>
   140002c7d:	48 83 c2 28          	add    $0x28,%rdx
   140002c81:	49 39 d2             	cmp    %rdx,%r10
   140002c84:	75 e2                	jne    140002c68 <__mingw_enum_import_library_names+0x68>
   140002c86:	45 31 c9             	xor    %r9d,%r9d
   140002c89:	4c 89 c8             	mov    %r9,%rax
   140002c8c:	c3                   	ret    
   140002c8d:	0f 1f 00             	nopl   (%rax)
   140002c90:	4c 01 d8             	add    %r11,%rax
   140002c93:	eb 0a                	jmp    140002c9f <__mingw_enum_import_library_names+0x9f>
   140002c95:	0f 1f 00             	nopl   (%rax)
   140002c98:	83 e9 01             	sub    $0x1,%ecx
   140002c9b:	48 83 c0 14          	add    $0x14,%rax
   140002c9f:	44 8b 40 04          	mov    0x4(%rax),%r8d
   140002ca3:	45 85 c0             	test   %r8d,%r8d
   140002ca6:	75 07                	jne    140002caf <__mingw_enum_import_library_names+0xaf>
   140002ca8:	8b 50 0c             	mov    0xc(%rax),%edx
   140002cab:	85 d2                	test   %edx,%edx
   140002cad:	74 d7                	je     140002c86 <__mingw_enum_import_library_names+0x86>
   140002caf:	85 c9                	test   %ecx,%ecx
   140002cb1:	7f e5                	jg     140002c98 <__mingw_enum_import_library_names+0x98>
   140002cb3:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   140002cb7:	4d 01 d9             	add    %r11,%r9
   140002cba:	4c 89 c8             	mov    %r9,%rax
   140002cbd:	c3                   	ret    
   140002cbe:	90                   	nop
   140002cbf:	90                   	nop

0000000140002cc0 <_Unwind_Resume>:
   140002cc0:	ff 25 6e 56 00 00    	jmp    *0x566e(%rip)        # 140008334 <__imp__Unwind_Resume>
   140002cc6:	90                   	nop
   140002cc7:	90                   	nop
   140002cc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002ccf:	00 

0000000140002cd0 <___chkstk_ms>:
   140002cd0:	51                   	push   %rcx
   140002cd1:	50                   	push   %rax
   140002cd2:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002cd8:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   140002cdd:	72 19                	jb     140002cf8 <___chkstk_ms+0x28>
   140002cdf:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002ce6:	48 83 09 00          	orq    $0x0,(%rcx)
   140002cea:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002cf0:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002cf6:	77 e7                	ja     140002cdf <___chkstk_ms+0xf>
   140002cf8:	48 29 c1             	sub    %rax,%rcx
   140002cfb:	48 83 09 00          	orq    $0x0,(%rcx)
   140002cff:	58                   	pop    %rax
   140002d00:	59                   	pop    %rcx
   140002d01:	c3                   	ret    
   140002d02:	90                   	nop
   140002d03:	90                   	nop
   140002d04:	90                   	nop
   140002d05:	90                   	nop
   140002d06:	90                   	nop
   140002d07:	90                   	nop
   140002d08:	90                   	nop
   140002d09:	90                   	nop
   140002d0a:	90                   	nop
   140002d0b:	90                   	nop
   140002d0c:	90                   	nop
   140002d0d:	90                   	nop
   140002d0e:	90                   	nop
   140002d0f:	90                   	nop

0000000140002d10 <__p__fmode>:
   140002d10:	48 8b 05 89 18 00 00 	mov    0x1889(%rip),%rax        # 1400045a0 <.refptr.__imp__fmode>
   140002d17:	48 8b 00             	mov    (%rax),%rax
   140002d1a:	c3                   	ret    
   140002d1b:	90                   	nop
   140002d1c:	90                   	nop
   140002d1d:	90                   	nop
   140002d1e:	90                   	nop
   140002d1f:	90                   	nop

0000000140002d20 <__p__commode>:
   140002d20:	48 8b 05 69 18 00 00 	mov    0x1869(%rip),%rax        # 140004590 <.refptr.__imp__commode>
   140002d27:	48 8b 00             	mov    (%rax),%rax
   140002d2a:	c3                   	ret    
   140002d2b:	90                   	nop
   140002d2c:	90                   	nop
   140002d2d:	90                   	nop
   140002d2e:	90                   	nop
   140002d2f:	90                   	nop

0000000140002d30 <__p__acmdln>:
   140002d30:	48 8b 05 49 18 00 00 	mov    0x1849(%rip),%rax        # 140004580 <.refptr.__imp__acmdln>
   140002d37:	48 8b 00             	mov    (%rax),%rax
   140002d3a:	c3                   	ret    
   140002d3b:	90                   	nop
   140002d3c:	90                   	nop
   140002d3d:	90                   	nop
   140002d3e:	90                   	nop
   140002d3f:	90                   	nop

0000000140002d40 <_get_invalid_parameter_handler>:
   140002d40:	48 8b 05 49 44 00 00 	mov    0x4449(%rip),%rax        # 140007190 <handler>
   140002d47:	c3                   	ret    
   140002d48:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002d4f:	00 

0000000140002d50 <_set_invalid_parameter_handler>:
   140002d50:	48 89 c8             	mov    %rcx,%rax
   140002d53:	48 87 05 36 44 00 00 	xchg   %rax,0x4436(%rip)        # 140007190 <handler>
   140002d5a:	c3                   	ret    
   140002d5b:	90                   	nop
   140002d5c:	90                   	nop
   140002d5d:	90                   	nop
   140002d5e:	90                   	nop
   140002d5f:	90                   	nop

0000000140002d60 <__acrt_iob_func>:
   140002d60:	53                   	push   %rbx
   140002d61:	48 83 ec 20          	sub    $0x20,%rsp
   140002d65:	89 cb                	mov    %ecx,%ebx
   140002d67:	e8 24 00 00 00       	call   140002d90 <__iob_func>
   140002d6c:	89 d9                	mov    %ebx,%ecx
   140002d6e:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140002d72:	48 c1 e2 04          	shl    $0x4,%rdx
   140002d76:	48 01 d0             	add    %rdx,%rax
   140002d79:	48 83 c4 20          	add    $0x20,%rsp
   140002d7d:	5b                   	pop    %rbx
   140002d7e:	c3                   	ret    
   140002d7f:	90                   	nop

0000000140002d80 <__C_specific_handler>:
   140002d80:	ff 25 de 54 00 00    	jmp    *0x54de(%rip)        # 140008264 <__imp___C_specific_handler>
   140002d86:	90                   	nop
   140002d87:	90                   	nop

0000000140002d88 <__getmainargs>:
   140002d88:	ff 25 de 54 00 00    	jmp    *0x54de(%rip)        # 14000826c <__imp___getmainargs>
   140002d8e:	90                   	nop
   140002d8f:	90                   	nop

0000000140002d90 <__iob_func>:
   140002d90:	ff 25 e6 54 00 00    	jmp    *0x54e6(%rip)        # 14000827c <__imp___iob_func>
   140002d96:	90                   	nop
   140002d97:	90                   	nop

0000000140002d98 <__set_app_type>:
   140002d98:	ff 25 e6 54 00 00    	jmp    *0x54e6(%rip)        # 140008284 <__imp___set_app_type>
   140002d9e:	90                   	nop
   140002d9f:	90                   	nop

0000000140002da0 <__setusermatherr>:
   140002da0:	ff 25 e6 54 00 00    	jmp    *0x54e6(%rip)        # 14000828c <__imp___setusermatherr>
   140002da6:	90                   	nop
   140002da7:	90                   	nop

0000000140002da8 <_amsg_exit>:
   140002da8:	ff 25 ee 54 00 00    	jmp    *0x54ee(%rip)        # 14000829c <__imp__amsg_exit>
   140002dae:	90                   	nop
   140002daf:	90                   	nop

0000000140002db0 <_cexit>:
   140002db0:	ff 25 ee 54 00 00    	jmp    *0x54ee(%rip)        # 1400082a4 <__imp__cexit>
   140002db6:	90                   	nop
   140002db7:	90                   	nop

0000000140002db8 <_initterm>:
   140002db8:	ff 25 fe 54 00 00    	jmp    *0x54fe(%rip)        # 1400082bc <__imp__initterm>
   140002dbe:	90                   	nop
   140002dbf:	90                   	nop

0000000140002dc0 <_onexit>:
   140002dc0:	ff 25 fe 54 00 00    	jmp    *0x54fe(%rip)        # 1400082c4 <__imp__onexit>
   140002dc6:	90                   	nop
   140002dc7:	90                   	nop

0000000140002dc8 <abort>:
   140002dc8:	ff 25 fe 54 00 00    	jmp    *0x54fe(%rip)        # 1400082cc <__imp_abort>
   140002dce:	90                   	nop
   140002dcf:	90                   	nop

0000000140002dd0 <calloc>:
   140002dd0:	ff 25 fe 54 00 00    	jmp    *0x54fe(%rip)        # 1400082d4 <__imp_calloc>
   140002dd6:	90                   	nop
   140002dd7:	90                   	nop

0000000140002dd8 <exit>:
   140002dd8:	ff 25 fe 54 00 00    	jmp    *0x54fe(%rip)        # 1400082dc <__imp_exit>
   140002dde:	90                   	nop
   140002ddf:	90                   	nop

0000000140002de0 <fprintf>:
   140002de0:	ff 25 fe 54 00 00    	jmp    *0x54fe(%rip)        # 1400082e4 <__imp_fprintf>
   140002de6:	90                   	nop
   140002de7:	90                   	nop

0000000140002de8 <free>:
   140002de8:	ff 25 fe 54 00 00    	jmp    *0x54fe(%rip)        # 1400082ec <__imp_free>
   140002dee:	90                   	nop
   140002def:	90                   	nop

0000000140002df0 <fwrite>:
   140002df0:	ff 25 fe 54 00 00    	jmp    *0x54fe(%rip)        # 1400082f4 <__imp_fwrite>
   140002df6:	90                   	nop
   140002df7:	90                   	nop

0000000140002df8 <malloc>:
   140002df8:	ff 25 fe 54 00 00    	jmp    *0x54fe(%rip)        # 1400082fc <__imp_malloc>
   140002dfe:	90                   	nop
   140002dff:	90                   	nop

0000000140002e00 <memcpy>:
   140002e00:	ff 25 fe 54 00 00    	jmp    *0x54fe(%rip)        # 140008304 <__imp_memcpy>
   140002e06:	90                   	nop
   140002e07:	90                   	nop

0000000140002e08 <signal>:
   140002e08:	ff 25 fe 54 00 00    	jmp    *0x54fe(%rip)        # 14000830c <__imp_signal>
   140002e0e:	90                   	nop
   140002e0f:	90                   	nop

0000000140002e10 <strlen>:
   140002e10:	ff 25 fe 54 00 00    	jmp    *0x54fe(%rip)        # 140008314 <__imp_strlen>
   140002e16:	90                   	nop
   140002e17:	90                   	nop

0000000140002e18 <strncmp>:
   140002e18:	ff 25 fe 54 00 00    	jmp    *0x54fe(%rip)        # 14000831c <__imp_strncmp>
   140002e1e:	90                   	nop
   140002e1f:	90                   	nop

0000000140002e20 <vfprintf>:
   140002e20:	ff 25 fe 54 00 00    	jmp    *0x54fe(%rip)        # 140008324 <__imp_vfprintf>
   140002e26:	90                   	nop
   140002e27:	90                   	nop
   140002e28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002e2f:	00 

0000000140002e30 <VirtualQuery>:
   140002e30:	ff 25 1e 54 00 00    	jmp    *0x541e(%rip)        # 140008254 <__imp_VirtualQuery>
   140002e36:	90                   	nop
   140002e37:	90                   	nop

0000000140002e38 <VirtualProtect>:
   140002e38:	ff 25 0e 54 00 00    	jmp    *0x540e(%rip)        # 14000824c <__imp_VirtualProtect>
   140002e3e:	90                   	nop
   140002e3f:	90                   	nop

0000000140002e40 <TlsGetValue>:
   140002e40:	ff 25 fe 53 00 00    	jmp    *0x53fe(%rip)        # 140008244 <__imp_TlsGetValue>
   140002e46:	90                   	nop
   140002e47:	90                   	nop

0000000140002e48 <Sleep>:
   140002e48:	ff 25 ee 53 00 00    	jmp    *0x53ee(%rip)        # 14000823c <__imp_Sleep>
   140002e4e:	90                   	nop
   140002e4f:	90                   	nop

0000000140002e50 <SetUnhandledExceptionFilter>:
   140002e50:	ff 25 de 53 00 00    	jmp    *0x53de(%rip)        # 140008234 <__imp_SetUnhandledExceptionFilter>
   140002e56:	90                   	nop
   140002e57:	90                   	nop

0000000140002e58 <LeaveCriticalSection>:
   140002e58:	ff 25 ce 53 00 00    	jmp    *0x53ce(%rip)        # 14000822c <__imp_LeaveCriticalSection>
   140002e5e:	90                   	nop
   140002e5f:	90                   	nop

0000000140002e60 <InitializeCriticalSection>:
   140002e60:	ff 25 be 53 00 00    	jmp    *0x53be(%rip)        # 140008224 <__imp_InitializeCriticalSection>
   140002e66:	90                   	nop
   140002e67:	90                   	nop

0000000140002e68 <GetStartupInfoA>:
   140002e68:	ff 25 ae 53 00 00    	jmp    *0x53ae(%rip)        # 14000821c <__imp_GetStartupInfoA>
   140002e6e:	90                   	nop
   140002e6f:	90                   	nop

0000000140002e70 <GetLastError>:
   140002e70:	ff 25 9e 53 00 00    	jmp    *0x539e(%rip)        # 140008214 <__imp_GetLastError>
   140002e76:	90                   	nop
   140002e77:	90                   	nop

0000000140002e78 <EnterCriticalSection>:
   140002e78:	ff 25 8e 53 00 00    	jmp    *0x538e(%rip)        # 14000820c <__imp_EnterCriticalSection>
   140002e7e:	90                   	nop
   140002e7f:	90                   	nop

0000000140002e80 <DeleteCriticalSection>:
   140002e80:	ff 25 7e 53 00 00    	jmp    *0x537e(%rip)        # 140008204 <__IAT_start__>
   140002e86:	90                   	nop
   140002e87:	90                   	nop
   140002e88:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002e8f:	00 

0000000140002e90 <register_frame_ctor>:
   140002e90:	e9 7b e6 ff ff       	jmp    140001510 <__gcc_register_frame>
   140002e95:	90                   	nop
   140002e96:	90                   	nop
   140002e97:	90                   	nop
   140002e98:	90                   	nop
   140002e99:	90                   	nop
   140002e9a:	90                   	nop
   140002e9b:	90                   	nop
   140002e9c:	90                   	nop
   140002e9d:	90                   	nop
   140002e9e:	90                   	nop
   140002e9f:	90                   	nop

0000000140002ea0 <__CTOR_LIST__>:
   140002ea0:	ff                   	(bad)  
   140002ea1:	ff                   	(bad)  
   140002ea2:	ff                   	(bad)  
   140002ea3:	ff                   	(bad)  
   140002ea4:	ff                   	(bad)  
   140002ea5:	ff                   	(bad)  
   140002ea6:	ff                   	(bad)  
   140002ea7:	ff                   	.byte 0xff

0000000140002ea8 <.ctors>:
   140002ea8:	60                   	(bad)  
   140002ea9:	1a 00                	sbb    (%rax),%al
   140002eab:	40 01 00             	rex add %eax,(%rax)
	...

0000000140002eb0 <.ctors>:
   140002eb0:	e7 1b                	out    %eax,$0x1b
   140002eb2:	00 40 01             	add    %al,0x1(%rax)
   140002eb5:	00 00                	add    %al,(%rax)
	...

0000000140002eb8 <.ctors.65535>:
   140002eb8:	90                   	nop
   140002eb9:	2e 00 40 01          	cs add %al,0x1(%rax)
	...

0000000140002ec8 <__DTOR_LIST__>:
   140002ec8:	ff                   	(bad)  
   140002ec9:	ff                   	(bad)  
   140002eca:	ff                   	(bad)  
   140002ecb:	ff                   	(bad)  
   140002ecc:	ff                   	(bad)  
   140002ecd:	ff                   	(bad)  
   140002ece:	ff                   	(bad)  
   140002ecf:	ff 00                	incl   (%rax)
   140002ed1:	00 00                	add    %al,(%rax)
   140002ed3:	00 00                	add    %al,(%rax)
   140002ed5:	00 00                	add    %al,(%rax)
	...
