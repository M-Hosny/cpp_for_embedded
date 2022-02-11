
Assign1/out.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret    
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 75 44 00 00 	mov    0x4475(%rip),%rax        # 140005490 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 76 44 00 00 	mov    0x4476(%rip),%rax        # 1400054a0 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 79 44 00 00 	mov    0x4479(%rip),%rax        # 1400054b0 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 ec 43 00 00 	mov    0x43ec(%rip),%rax        # 140005430 <.refptr.__image_base__>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 1f 44 00 00 	mov    0x441f(%rip),%rax        # 140005480 <.refptr.__mingw_app_type>
   140001061:	89 0d b9 6f 00 00    	mov    %ecx,0x6fb9(%rip)        # 140008020 <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 71 1f 00 00       	call   140002fe8 <__set_app_type>
   140001077:	e8 e4 1e 00 00       	call   140002f60 <__p__fmode>
   14000107c:	48 8b 15 cd 44 00 00 	mov    0x44cd(%rip),%rdx        # 140005550 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 e4 1e 00 00       	call   140002f70 <__p__commode>
   14000108c:	48 8b 15 9d 44 00 00 	mov    0x449d(%rip),%rdx        # 140005530 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 d4 0e 00 00       	call   140001f70 <_setargv>
   14000109c:	48 8b 05 0d 43 00 00 	mov    0x430d(%rip),%rax        # 1400053b0 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret    
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 2e 1f 00 00       	call   140002fe8 <__set_app_type>
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
   1400010f8:	48 8b 0d 71 44 00 00 	mov    0x4471(%rip),%rcx        # 140005570 <.refptr._matherr>
   1400010ff:	e8 cc 15 00 00       	call   1400026d0 <__mingw_setusermatherr>
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
   140001134:	48 8b 05 45 44 00 00 	mov    0x4445(%rip),%rax        # 140005580 <.refptr._newmode>
   14000113b:	4c 8d 05 e6 6e 00 00 	lea    0x6ee6(%rip),%r8        # 140008028 <envp>
   140001142:	48 8d 15 e7 6e 00 00 	lea    0x6ee7(%rip),%rdx        # 140008030 <argv>
   140001149:	48 8d 0d e8 6e 00 00 	lea    0x6ee8(%rip),%rcx        # 140008038 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 c0 6e 00 00    	mov    %eax,0x6ec0(%rip)        # 140008018 <startinfo>
   140001158:	48 8d 05 b9 6e 00 00 	lea    0x6eb9(%rip),%rax        # 140008018 <startinfo>
   14000115f:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   140001164:	48 8b 05 d5 43 00 00 	mov    0x43d5(%rip),%rax        # 140005540 <.refptr._dowildcard>
   14000116b:	44 8b 08             	mov    (%rax),%r9d
   14000116e:	e8 65 1e 00 00       	call   140002fd8 <__getmainargs>
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
   1400011a1:	48 8b 3d d8 42 00 00 	mov    0x42d8(%rip),%rdi        # 140005480 <.refptr.__mingw_app_type>
   1400011a8:	44 8b 0f             	mov    (%rdi),%r9d
   1400011ab:	45 85 c9             	test   %r9d,%r9d
   1400011ae:	0f 85 9c 02 00 00    	jne    140001450 <__tmainCRTStartup+0x2d0>
   1400011b4:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011bb:	00 00 
   1400011bd:	48 8b 1d 0c 43 00 00 	mov    0x430c(%rip),%rbx        # 1400054d0 <.refptr.__native_startup_lock>
   1400011c4:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011c8:	31 ed                	xor    %ebp,%ebp
   1400011ca:	4c 8b 25 db 80 00 00 	mov    0x80db(%rip),%r12        # 1400092ac <__imp_Sleep>
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
   1400011f6:	48 8b 35 e3 42 00 00 	mov    0x42e3(%rip),%rsi        # 1400054e0 <.refptr.__native_startup_state>
   1400011fd:	31 ed                	xor    %ebp,%ebp
   1400011ff:	8b 06                	mov    (%rsi),%eax
   140001201:	83 f8 01             	cmp    $0x1,%eax
   140001204:	0f 84 05 02 00 00    	je     14000140f <__tmainCRTStartup+0x28f>
   14000120a:	8b 06                	mov    (%rsi),%eax
   14000120c:	85 c0                	test   %eax,%eax
   14000120e:	0f 84 6c 02 00 00    	je     140001480 <__tmainCRTStartup+0x300>
   140001214:	c7 05 fe 6d 00 00 01 	movl   $0x1,0x6dfe(%rip)        # 14000801c <has_cctor>
   14000121b:	00 00 00 
   14000121e:	8b 06                	mov    (%rsi),%eax
   140001220:	83 f8 01             	cmp    $0x1,%eax
   140001223:	0f 84 fb 01 00 00    	je     140001424 <__tmainCRTStartup+0x2a4>
   140001229:	85 ed                	test   %ebp,%ebp
   14000122b:	0f 84 14 02 00 00    	je     140001445 <__tmainCRTStartup+0x2c5>
   140001231:	48 8b 05 e8 41 00 00 	mov    0x41e8(%rip),%rax        # 140005420 <.refptr.__dyn_tls_init_callback>
   140001238:	48 8b 00             	mov    (%rax),%rax
   14000123b:	48 85 c0             	test   %rax,%rax
   14000123e:	74 0c                	je     14000124c <__tmainCRTStartup+0xcc>
   140001240:	45 31 c0             	xor    %r8d,%r8d
   140001243:	ba 02 00 00 00       	mov    $0x2,%edx
   140001248:	31 c9                	xor    %ecx,%ecx
   14000124a:	ff d0                	call   *%rax
   14000124c:	e8 ef 10 00 00       	call   140002340 <_pei386_runtime_relocator>
   140001251:	48 8b 0d 08 43 00 00 	mov    0x4308(%rip),%rcx        # 140005560 <.refptr._gnu_exception_handler>
   140001258:	ff 15 46 80 00 00    	call   *0x8046(%rip)        # 1400092a4 <__imp_SetUnhandledExceptionFilter>
   14000125e:	48 8b 15 5b 42 00 00 	mov    0x425b(%rip),%rdx        # 1400054c0 <.refptr.__mingw_oldexcpt_handler>
   140001265:	48 8d 0d 94 fd ff ff 	lea    -0x26c(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   14000126c:	48 89 02             	mov    %rax,(%rdx)
   14000126f:	e8 2c 1d 00 00       	call   140002fa0 <_set_invalid_parameter_handler>
   140001274:	e8 d7 0e 00 00       	call   140002150 <_fpreset>
   140001279:	48 8b 05 b0 41 00 00 	mov    0x41b0(%rip),%rax        # 140005430 <.refptr.__image_base__>
   140001280:	48 89 05 89 6d 00 00 	mov    %rax,0x6d89(%rip)        # 140008010 <__mingw_winmain_hInstance>
   140001287:	e8 f4 1c 00 00       	call   140002f80 <__p__acmdln>
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
   1400012e9:	48 89 05 18 6d 00 00 	mov    %rax,0x6d18(%rip)        # 140008008 <__mingw_winmain_lpCmdLine>
   1400012f0:	44 8b 07             	mov    (%rdi),%r8d
   1400012f3:	45 85 c0             	test   %r8d,%r8d
   1400012f6:	74 16                	je     14000130e <__tmainCRTStartup+0x18e>
   1400012f8:	b8 0a 00 00 00       	mov    $0xa,%eax
   1400012fd:	f6 44 24 5c 01       	testb  $0x1,0x5c(%rsp)
   140001302:	0f 85 e0 00 00 00    	jne    1400013e8 <__tmainCRTStartup+0x268>
   140001308:	89 05 f2 2c 00 00    	mov    %eax,0x2cf2(%rip)        # 140004000 <__data_start__>
   14000130e:	48 63 2d 23 6d 00 00 	movslq 0x6d23(%rip),%rbp        # 140008038 <argc>
   140001315:	44 8d 65 01          	lea    0x1(%rbp),%r12d
   140001319:	4d 63 e4             	movslq %r12d,%r12
   14000131c:	49 c1 e4 03          	shl    $0x3,%r12
   140001320:	4c 89 e1             	mov    %r12,%rcx
   140001323:	e8 20 1d 00 00       	call   140003048 <malloc>
   140001328:	4c 8b 2d 01 6d 00 00 	mov    0x6d01(%rip),%r13        # 140008030 <argv>
   14000132f:	48 89 c7             	mov    %rax,%rdi
   140001332:	85 ed                	test   %ebp,%ebp
   140001334:	7e 42                	jle    140001378 <__tmainCRTStartup+0x1f8>
   140001336:	31 db                	xor    %ebx,%ebx
   140001338:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000133f:	00 
   140001340:	49 8b 4c dd 00       	mov    0x0(%r13,%rbx,8),%rcx
   140001345:	e8 16 1d 00 00       	call   140003060 <strlen>
   14000134a:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000134e:	48 89 f1             	mov    %rsi,%rcx
   140001351:	e8 f2 1c 00 00       	call   140003048 <malloc>
   140001356:	49 89 f0             	mov    %rsi,%r8
   140001359:	48 89 04 df          	mov    %rax,(%rdi,%rbx,8)
   14000135d:	49 8b 54 dd 00       	mov    0x0(%r13,%rbx,8),%rdx
   140001362:	48 89 c1             	mov    %rax,%rcx
   140001365:	48 83 c3 01          	add    $0x1,%rbx
   140001369:	e8 e2 1c 00 00       	call   140003050 <memcpy>
   14000136e:	48 39 dd             	cmp    %rbx,%rbp
   140001371:	75 cd                	jne    140001340 <__tmainCRTStartup+0x1c0>
   140001373:	4a 8d 44 27 f8       	lea    -0x8(%rdi,%r12,1),%rax
   140001378:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
   14000137f:	48 89 3d aa 6c 00 00 	mov    %rdi,0x6caa(%rip)        # 140008030 <argv>
   140001386:	e8 c5 0b 00 00       	call   140001f50 <__main>
   14000138b:	48 8b 05 ae 40 00 00 	mov    0x40ae(%rip),%rax        # 140005440 <.refptr.__imp___initenv>
   140001392:	4c 8b 05 8f 6c 00 00 	mov    0x6c8f(%rip),%r8        # 140008028 <envp>
   140001399:	8b 0d 99 6c 00 00    	mov    0x6c99(%rip),%ecx        # 140008038 <argc>
   14000139f:	48 8b 00             	mov    (%rax),%rax
   1400013a2:	4c 89 00             	mov    %r8,(%rax)
   1400013a5:	48 8b 15 84 6c 00 00 	mov    0x6c84(%rip),%rdx        # 140008030 <argv>
   1400013ac:	e8 7f 01 00 00       	call   140001530 <main>
   1400013b1:	8b 0d 69 6c 00 00    	mov    0x6c69(%rip),%ecx        # 140008020 <managedapp>
   1400013b7:	89 05 67 6c 00 00    	mov    %eax,0x6c67(%rip)        # 140008024 <mainret>
   1400013bd:	85 c9                	test   %ecx,%ecx
   1400013bf:	0f 84 d9 00 00 00    	je     14000149e <__tmainCRTStartup+0x31e>
   1400013c5:	8b 15 51 6c 00 00    	mov    0x6c51(%rip),%edx        # 14000801c <has_cctor>
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
   1400013f8:	48 8b 35 e1 40 00 00 	mov    0x40e1(%rip),%rsi        # 1400054e0 <.refptr.__native_startup_state>
   1400013ff:	bd 01 00 00 00       	mov    $0x1,%ebp
   140001404:	8b 06                	mov    (%rsi),%eax
   140001406:	83 f8 01             	cmp    $0x1,%eax
   140001409:	0f 85 fb fd ff ff    	jne    14000120a <__tmainCRTStartup+0x8a>
   14000140f:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   140001414:	e8 df 1b 00 00       	call   140002ff8 <_amsg_exit>
   140001419:	8b 06                	mov    (%rsi),%eax
   14000141b:	83 f8 01             	cmp    $0x1,%eax
   14000141e:	0f 85 05 fe ff ff    	jne    140001229 <__tmainCRTStartup+0xa9>
   140001424:	48 8b 15 d5 40 00 00 	mov    0x40d5(%rip),%rdx        # 140005500 <.refptr.__xc_z>
   14000142b:	48 8b 0d be 40 00 00 	mov    0x40be(%rip),%rcx        # 1400054f0 <.refptr.__xc_a>
   140001432:	e8 d1 1b 00 00       	call   140003008 <_initterm>
   140001437:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   14000143d:	85 ed                	test   %ebp,%ebp
   14000143f:	0f 85 ec fd ff ff    	jne    140001231 <__tmainCRTStartup+0xb1>
   140001445:	31 c0                	xor    %eax,%eax
   140001447:	48 87 03             	xchg   %rax,(%rbx)
   14000144a:	e9 e2 fd ff ff       	jmp    140001231 <__tmainCRTStartup+0xb1>
   14000144f:	90                   	nop
   140001450:	4c 89 c1             	mov    %r8,%rcx
   140001453:	ff 15 33 7e 00 00    	call   *0x7e33(%rip)        # 14000928c <__imp_GetStartupInfoA>
   140001459:	e9 56 fd ff ff       	jmp    1400011b4 <__tmainCRTStartup+0x34>
   14000145e:	66 90                	xchg   %ax,%ax
   140001460:	e8 9b 1b 00 00       	call   140003000 <_cexit>
   140001465:	8b 05 b9 6b 00 00    	mov    0x6bb9(%rip),%eax        # 140008024 <mainret>
   14000146b:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   140001472:	5b                   	pop    %rbx
   140001473:	5e                   	pop    %rsi
   140001474:	5f                   	pop    %rdi
   140001475:	5d                   	pop    %rbp
   140001476:	41 5c                	pop    %r12
   140001478:	41 5d                	pop    %r13
   14000147a:	c3                   	ret    
   14000147b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001480:	48 8b 15 99 40 00 00 	mov    0x4099(%rip),%rdx        # 140005520 <.refptr.__xi_z>
   140001487:	48 8b 0d 82 40 00 00 	mov    0x4082(%rip),%rcx        # 140005510 <.refptr.__xi_a>
   14000148e:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   140001494:	e8 6f 1b 00 00       	call   140003008 <_initterm>
   140001499:	e9 80 fd ff ff       	jmp    14000121e <__tmainCRTStartup+0x9e>
   14000149e:	89 c1                	mov    %eax,%ecx
   1400014a0:	e8 83 1b 00 00       	call   140003028 <exit>
   1400014a5:	90                   	nop
   1400014a6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400014ad:	00 00 00 

00000001400014b0 <WinMainCRTStartup>:
   1400014b0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400014b4 <.l_startw>:
   1400014b4:	48 8b 05 c5 3f 00 00 	mov    0x3fc5(%rip),%rax        # 140005480 <.refptr.__mingw_app_type>
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
   1400014d4:	48 8b 05 a5 3f 00 00 	mov    0x3fa5(%rip),%rax        # 140005480 <.refptr.__mingw_app_type>
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
   1400014f4:	e8 17 1b 00 00       	call   140003010 <_onexit>
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
using std::getline;
/* 
    This is the main function of the program
*/
int main()
{
   14000152f:	90                   	nop

0000000140001530 <main>:
   140001530:	55                   	push   %rbp
   140001531:	53                   	push   %rbx
   140001532:	48 81 ec 68 02 00 00 	sub    $0x268,%rsp
   140001539:	48 8d ac 24 80 00 00 	lea    0x80(%rsp),%rbp
   140001540:	00 
   140001541:	e8 0a 0a 00 00       	call   140001f50 <__main>
    string Garbage_Words; //string used for shifting in it the unwanted words from the strings
   140001546:	48 8d 85 80 01 00 00 	lea    0x180(%rbp),%rax
   14000154d:	48 89 c1             	mov    %rax,%rcx
   140001550:	e8 03 09 00 00       	call   140001e58 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
    string line; //holds each line entered by the user
   140001555:	48 8d 85 60 01 00 00 	lea    0x160(%rbp),%rax
   14000155c:	48 89 c1             	mov    %rax,%rcx
   14000155f:	e8 f4 08 00 00       	call   140001e58 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
    string Ext; //holds each file extention
   140001564:	48 8d 85 40 01 00 00 	lea    0x140(%rbp),%rax
   14000156b:	48 89 c1             	mov    %rax,%rcx
   14000156e:	e8 e5 08 00 00       	call   140001e58 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
    stringstream str; //object from class stringstream which is used to take parts strings
   140001573:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
   140001577:	48 89 c1             	mov    %rax,%rcx
   14000157a:	e8 c1 08 00 00       	call   140001e40 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev>
    int TC_No=0; //No. of testcases which will be given in runtime
   14000157f:	c7 45 ac 00 00 00 00 	movl   $0x0,-0x54(%rbp)
    int i=0,j=0; //indexes used in the below for loops
   140001586:	c7 85 dc 01 00 00 00 	movl   $0x0,0x1dc(%rbp)
   14000158d:	00 00 00 
   140001590:	c7 85 d8 01 00 00 00 	movl   $0x0,0x1d8(%rbp)
   140001597:	00 00 00 
    int File_Size=0; //each file size will be assigned to this variable
   14000159a:	c7 45 a8 00 00 00 00 	movl   $0x0,-0x58(%rbp)
    int *No_Of_Files=NULL; /*pointer to int which will be used for creating dynamic allocated
   1400015a1:	48 c7 85 d0 01 00 00 	movq   $0x0,0x1d0(%rbp)
   1400015a8:	00 00 00 00 
                            array that holds no of files in each testcase*/
    int **Total_Sizes=NULL; /*pointer to pointer to int which will be used for creating dynamic allocated
   1400015ac:	48 c7 85 c8 01 00 00 	movq   $0x0,0x1c8(%rbp)
   1400015b3:	00 00 00 00 
                            array that holds sizes of files' types in each testcase*/
    getline(cin, line); //getting the line which contains the no of test cases and files in each case
   1400015b7:	48 8d 85 60 01 00 00 	lea    0x160(%rbp),%rax
   1400015be:	48 89 c2             	mov    %rax,%rdx
   1400015c1:	48 8b 05 f8 3d 00 00 	mov    0x3df8(%rip),%rax        # 1400053c0 <__fu1__ZSt3cin>
   1400015c8:	48 89 c1             	mov    %rax,%rcx
   1400015cb:	e8 40 08 00 00       	call   140001e10 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
    /*
        Determining the number of test cases and creating array of 
        ints with this size, each elements holds the number of files in each case
    */
    str<<line;
   1400015d0:	48 8d 85 60 01 00 00 	lea    0x160(%rbp),%rax
   1400015d7:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
   1400015db:	48 8d 4a 10          	lea    0x10(%rdx),%rcx
   1400015df:	48 89 c2             	mov    %rax,%rdx
   1400015e2:	e8 19 08 00 00       	call   140001e00 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
    str>>TC_No;
   1400015e7:	48 8d 55 ac          	lea    -0x54(%rbp),%rdx
   1400015eb:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
   1400015ef:	48 89 c1             	mov    %rax,%rcx
   1400015f2:	e8 79 08 00 00       	call   140001e70 <_ZNSirsERi>
    No_Of_Files=new int[TC_No];
   1400015f7:	8b 45 ac             	mov    -0x54(%rbp),%eax
   1400015fa:	48 98                	cltq   
   1400015fc:	48 ba fe ff ff ff ff 	movabs $0x1ffffffffffffffe,%rdx
   140001603:	ff ff 1f 
   140001606:	48 39 d0             	cmp    %rdx,%rax
   140001609:	77 0e                	ja     140001619 <main+0xe9>
   14000160b:	48 c1 e0 02          	shl    $0x2,%rax
   14000160f:	48 89 c1             	mov    %rax,%rcx
   140001612:	e8 d9 07 00 00       	call   140001df0 <_Znay>
   140001617:	eb 05                	jmp    14000161e <main+0xee>
   140001619:	e8 ca 07 00 00       	call   140001de8 <__cxa_throw_bad_array_new_length>
   14000161e:	48 89 85 d0 01 00 00 	mov    %rax,0x1d0(%rbp)
    while(str>>No_Of_Files[i])
   140001625:	eb 07                	jmp    14000162e <main+0xfe>
    {
        i++;
   140001627:	83 85 dc 01 00 00 01 	addl   $0x1,0x1dc(%rbp)
    while(str>>No_Of_Files[i])
   14000162e:	8b 85 dc 01 00 00    	mov    0x1dc(%rbp),%eax
   140001634:	48 98                	cltq   
   140001636:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   14000163d:	00 
   14000163e:	48 8b 85 d0 01 00 00 	mov    0x1d0(%rbp),%rax
   140001645:	48 01 c2             	add    %rax,%rdx
   140001648:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
   14000164c:	48 89 c1             	mov    %rax,%rcx
   14000164f:	e8 1c 08 00 00       	call   140001e70 <_ZNSirsERi>
   140001654:	48 8b 10             	mov    (%rax),%rdx
   140001657:	48 83 ea 18          	sub    $0x18,%rdx
   14000165b:	48 8b 12             	mov    (%rdx),%rdx
   14000165e:	48 01 d0             	add    %rdx,%rax
   140001661:	48 89 c1             	mov    %rax,%rcx
   140001664:	e8 0f 08 00 00       	call   140001e78 <_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv>
   140001669:	84 c0                	test   %al,%al
   14000166b:	75 ba                	jne    140001627 <main+0xf7>
    }
    /*
        Creating the 2D array for the sizes
    */
    Total_Sizes=new int*[TC_No];
   14000166d:	8b 45 ac             	mov    -0x54(%rbp),%eax
   140001670:	48 98                	cltq   
   140001672:	48 ba ff ff ff ff ff 	movabs $0xfffffffffffffff,%rdx
   140001679:	ff ff 0f 
   14000167c:	48 39 d0             	cmp    %rdx,%rax
   14000167f:	77 0e                	ja     14000168f <main+0x15f>
   140001681:	48 c1 e0 03          	shl    $0x3,%rax
   140001685:	48 89 c1             	mov    %rax,%rcx
   140001688:	e8 63 07 00 00       	call   140001df0 <_Znay>
   14000168d:	eb 05                	jmp    140001694 <main+0x164>
   14000168f:	e8 54 07 00 00       	call   140001de8 <__cxa_throw_bad_array_new_length>
   140001694:	48 89 85 c8 01 00 00 	mov    %rax,0x1c8(%rbp)
    for(i=0;i<TC_No;i++)
   14000169b:	c7 85 dc 01 00 00 00 	movl   $0x0,0x1dc(%rbp)
   1400016a2:	00 00 00 
   1400016a5:	eb 2f                	jmp    1400016d6 <main+0x1a6>
    {
        Total_Sizes[i]=new int[4];
   1400016a7:	8b 85 dc 01 00 00    	mov    0x1dc(%rbp),%eax
   1400016ad:	48 98                	cltq   
   1400016af:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   1400016b6:	00 
   1400016b7:	48 8b 85 c8 01 00 00 	mov    0x1c8(%rbp),%rax
   1400016be:	48 8d 1c 02          	lea    (%rdx,%rax,1),%rbx
   1400016c2:	b9 10 00 00 00       	mov    $0x10,%ecx
   1400016c7:	e8 24 07 00 00       	call   140001df0 <_Znay>
   1400016cc:	48 89 03             	mov    %rax,(%rbx)
    for(i=0;i<TC_No;i++)
   1400016cf:	83 85 dc 01 00 00 01 	addl   $0x1,0x1dc(%rbp)
   1400016d6:	8b 45 ac             	mov    -0x54(%rbp),%eax
   1400016d9:	39 85 dc 01 00 00    	cmp    %eax,0x1dc(%rbp)
   1400016df:	7c c6                	jl     1400016a7 <main+0x177>
    }
    /*
        initializing the array elements with zeros
    */
    for(i=0;i<TC_No;i++)
   1400016e1:	c7 85 dc 01 00 00 00 	movl   $0x0,0x1dc(%rbp)
   1400016e8:	00 00 00 
   1400016eb:	eb 55                	jmp    140001742 <main+0x212>
    {
        for(j=0;j<4;j++)
   1400016ed:	c7 85 d8 01 00 00 00 	movl   $0x0,0x1d8(%rbp)
   1400016f4:	00 00 00 
   1400016f7:	eb 39                	jmp    140001732 <main+0x202>
        {
            Total_Sizes[i][j]=0;
   1400016f9:	8b 85 dc 01 00 00    	mov    0x1dc(%rbp),%eax
   1400016ff:	48 98                	cltq   
   140001701:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001708:	00 
   140001709:	48 8b 85 c8 01 00 00 	mov    0x1c8(%rbp),%rax
   140001710:	48 01 d0             	add    %rdx,%rax
   140001713:	48 8b 10             	mov    (%rax),%rdx
   140001716:	8b 85 d8 01 00 00    	mov    0x1d8(%rbp),%eax
   14000171c:	48 98                	cltq   
   14000171e:	48 c1 e0 02          	shl    $0x2,%rax
   140001722:	48 01 d0             	add    %rdx,%rax
   140001725:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
        for(j=0;j<4;j++)
   14000172b:	83 85 d8 01 00 00 01 	addl   $0x1,0x1d8(%rbp)
   140001732:	83 bd d8 01 00 00 03 	cmpl   $0x3,0x1d8(%rbp)
   140001739:	7e be                	jle    1400016f9 <main+0x1c9>
    for(i=0;i<TC_No;i++)
   14000173b:	83 85 dc 01 00 00 01 	addl   $0x1,0x1dc(%rbp)
   140001742:	8b 45 ac             	mov    -0x54(%rbp),%eax
   140001745:	39 85 dc 01 00 00    	cmp    %eax,0x1dc(%rbp)
   14000174b:	7c a0                	jl     1400016ed <main+0x1bd>
        these for loops do the following:
            2) saving each file size in the "File_Size" variable using the 
                feature of shifting operator overloading
            3)
    */
    for(i=0;i<TC_No;i++)
   14000174d:	c7 85 dc 01 00 00 00 	movl   $0x0,0x1dc(%rbp)
   140001754:	00 00 00 
   140001757:	e9 e2 03 00 00       	jmp    140001b3e <main+0x60e>
    {
        for(j=0;j<No_Of_Files[i];j++)
   14000175c:	c7 85 d8 01 00 00 00 	movl   $0x0,0x1d8(%rbp)
   140001763:	00 00 00 
   140001766:	e9 a4 03 00 00       	jmp    140001b0f <main+0x5df>
        {
            getline(cin,line); //getting each entered line from the user
   14000176b:	48 8d 85 60 01 00 00 	lea    0x160(%rbp),%rax
   140001772:	48 89 c2             	mov    %rax,%rdx
   140001775:	48 8b 05 44 3c 00 00 	mov    0x3c44(%rip),%rax        # 1400053c0 <__fu1__ZSt3cin>
   14000177c:	48 89 c1             	mov    %rax,%rcx
   14000177f:	e8 8c 06 00 00       	call   140001e10 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
            str.clear(); //clearing the stringstream object
   140001784:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
   140001788:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
   14000178c:	ba 00 00 00 00       	mov    $0x0,%edx
   140001791:	48 89 c1             	mov    %rax,%rcx
   140001794:	e8 87 06 00 00       	call   140001e20 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate>
            str<<line;
   140001799:	48 8d 85 60 01 00 00 	lea    0x160(%rbp),%rax
   1400017a0:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
   1400017a4:	48 8d 4a 10          	lea    0x10(%rdx),%rcx
   1400017a8:	48 89 c2             	mov    %rax,%rdx
   1400017ab:	e8 50 06 00 00       	call   140001e00 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
            /*
                saving each file size in the "File_Size" variable using the 
                feature of shifting operator overloading provided in stringstream class
            */
            while(str>>Garbage_Words);
   1400017b0:	90                   	nop
   1400017b1:	48 8d 95 80 01 00 00 	lea    0x180(%rbp),%rdx
   1400017b8:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
   1400017bc:	48 89 c1             	mov    %rax,%rcx
   1400017bf:	e8 34 06 00 00       	call   140001df8 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   1400017c4:	48 8b 10             	mov    (%rax),%rdx
   1400017c7:	48 83 ea 18          	sub    $0x18,%rdx
   1400017cb:	48 8b 12             	mov    (%rdx),%rdx
   1400017ce:	48 01 d0             	add    %rdx,%rax
   1400017d1:	48 89 c1             	mov    %rax,%rcx
   1400017d4:	e8 9f 06 00 00       	call   140001e78 <_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv>
   1400017d9:	84 c0                	test   %al,%al
   1400017db:	75 d4                	jne    1400017b1 <main+0x281>
            str.clear(); 
   1400017dd:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
   1400017e1:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
   1400017e5:	ba 00 00 00 00       	mov    $0x0,%edx
   1400017ea:	48 89 c1             	mov    %rax,%rcx
   1400017ed:	e8 2e 06 00 00       	call   140001e20 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate>
            /*
                convetring the last word ,which is the file size, to 
                integer to be added to the total size 
            */
            str<<Garbage_Words; 
   1400017f2:	48 8d 85 80 01 00 00 	lea    0x180(%rbp),%rax
   1400017f9:	48 8d 55 b0          	lea    -0x50(%rbp),%rdx
   1400017fd:	48 8d 4a 10          	lea    0x10(%rdx),%rcx
   140001801:	48 89 c2             	mov    %rax,%rdx
   140001804:	e8 f7 05 00 00       	call   140001e00 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
            str>>File_Size;
   140001809:	48 8d 55 a8          	lea    -0x58(%rbp),%rdx
   14000180d:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
   140001811:	48 89 c1             	mov    %rax,%rcx
   140001814:	e8 57 06 00 00       	call   140001e70 <_ZNSirsERi>
            /*
                saving the extention name int the Ext string using 
                the index of the last dot and the last space 
                in the line "which contains the file name and the size"
            */
            int dot_index=line.find_last_of(".");
   140001819:	48 8d 85 60 01 00 00 	lea    0x160(%rbp),%rax
   140001820:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
   140001827:	48 8d 15 d2 37 00 00 	lea    0x37d2(%rip),%rdx        # 140005000 <.rdata>
   14000182e:	48 89 c1             	mov    %rax,%rcx
   140001831:	e8 5a 06 00 00       	call   140001e90 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcy>
   140001836:	89 85 c4 01 00 00    	mov    %eax,0x1c4(%rbp)
            int space_index=line.find_last_of(" ");
   14000183c:	48 8d 85 60 01 00 00 	lea    0x160(%rbp),%rax
   140001843:	49 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%r8
   14000184a:	48 8d 15 b1 37 00 00 	lea    0x37b1(%rip),%rdx        # 140005002 <.rdata+0x2>
   140001851:	48 89 c1             	mov    %rax,%rcx
   140001854:	e8 37 06 00 00       	call   140001e90 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcy>
   140001859:	89 85 c0 01 00 00    	mov    %eax,0x1c0(%rbp)
            Ext=line.substr(dot_index+1,space_index-dot_index-1);
   14000185f:	8b 85 c0 01 00 00    	mov    0x1c0(%rbp),%eax
   140001865:	2b 85 c4 01 00 00    	sub    0x1c4(%rbp),%eax
   14000186b:	83 e8 01             	sub    $0x1,%eax
   14000186e:	4c 63 c0             	movslq %eax,%r8
   140001871:	8b 85 c4 01 00 00    	mov    0x1c4(%rbp),%eax
   140001877:	83 c0 01             	add    $0x1,%eax
   14000187a:	48 63 c8             	movslq %eax,%rcx
   14000187d:	48 8d 85 a0 01 00 00 	lea    0x1a0(%rbp),%rax
   140001884:	48 8d 95 60 01 00 00 	lea    0x160(%rbp),%rdx
   14000188b:	4d 89 c1             	mov    %r8,%r9
   14000188e:	49 89 c8             	mov    %rcx,%r8
   140001891:	48 89 c1             	mov    %rax,%rcx
   140001894:	e8 ef 05 00 00       	call   140001e88 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
   140001899:	48 8d 95 a0 01 00 00 	lea    0x1a0(%rbp),%rdx
   1400018a0:	48 8d 85 40 01 00 00 	lea    0x140(%rbp),%rax
   1400018a7:	48 89 c1             	mov    %rax,%rcx
   1400018aa:	e8 99 05 00 00       	call   140001e48 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_>
   1400018af:	48 8d 85 a0 01 00 00 	lea    0x1a0(%rbp),%rax
   1400018b6:	48 89 c1             	mov    %rax,%rcx
   1400018b9:	e8 92 05 00 00       	call   140001e50 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
            /*
                comparing the extentions
            */
            if(Ext=="mp3" || Ext=="acc" || Ext=="flac")
   1400018be:	48 8d 85 40 01 00 00 	lea    0x140(%rbp),%rax
   1400018c5:	48 8d 15 38 37 00 00 	lea    0x3738(%rip),%rdx        # 140005004 <.rdata+0x4>
   1400018cc:	48 89 c1             	mov    %rax,%rcx
   1400018cf:	e8 0c 18 00 00       	call   1400030e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   1400018d4:	84 c0                	test   %al,%al
   1400018d6:	75 34                	jne    14000190c <main+0x3dc>
   1400018d8:	48 8d 85 40 01 00 00 	lea    0x140(%rbp),%rax
   1400018df:	48 8d 15 22 37 00 00 	lea    0x3722(%rip),%rdx        # 140005008 <.rdata+0x8>
   1400018e6:	48 89 c1             	mov    %rax,%rcx
   1400018e9:	e8 f2 17 00 00       	call   1400030e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   1400018ee:	84 c0                	test   %al,%al
   1400018f0:	75 1a                	jne    14000190c <main+0x3dc>
   1400018f2:	48 8d 85 40 01 00 00 	lea    0x140(%rbp),%rax
   1400018f9:	48 8d 15 0c 37 00 00 	lea    0x370c(%rip),%rdx        # 14000500c <.rdata+0xc>
   140001900:	48 89 c1             	mov    %rax,%rcx
   140001903:	e8 d8 17 00 00       	call   1400030e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001908:	84 c0                	test   %al,%al
   14000190a:	74 07                	je     140001913 <main+0x3e3>
   14000190c:	b8 01 00 00 00       	mov    $0x1,%eax
   140001911:	eb 05                	jmp    140001918 <main+0x3e8>
   140001913:	b8 00 00 00 00       	mov    $0x0,%eax
   140001918:	84 c0                	test   %al,%al
   14000191a:	74 48                	je     140001964 <main+0x434>
            {
                Total_Sizes[i][0]+=File_Size;
   14000191c:	8b 85 dc 01 00 00    	mov    0x1dc(%rbp),%eax
   140001922:	48 98                	cltq   
   140001924:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   14000192b:	00 
   14000192c:	48 8b 85 c8 01 00 00 	mov    0x1c8(%rbp),%rax
   140001933:	48 01 d0             	add    %rdx,%rax
   140001936:	48 8b 00             	mov    (%rax),%rax
   140001939:	8b 08                	mov    (%rax),%ecx
   14000193b:	8b 55 a8             	mov    -0x58(%rbp),%edx
   14000193e:	8b 85 dc 01 00 00    	mov    0x1dc(%rbp),%eax
   140001944:	48 98                	cltq   
   140001946:	4c 8d 04 c5 00 00 00 	lea    0x0(,%rax,8),%r8
   14000194d:	00 
   14000194e:	48 8b 85 c8 01 00 00 	mov    0x1c8(%rbp),%rax
   140001955:	4c 01 c0             	add    %r8,%rax
   140001958:	48 8b 00             	mov    (%rax),%rax
   14000195b:	01 ca                	add    %ecx,%edx
   14000195d:	89 10                	mov    %edx,(%rax)
   14000195f:	e9 a4 01 00 00       	jmp    140001b08 <main+0x5d8>
            }
            else if(Ext=="jpg" || Ext=="bmp" || Ext=="gif")
   140001964:	48 8d 85 40 01 00 00 	lea    0x140(%rbp),%rax
   14000196b:	48 8d 15 9f 36 00 00 	lea    0x369f(%rip),%rdx        # 140005011 <.rdata+0x11>
   140001972:	48 89 c1             	mov    %rax,%rcx
   140001975:	e8 66 17 00 00       	call   1400030e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   14000197a:	84 c0                	test   %al,%al
   14000197c:	75 34                	jne    1400019b2 <main+0x482>
   14000197e:	48 8d 85 40 01 00 00 	lea    0x140(%rbp),%rax
   140001985:	48 8d 15 89 36 00 00 	lea    0x3689(%rip),%rdx        # 140005015 <.rdata+0x15>
   14000198c:	48 89 c1             	mov    %rax,%rcx
   14000198f:	e8 4c 17 00 00       	call   1400030e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001994:	84 c0                	test   %al,%al
   140001996:	75 1a                	jne    1400019b2 <main+0x482>
   140001998:	48 8d 85 40 01 00 00 	lea    0x140(%rbp),%rax
   14000199f:	48 8d 15 73 36 00 00 	lea    0x3673(%rip),%rdx        # 140005019 <.rdata+0x19>
   1400019a6:	48 89 c1             	mov    %rax,%rcx
   1400019a9:	e8 32 17 00 00       	call   1400030e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   1400019ae:	84 c0                	test   %al,%al
   1400019b0:	74 07                	je     1400019b9 <main+0x489>
   1400019b2:	b8 01 00 00 00       	mov    $0x1,%eax
   1400019b7:	eb 05                	jmp    1400019be <main+0x48e>
   1400019b9:	b8 00 00 00 00       	mov    $0x0,%eax
   1400019be:	84 c0                	test   %al,%al
   1400019c0:	74 50                	je     140001a12 <main+0x4e2>
            {
                Total_Sizes[i][1]+=File_Size;
   1400019c2:	8b 85 dc 01 00 00    	mov    0x1dc(%rbp),%eax
   1400019c8:	48 98                	cltq   
   1400019ca:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   1400019d1:	00 
   1400019d2:	48 8b 85 c8 01 00 00 	mov    0x1c8(%rbp),%rax
   1400019d9:	48 01 d0             	add    %rdx,%rax
   1400019dc:	48 8b 00             	mov    (%rax),%rax
   1400019df:	48 83 c0 04          	add    $0x4,%rax
   1400019e3:	8b 08                	mov    (%rax),%ecx
   1400019e5:	8b 55 a8             	mov    -0x58(%rbp),%edx
   1400019e8:	8b 85 dc 01 00 00    	mov    0x1dc(%rbp),%eax
   1400019ee:	48 98                	cltq   
   1400019f0:	4c 8d 04 c5 00 00 00 	lea    0x0(,%rax,8),%r8
   1400019f7:	00 
   1400019f8:	48 8b 85 c8 01 00 00 	mov    0x1c8(%rbp),%rax
   1400019ff:	4c 01 c0             	add    %r8,%rax
   140001a02:	48 8b 00             	mov    (%rax),%rax
   140001a05:	48 83 c0 04          	add    $0x4,%rax
   140001a09:	01 ca                	add    %ecx,%edx
   140001a0b:	89 10                	mov    %edx,(%rax)
   140001a0d:	e9 f6 00 00 00       	jmp    140001b08 <main+0x5d8>
            }
            else if(Ext=="mp4" || Ext=="avi" || Ext=="mkv")
   140001a12:	48 8d 85 40 01 00 00 	lea    0x140(%rbp),%rax
   140001a19:	48 8d 15 fd 35 00 00 	lea    0x35fd(%rip),%rdx        # 14000501d <.rdata+0x1d>
   140001a20:	48 89 c1             	mov    %rax,%rcx
   140001a23:	e8 b8 16 00 00       	call   1400030e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001a28:	84 c0                	test   %al,%al
   140001a2a:	75 34                	jne    140001a60 <main+0x530>
   140001a2c:	48 8d 85 40 01 00 00 	lea    0x140(%rbp),%rax
   140001a33:	48 8d 15 e7 35 00 00 	lea    0x35e7(%rip),%rdx        # 140005021 <.rdata+0x21>
   140001a3a:	48 89 c1             	mov    %rax,%rcx
   140001a3d:	e8 9e 16 00 00       	call   1400030e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001a42:	84 c0                	test   %al,%al
   140001a44:	75 1a                	jne    140001a60 <main+0x530>
   140001a46:	48 8d 85 40 01 00 00 	lea    0x140(%rbp),%rax
   140001a4d:	48 8d 15 d1 35 00 00 	lea    0x35d1(%rip),%rdx        # 140005025 <.rdata+0x25>
   140001a54:	48 89 c1             	mov    %rax,%rcx
   140001a57:	e8 84 16 00 00       	call   1400030e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>
   140001a5c:	84 c0                	test   %al,%al
   140001a5e:	74 07                	je     140001a67 <main+0x537>
   140001a60:	b8 01 00 00 00       	mov    $0x1,%eax
   140001a65:	eb 05                	jmp    140001a6c <main+0x53c>
   140001a67:	b8 00 00 00 00       	mov    $0x0,%eax
   140001a6c:	84 c0                	test   %al,%al
   140001a6e:	74 4d                	je     140001abd <main+0x58d>
            {
                Total_Sizes[i][2]+=File_Size;
   140001a70:	8b 85 dc 01 00 00    	mov    0x1dc(%rbp),%eax
   140001a76:	48 98                	cltq   
   140001a78:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001a7f:	00 
   140001a80:	48 8b 85 c8 01 00 00 	mov    0x1c8(%rbp),%rax
   140001a87:	48 01 d0             	add    %rdx,%rax
   140001a8a:	48 8b 00             	mov    (%rax),%rax
   140001a8d:	48 83 c0 08          	add    $0x8,%rax
   140001a91:	8b 08                	mov    (%rax),%ecx
   140001a93:	8b 55 a8             	mov    -0x58(%rbp),%edx
   140001a96:	8b 85 dc 01 00 00    	mov    0x1dc(%rbp),%eax
   140001a9c:	48 98                	cltq   
   140001a9e:	4c 8d 04 c5 00 00 00 	lea    0x0(,%rax,8),%r8
   140001aa5:	00 
   140001aa6:	48 8b 85 c8 01 00 00 	mov    0x1c8(%rbp),%rax
   140001aad:	4c 01 c0             	add    %r8,%rax
   140001ab0:	48 8b 00             	mov    (%rax),%rax
   140001ab3:	48 83 c0 08          	add    $0x8,%rax
   140001ab7:	01 ca                	add    %ecx,%edx
   140001ab9:	89 10                	mov    %edx,(%rax)
   140001abb:	eb 4b                	jmp    140001b08 <main+0x5d8>
            }
            else
            {
                Total_Sizes[i][3]+=File_Size;
   140001abd:	8b 85 dc 01 00 00    	mov    0x1dc(%rbp),%eax
   140001ac3:	48 98                	cltq   
   140001ac5:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001acc:	00 
   140001acd:	48 8b 85 c8 01 00 00 	mov    0x1c8(%rbp),%rax
   140001ad4:	48 01 d0             	add    %rdx,%rax
   140001ad7:	48 8b 00             	mov    (%rax),%rax
   140001ada:	48 83 c0 0c          	add    $0xc,%rax
   140001ade:	8b 08                	mov    (%rax),%ecx
   140001ae0:	8b 55 a8             	mov    -0x58(%rbp),%edx
   140001ae3:	8b 85 dc 01 00 00    	mov    0x1dc(%rbp),%eax
   140001ae9:	48 98                	cltq   
   140001aeb:	4c 8d 04 c5 00 00 00 	lea    0x0(,%rax,8),%r8
   140001af2:	00 
   140001af3:	48 8b 85 c8 01 00 00 	mov    0x1c8(%rbp),%rax
   140001afa:	4c 01 c0             	add    %r8,%rax
   140001afd:	48 8b 00             	mov    (%rax),%rax
   140001b00:	48 83 c0 0c          	add    $0xc,%rax
   140001b04:	01 ca                	add    %ecx,%edx
   140001b06:	89 10                	mov    %edx,(%rax)
        for(j=0;j<No_Of_Files[i];j++)
   140001b08:	83 85 d8 01 00 00 01 	addl   $0x1,0x1d8(%rbp)
   140001b0f:	8b 85 dc 01 00 00    	mov    0x1dc(%rbp),%eax
   140001b15:	48 98                	cltq   
   140001b17:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
   140001b1e:	00 
   140001b1f:	48 8b 85 d0 01 00 00 	mov    0x1d0(%rbp),%rax
   140001b26:	48 01 d0             	add    %rdx,%rax
   140001b29:	8b 00                	mov    (%rax),%eax
   140001b2b:	39 85 d8 01 00 00    	cmp    %eax,0x1d8(%rbp)
   140001b31:	0f 8c 34 fc ff ff    	jl     14000176b <main+0x23b>
    for(i=0;i<TC_No;i++)
   140001b37:	83 85 dc 01 00 00 01 	addl   $0x1,0x1dc(%rbp)
   140001b3e:	8b 45 ac             	mov    -0x54(%rbp),%eax
   140001b41:	39 85 dc 01 00 00    	cmp    %eax,0x1dc(%rbp)
   140001b47:	0f 8c 0f fc ff ff    	jl     14000175c <main+0x22c>
        }
    }
    /*
        Displaying the output
    */
    for(i=0;i<TC_No;i++)
   140001b4d:	c7 85 dc 01 00 00 00 	movl   $0x0,0x1dc(%rbp)
   140001b54:	00 00 00 
   140001b57:	e9 60 01 00 00       	jmp    140001cbc <main+0x78c>
    {
        cout<<"music "<<Total_Sizes[i][0]<<"b "
   140001b5c:	48 8d 05 c6 34 00 00 	lea    0x34c6(%rip),%rax        # 140005029 <.rdata+0x29>
   140001b63:	48 89 c2             	mov    %rax,%rdx
   140001b66:	48 8b 05 63 38 00 00 	mov    0x3863(%rip),%rax        # 1400053d0 <__fu0__ZSt4cout>
   140001b6d:	48 89 c1             	mov    %rax,%rcx
   140001b70:	e8 93 02 00 00       	call   140001e08 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001b75:	48 89 c1             	mov    %rax,%rcx
   140001b78:	8b 85 dc 01 00 00    	mov    0x1dc(%rbp),%eax
   140001b7e:	48 98                	cltq   
   140001b80:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001b87:	00 
   140001b88:	48 8b 85 c8 01 00 00 	mov    0x1c8(%rbp),%rax
   140001b8f:	48 01 d0             	add    %rdx,%rax
   140001b92:	48 8b 00             	mov    (%rax),%rax
        <<"images "<<Total_Sizes[i][1]<<"b "
   140001b95:	8b 00                	mov    (%rax),%eax
   140001b97:	89 c2                	mov    %eax,%edx
   140001b99:	e8 c2 02 00 00       	call   140001e60 <_ZNSolsEi>
   140001b9e:	48 89 c1             	mov    %rax,%rcx
   140001ba1:	48 8d 05 88 34 00 00 	lea    0x3488(%rip),%rax        # 140005030 <.rdata+0x30>
   140001ba8:	48 89 c2             	mov    %rax,%rdx
   140001bab:	e8 58 02 00 00       	call   140001e08 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001bb0:	48 89 c1             	mov    %rax,%rcx
   140001bb3:	48 8d 05 79 34 00 00 	lea    0x3479(%rip),%rax        # 140005033 <.rdata+0x33>
   140001bba:	48 89 c2             	mov    %rax,%rdx
   140001bbd:	e8 46 02 00 00       	call   140001e08 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001bc2:	48 89 c1             	mov    %rax,%rcx
   140001bc5:	8b 85 dc 01 00 00    	mov    0x1dc(%rbp),%eax
   140001bcb:	48 98                	cltq   
   140001bcd:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001bd4:	00 
   140001bd5:	48 8b 85 c8 01 00 00 	mov    0x1c8(%rbp),%rax
   140001bdc:	48 01 d0             	add    %rdx,%rax
   140001bdf:	48 8b 00             	mov    (%rax),%rax
   140001be2:	48 83 c0 04          	add    $0x4,%rax
        <<"movies "<<Total_Sizes[i][2]<<"b "
   140001be6:	8b 00                	mov    (%rax),%eax
   140001be8:	89 c2                	mov    %eax,%edx
   140001bea:	e8 71 02 00 00       	call   140001e60 <_ZNSolsEi>
   140001bef:	48 89 c1             	mov    %rax,%rcx
   140001bf2:	48 8d 05 37 34 00 00 	lea    0x3437(%rip),%rax        # 140005030 <.rdata+0x30>
   140001bf9:	48 89 c2             	mov    %rax,%rdx
   140001bfc:	e8 07 02 00 00       	call   140001e08 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001c01:	48 89 c1             	mov    %rax,%rcx
   140001c04:	48 8d 05 30 34 00 00 	lea    0x3430(%rip),%rax        # 14000503b <.rdata+0x3b>
   140001c0b:	48 89 c2             	mov    %rax,%rdx
   140001c0e:	e8 f5 01 00 00       	call   140001e08 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001c13:	48 89 c1             	mov    %rax,%rcx
   140001c16:	8b 85 dc 01 00 00    	mov    0x1dc(%rbp),%eax
   140001c1c:	48 98                	cltq   
   140001c1e:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001c25:	00 
   140001c26:	48 8b 85 c8 01 00 00 	mov    0x1c8(%rbp),%rax
   140001c2d:	48 01 d0             	add    %rdx,%rax
   140001c30:	48 8b 00             	mov    (%rax),%rax
   140001c33:	48 83 c0 08          	add    $0x8,%rax
        <<"other "<<Total_Sizes[i][3]<<"b "<<endl;
   140001c37:	8b 00                	mov    (%rax),%eax
   140001c39:	89 c2                	mov    %eax,%edx
   140001c3b:	e8 20 02 00 00       	call   140001e60 <_ZNSolsEi>
   140001c40:	48 89 c1             	mov    %rax,%rcx
   140001c43:	48 8d 05 e6 33 00 00 	lea    0x33e6(%rip),%rax        # 140005030 <.rdata+0x30>
   140001c4a:	48 89 c2             	mov    %rax,%rdx
   140001c4d:	e8 b6 01 00 00       	call   140001e08 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001c52:	48 89 c1             	mov    %rax,%rcx
   140001c55:	48 8d 05 e7 33 00 00 	lea    0x33e7(%rip),%rax        # 140005043 <.rdata+0x43>
   140001c5c:	48 89 c2             	mov    %rax,%rdx
   140001c5f:	e8 a4 01 00 00       	call   140001e08 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001c64:	48 89 c1             	mov    %rax,%rcx
   140001c67:	8b 85 dc 01 00 00    	mov    0x1dc(%rbp),%eax
   140001c6d:	48 98                	cltq   
   140001c6f:	48 8d 14 c5 00 00 00 	lea    0x0(,%rax,8),%rdx
   140001c76:	00 
   140001c77:	48 8b 85 c8 01 00 00 	mov    0x1c8(%rbp),%rax
   140001c7e:	48 01 d0             	add    %rdx,%rax
   140001c81:	48 8b 00             	mov    (%rax),%rax
   140001c84:	48 83 c0 0c          	add    $0xc,%rax
   140001c88:	8b 00                	mov    (%rax),%eax
   140001c8a:	89 c2                	mov    %eax,%edx
   140001c8c:	e8 cf 01 00 00       	call   140001e60 <_ZNSolsEi>
   140001c91:	48 89 c1             	mov    %rax,%rcx
   140001c94:	48 8d 05 95 33 00 00 	lea    0x3395(%rip),%rax        # 140005030 <.rdata+0x30>
   140001c9b:	48 89 c2             	mov    %rax,%rdx
   140001c9e:	e8 65 01 00 00       	call   140001e08 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001ca3:	48 89 c1             	mov    %rax,%rcx
   140001ca6:	48 8b 05 33 37 00 00 	mov    0x3733(%rip),%rax        # 1400053e0 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001cad:	48 89 c2             	mov    %rax,%rdx
   140001cb0:	e8 b3 01 00 00       	call   140001e68 <_ZNSolsEPFRSoS_E>
    for(i=0;i<TC_No;i++)
   140001cb5:	83 85 dc 01 00 00 01 	addl   $0x1,0x1dc(%rbp)
   140001cbc:	8b 45 ac             	mov    -0x54(%rbp),%eax
   140001cbf:	39 85 dc 01 00 00    	cmp    %eax,0x1dc(%rbp)
   140001cc5:	0f 8c 91 fe ff ff    	jl     140001b5c <main+0x62c>
    }
   140001ccb:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
   140001ccf:	48 89 c1             	mov    %rax,%rcx
   140001cd2:	e8 61 01 00 00       	call   140001e38 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001cd7:	48 8d 85 40 01 00 00 	lea    0x140(%rbp),%rax
   140001cde:	48 89 c1             	mov    %rax,%rcx
   140001ce1:	e8 6a 01 00 00       	call   140001e50 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001ce6:	48 8d 85 60 01 00 00 	lea    0x160(%rbp),%rax
   140001ced:	48 89 c1             	mov    %rax,%rcx
   140001cf0:	e8 5b 01 00 00       	call   140001e50 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001cf5:	48 8d 85 80 01 00 00 	lea    0x180(%rbp),%rax
   140001cfc:	48 89 c1             	mov    %rax,%rcx
   140001cff:	e8 4c 01 00 00       	call   140001e50 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001d04:	b8 00 00 00 00       	mov    $0x0,%eax
   140001d09:	eb 4c                	jmp    140001d57 <main+0x827>
   140001d0b:	48 89 c3             	mov    %rax,%rbx
   140001d0e:	48 8d 45 b0          	lea    -0x50(%rbp),%rax
   140001d12:	48 89 c1             	mov    %rax,%rcx
   140001d15:	e8 1e 01 00 00       	call   140001e38 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001d1a:	eb 03                	jmp    140001d1f <main+0x7ef>
   140001d1c:	48 89 c3             	mov    %rax,%rbx
   140001d1f:	48 8d 85 40 01 00 00 	lea    0x140(%rbp),%rax
   140001d26:	48 89 c1             	mov    %rax,%rcx
   140001d29:	e8 22 01 00 00       	call   140001e50 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001d2e:	48 8d 85 60 01 00 00 	lea    0x160(%rbp),%rax
   140001d35:	48 89 c1             	mov    %rax,%rcx
   140001d38:	e8 13 01 00 00       	call   140001e50 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001d3d:	48 8d 85 80 01 00 00 	lea    0x180(%rbp),%rax
   140001d44:	48 89 c1             	mov    %rax,%rcx
   140001d47:	e8 04 01 00 00       	call   140001e50 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001d4c:	48 89 d8             	mov    %rbx,%rax
   140001d4f:	48 89 c1             	mov    %rax,%rcx
   140001d52:	e8 b9 11 00 00       	call   140002f10 <_Unwind_Resume>
   140001d57:	48 81 c4 68 02 00 00 	add    $0x268,%rsp
   140001d5e:	5b                   	pop    %rbx
   140001d5f:	5d                   	pop    %rbp
   140001d60:	c3                   	ret    

0000000140001d61 <__tcf_0>:
  extern wostream wclog;	/// Linked to standard error (buffered)
#endif
  ///@}

  // For construction of filebuffers for cout, cin, cerr, clog et. al.
  static ios_base::Init __ioinit;
   140001d61:	55                   	push   %rbp
   140001d62:	48 89 e5             	mov    %rsp,%rbp
   140001d65:	48 83 ec 20          	sub    $0x20,%rsp
   140001d69:	48 8d 05 d0 62 00 00 	lea    0x62d0(%rip),%rax        # 140008040 <_ZStL8__ioinit>
   140001d70:	48 89 c1             	mov    %rax,%rcx
   140001d73:	e8 b0 00 00 00       	call   140001e28 <_ZNSt8ios_base4InitD1Ev>
   140001d78:	90                   	nop
   140001d79:	48 83 c4 20          	add    $0x20,%rsp
   140001d7d:	5d                   	pop    %rbp
   140001d7e:	c3                   	ret    

0000000140001d7f <_Z41__static_initialization_and_destruction_0ii>:
   140001d7f:	55                   	push   %rbp
   140001d80:	48 89 e5             	mov    %rsp,%rbp
   140001d83:	48 83 ec 20          	sub    $0x20,%rsp
   140001d87:	89 4d 10             	mov    %ecx,0x10(%rbp)
   140001d8a:	89 55 18             	mov    %edx,0x18(%rbp)
   140001d8d:	83 7d 10 01          	cmpl   $0x1,0x10(%rbp)
   140001d91:	75 27                	jne    140001dba <_Z41__static_initialization_and_destruction_0ii+0x3b>
   140001d93:	81 7d 18 ff ff 00 00 	cmpl   $0xffff,0x18(%rbp)
   140001d9a:	75 1e                	jne    140001dba <_Z41__static_initialization_and_destruction_0ii+0x3b>
   140001d9c:	48 8d 05 9d 62 00 00 	lea    0x629d(%rip),%rax        # 140008040 <_ZStL8__ioinit>
   140001da3:	48 89 c1             	mov    %rax,%rcx
   140001da6:	e8 85 00 00 00       	call   140001e30 <_ZNSt8ios_base4InitC1Ev>
   140001dab:	48 8d 05 af ff ff ff 	lea    -0x51(%rip),%rax        # 140001d61 <__tcf_0>
   140001db2:	48 89 c1             	mov    %rax,%rcx
   140001db5:	e8 36 f7 ff ff       	call   1400014f0 <atexit>
   140001dba:	90                   	nop
   140001dbb:	48 83 c4 20          	add    $0x20,%rsp
   140001dbf:	5d                   	pop    %rbp
   140001dc0:	c3                   	ret    

0000000140001dc1 <_GLOBAL__sub_I_main>:
   140001dc1:	55                   	push   %rbp
   140001dc2:	48 89 e5             	mov    %rsp,%rbp
   140001dc5:	48 83 ec 20          	sub    $0x20,%rsp
   140001dc9:	ba ff ff 00 00       	mov    $0xffff,%edx
   140001dce:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001dd3:	e8 a7 ff ff ff       	call   140001d7f <_Z41__static_initialization_and_destruction_0ii>
   140001dd8:	90                   	nop
   140001dd9:	48 83 c4 20          	add    $0x20,%rsp
   140001ddd:	5d                   	pop    %rbp
   140001dde:	c3                   	ret    
   140001ddf:	90                   	nop

0000000140001de0 <__gxx_personality_seh0>:
   140001de0:	ff 25 8e 76 00 00    	jmp    *0x768e(%rip)        # 140009474 <__imp___gxx_personality_seh0>
   140001de6:	90                   	nop
   140001de7:	90                   	nop

0000000140001de8 <__cxa_throw_bad_array_new_length>:
   140001de8:	ff 25 7e 76 00 00    	jmp    *0x767e(%rip)        # 14000946c <__imp___cxa_throw_bad_array_new_length>
   140001dee:	90                   	nop
   140001def:	90                   	nop

0000000140001df0 <_Znay>:
   140001df0:	ff 25 6e 76 00 00    	jmp    *0x766e(%rip)        # 140009464 <__imp__Znay>
   140001df6:	90                   	nop
   140001df7:	90                   	nop

0000000140001df8 <_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>:
   140001df8:	ff 25 5e 76 00 00    	jmp    *0x765e(%rip)        # 14000945c <__imp__ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   140001dfe:	90                   	nop
   140001dff:	90                   	nop

0000000140001e00 <_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>:
   140001e00:	ff 25 4e 76 00 00    	jmp    *0x764e(%rip)        # 140009454 <__imp__ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   140001e06:	90                   	nop
   140001e07:	90                   	nop

0000000140001e08 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
   140001e08:	ff 25 3e 76 00 00    	jmp    *0x763e(%rip)        # 14000944c <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001e0e:	90                   	nop
   140001e0f:	90                   	nop

0000000140001e10 <_ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>:
   140001e10:	ff 25 2e 76 00 00    	jmp    *0x762e(%rip)        # 140009444 <__imp__ZSt7getlineIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE>
   140001e16:	90                   	nop
   140001e17:	90                   	nop

0000000140001e18 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
   140001e18:	ff 25 1e 76 00 00    	jmp    *0x761e(%rip)        # 14000943c <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   140001e1e:	90                   	nop
   140001e1f:	90                   	nop

0000000140001e20 <_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate>:
   140001e20:	ff 25 fe 75 00 00    	jmp    *0x75fe(%rip)        # 140009424 <__imp__ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate>
   140001e26:	90                   	nop
   140001e27:	90                   	nop

0000000140001e28 <_ZNSt8ios_base4InitD1Ev>:
   140001e28:	ff 25 ee 75 00 00    	jmp    *0x75ee(%rip)        # 14000941c <__imp__ZNSt8ios_base4InitD1Ev>
   140001e2e:	90                   	nop
   140001e2f:	90                   	nop

0000000140001e30 <_ZNSt8ios_base4InitC1Ev>:
   140001e30:	ff 25 de 75 00 00    	jmp    *0x75de(%rip)        # 140009414 <__imp__ZNSt8ios_base4InitC1Ev>
   140001e36:	90                   	nop
   140001e37:	90                   	nop

0000000140001e38 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>:
   140001e38:	ff 25 ce 75 00 00    	jmp    *0x75ce(%rip)        # 14000940c <__imp__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev>
   140001e3e:	90                   	nop
   140001e3f:	90                   	nop

0000000140001e40 <_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev>:
   140001e40:	ff 25 be 75 00 00    	jmp    *0x75be(%rip)        # 140009404 <__imp__ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev>
   140001e46:	90                   	nop
   140001e47:	90                   	nop

0000000140001e48 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_>:
   140001e48:	ff 25 ae 75 00 00    	jmp    *0x75ae(%rip)        # 1400093fc <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_>
   140001e4e:	90                   	nop
   140001e4f:	90                   	nop

0000000140001e50 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>:
   140001e50:	ff 25 9e 75 00 00    	jmp    *0x759e(%rip)        # 1400093f4 <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev>
   140001e56:	90                   	nop
   140001e57:	90                   	nop

0000000140001e58 <_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>:
   140001e58:	ff 25 8e 75 00 00    	jmp    *0x758e(%rip)        # 1400093ec <__imp__ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev>
   140001e5e:	90                   	nop
   140001e5f:	90                   	nop

0000000140001e60 <_ZNSolsEi>:
   140001e60:	ff 25 7e 75 00 00    	jmp    *0x757e(%rip)        # 1400093e4 <__imp__ZNSolsEi>
   140001e66:	90                   	nop
   140001e67:	90                   	nop

0000000140001e68 <_ZNSolsEPFRSoS_E>:
   140001e68:	ff 25 6e 75 00 00    	jmp    *0x756e(%rip)        # 1400093dc <__imp__ZNSolsEPFRSoS_E>
   140001e6e:	90                   	nop
   140001e6f:	90                   	nop

0000000140001e70 <_ZNSirsERi>:
   140001e70:	ff 25 5e 75 00 00    	jmp    *0x755e(%rip)        # 1400093d4 <__imp__ZNSirsERi>
   140001e76:	90                   	nop
   140001e77:	90                   	nop

0000000140001e78 <_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv>:
   140001e78:	ff 25 4e 75 00 00    	jmp    *0x754e(%rip)        # 1400093cc <__imp__ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv>
   140001e7e:	90                   	nop
   140001e7f:	90                   	nop

0000000140001e80 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc>:
   140001e80:	ff 25 3e 75 00 00    	jmp    *0x753e(%rip)        # 1400093c4 <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc>
   140001e86:	90                   	nop
   140001e87:	90                   	nop

0000000140001e88 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>:
   140001e88:	ff 25 2e 75 00 00    	jmp    *0x752e(%rip)        # 1400093bc <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEyy>
   140001e8e:	90                   	nop
   140001e8f:	90                   	nop

0000000140001e90 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcy>:
   140001e90:	ff 25 1e 75 00 00    	jmp    *0x751e(%rip)        # 1400093b4 <__imp__ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEPKcy>
   140001e96:	90                   	nop
   140001e97:	90                   	nop
   140001e98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001e9f:	00 

0000000140001ea0 <__do_global_dtors>:
   140001ea0:	48 83 ec 28          	sub    $0x28,%rsp
   140001ea4:	48 8b 05 65 21 00 00 	mov    0x2165(%rip),%rax        # 140004010 <p.0>
   140001eab:	48 8b 00             	mov    (%rax),%rax
   140001eae:	48 85 c0             	test   %rax,%rax
   140001eb1:	74 22                	je     140001ed5 <__do_global_dtors+0x35>
   140001eb3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001eb8:	ff d0                	call   *%rax
   140001eba:	48 8b 05 4f 21 00 00 	mov    0x214f(%rip),%rax        # 140004010 <p.0>
   140001ec1:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140001ec5:	48 8b 40 08          	mov    0x8(%rax),%rax
   140001ec9:	48 89 15 40 21 00 00 	mov    %rdx,0x2140(%rip)        # 140004010 <p.0>
   140001ed0:	48 85 c0             	test   %rax,%rax
   140001ed3:	75 e3                	jne    140001eb8 <__do_global_dtors+0x18>
   140001ed5:	48 83 c4 28          	add    $0x28,%rsp
   140001ed9:	c3                   	ret    
   140001eda:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001ee0 <__do_global_ctors>:
   140001ee0:	56                   	push   %rsi
   140001ee1:	53                   	push   %rbx
   140001ee2:	48 83 ec 28          	sub    $0x28,%rsp
   140001ee6:	48 8b 15 03 35 00 00 	mov    0x3503(%rip),%rdx        # 1400053f0 <.refptr.__CTOR_LIST__>
   140001eed:	48 8b 02             	mov    (%rdx),%rax
   140001ef0:	89 c1                	mov    %eax,%ecx
   140001ef2:	83 f8 ff             	cmp    $0xffffffff,%eax
   140001ef5:	74 39                	je     140001f30 <__do_global_ctors+0x50>
   140001ef7:	85 c9                	test   %ecx,%ecx
   140001ef9:	74 20                	je     140001f1b <__do_global_ctors+0x3b>
   140001efb:	89 c8                	mov    %ecx,%eax
   140001efd:	83 e9 01             	sub    $0x1,%ecx
   140001f00:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140001f04:	48 29 c8             	sub    %rcx,%rax
   140001f07:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   140001f0c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001f10:	ff 13                	call   *(%rbx)
   140001f12:	48 83 eb 08          	sub    $0x8,%rbx
   140001f16:	48 39 f3             	cmp    %rsi,%rbx
   140001f19:	75 f5                	jne    140001f10 <__do_global_ctors+0x30>
   140001f1b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 140001ea0 <__do_global_dtors>
   140001f22:	48 83 c4 28          	add    $0x28,%rsp
   140001f26:	5b                   	pop    %rbx
   140001f27:	5e                   	pop    %rsi
   140001f28:	e9 c3 f5 ff ff       	jmp    1400014f0 <atexit>
   140001f2d:	0f 1f 00             	nopl   (%rax)
   140001f30:	31 c0                	xor    %eax,%eax
   140001f32:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001f38:	44 8d 40 01          	lea    0x1(%rax),%r8d
   140001f3c:	89 c1                	mov    %eax,%ecx
   140001f3e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001f43:	4c 89 c0             	mov    %r8,%rax
   140001f46:	75 f0                	jne    140001f38 <__do_global_ctors+0x58>
   140001f48:	eb ad                	jmp    140001ef7 <__do_global_ctors+0x17>
   140001f4a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001f50 <__main>:
   140001f50:	8b 05 fa 60 00 00    	mov    0x60fa(%rip),%eax        # 140008050 <initialized>
   140001f56:	85 c0                	test   %eax,%eax
   140001f58:	74 06                	je     140001f60 <__main+0x10>
   140001f5a:	c3                   	ret    
   140001f5b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001f60:	c7 05 e6 60 00 00 01 	movl   $0x1,0x60e6(%rip)        # 140008050 <initialized>
   140001f67:	00 00 00 
   140001f6a:	e9 71 ff ff ff       	jmp    140001ee0 <__do_global_ctors>
   140001f6f:	90                   	nop

0000000140001f70 <_setargv>:
   140001f70:	31 c0                	xor    %eax,%eax
   140001f72:	c3                   	ret    
   140001f73:	90                   	nop
   140001f74:	90                   	nop
   140001f75:	90                   	nop
   140001f76:	90                   	nop
   140001f77:	90                   	nop
   140001f78:	90                   	nop
   140001f79:	90                   	nop
   140001f7a:	90                   	nop
   140001f7b:	90                   	nop
   140001f7c:	90                   	nop
   140001f7d:	90                   	nop
   140001f7e:	90                   	nop
   140001f7f:	90                   	nop

0000000140001f80 <__dyn_tls_dtor>:
   140001f80:	48 83 ec 28          	sub    $0x28,%rsp
   140001f84:	83 fa 03             	cmp    $0x3,%edx
   140001f87:	74 17                	je     140001fa0 <__dyn_tls_dtor+0x20>
   140001f89:	85 d2                	test   %edx,%edx
   140001f8b:	74 13                	je     140001fa0 <__dyn_tls_dtor+0x20>
   140001f8d:	b8 01 00 00 00       	mov    $0x1,%eax
   140001f92:	48 83 c4 28          	add    $0x28,%rsp
   140001f96:	c3                   	ret    
   140001f97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001f9e:	00 00 
   140001fa0:	e8 9b 0a 00 00       	call   140002a40 <__mingw_TLScallback>
   140001fa5:	b8 01 00 00 00       	mov    $0x1,%eax
   140001faa:	48 83 c4 28          	add    $0x28,%rsp
   140001fae:	c3                   	ret    
   140001faf:	90                   	nop

0000000140001fb0 <__dyn_tls_init>:
   140001fb0:	56                   	push   %rsi
   140001fb1:	53                   	push   %rbx
   140001fb2:	48 83 ec 28          	sub    $0x28,%rsp
   140001fb6:	48 8b 05 e3 33 00 00 	mov    0x33e3(%rip),%rax        # 1400053a0 <.refptr._CRT_MT>
   140001fbd:	83 38 02             	cmpl   $0x2,(%rax)
   140001fc0:	74 06                	je     140001fc8 <__dyn_tls_init+0x18>
   140001fc2:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140001fc8:	83 fa 02             	cmp    $0x2,%edx
   140001fcb:	74 13                	je     140001fe0 <__dyn_tls_init+0x30>
   140001fcd:	83 fa 01             	cmp    $0x1,%edx
   140001fd0:	74 4e                	je     140002020 <__dyn_tls_init+0x70>
   140001fd2:	b8 01 00 00 00       	mov    $0x1,%eax
   140001fd7:	48 83 c4 28          	add    $0x28,%rsp
   140001fdb:	5b                   	pop    %rbx
   140001fdc:	5e                   	pop    %rsi
   140001fdd:	c3                   	ret    
   140001fde:	66 90                	xchg   %ax,%ax
   140001fe0:	48 8d 1d 71 80 00 00 	lea    0x8071(%rip),%rbx        # 14000a058 <__xd_z>
   140001fe7:	48 8d 35 6a 80 00 00 	lea    0x806a(%rip),%rsi        # 14000a058 <__xd_z>
   140001fee:	48 39 de             	cmp    %rbx,%rsi
   140001ff1:	74 df                	je     140001fd2 <__dyn_tls_init+0x22>
   140001ff3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001ff8:	48 8b 03             	mov    (%rbx),%rax
   140001ffb:	48 85 c0             	test   %rax,%rax
   140001ffe:	74 02                	je     140002002 <__dyn_tls_init+0x52>
   140002000:	ff d0                	call   *%rax
   140002002:	48 83 c3 08          	add    $0x8,%rbx
   140002006:	48 39 de             	cmp    %rbx,%rsi
   140002009:	75 ed                	jne    140001ff8 <__dyn_tls_init+0x48>
   14000200b:	b8 01 00 00 00       	mov    $0x1,%eax
   140002010:	48 83 c4 28          	add    $0x28,%rsp
   140002014:	5b                   	pop    %rbx
   140002015:	5e                   	pop    %rsi
   140002016:	c3                   	ret    
   140002017:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000201e:	00 00 
   140002020:	e8 1b 0a 00 00       	call   140002a40 <__mingw_TLScallback>
   140002025:	b8 01 00 00 00       	mov    $0x1,%eax
   14000202a:	48 83 c4 28          	add    $0x28,%rsp
   14000202e:	5b                   	pop    %rbx
   14000202f:	5e                   	pop    %rsi
   140002030:	c3                   	ret    
   140002031:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002038:	00 00 00 00 
   14000203c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002040 <__tlregdtor>:
   140002040:	31 c0                	xor    %eax,%eax
   140002042:	c3                   	ret    
   140002043:	90                   	nop
   140002044:	90                   	nop
   140002045:	90                   	nop
   140002046:	90                   	nop
   140002047:	90                   	nop
   140002048:	90                   	nop
   140002049:	90                   	nop
   14000204a:	90                   	nop
   14000204b:	90                   	nop
   14000204c:	90                   	nop
   14000204d:	90                   	nop
   14000204e:	90                   	nop
   14000204f:	90                   	nop

0000000140002050 <_matherr>:
   140002050:	56                   	push   %rsi
   140002051:	53                   	push   %rbx
   140002052:	48 83 ec 78          	sub    $0x78,%rsp
   140002056:	0f 29 74 24 40       	movaps %xmm6,0x40(%rsp)
   14000205b:	0f 29 7c 24 50       	movaps %xmm7,0x50(%rsp)
   140002060:	44 0f 29 44 24 60    	movaps %xmm8,0x60(%rsp)
   140002066:	83 39 06             	cmpl   $0x6,(%rcx)
   140002069:	0f 87 cd 00 00 00    	ja     14000213c <_matherr+0xec>
   14000206f:	8b 01                	mov    (%rcx),%eax
   140002071:	48 8d 15 6c 31 00 00 	lea    0x316c(%rip),%rdx        # 1400051e4 <.rdata+0x124>
   140002078:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   14000207c:	48 01 d0             	add    %rdx,%rax
   14000207f:	ff e0                	jmp    *%rax
   140002081:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002088:	48 8d 1d 50 30 00 00 	lea    0x3050(%rip),%rbx        # 1400050df <.rdata+0x1f>
   14000208f:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   140002095:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   14000209a:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   14000209f:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   1400020a3:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400020a8:	e8 03 0f 00 00       	call   140002fb0 <__acrt_iob_func>
   1400020ad:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   1400020b4:	49 89 d8             	mov    %rbx,%r8
   1400020b7:	48 8d 15 fa 30 00 00 	lea    0x30fa(%rip),%rdx        # 1400051b8 <.rdata+0xf8>
   1400020be:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   1400020c4:	48 89 c1             	mov    %rax,%rcx
   1400020c7:	49 89 f1             	mov    %rsi,%r9
   1400020ca:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   1400020d0:	e8 5b 0f 00 00       	call   140003030 <fprintf>
   1400020d5:	90                   	nop
   1400020d6:	0f 28 74 24 40       	movaps 0x40(%rsp),%xmm6
   1400020db:	0f 28 7c 24 50       	movaps 0x50(%rsp),%xmm7
   1400020e0:	31 c0                	xor    %eax,%eax
   1400020e2:	44 0f 28 44 24 60    	movaps 0x60(%rsp),%xmm8
   1400020e8:	48 83 c4 78          	add    $0x78,%rsp
   1400020ec:	5b                   	pop    %rbx
   1400020ed:	5e                   	pop    %rsi
   1400020ee:	c3                   	ret    
   1400020ef:	90                   	nop
   1400020f0:	48 8d 1d c9 2f 00 00 	lea    0x2fc9(%rip),%rbx        # 1400050c0 <.rdata>
   1400020f7:	eb 96                	jmp    14000208f <_matherr+0x3f>
   1400020f9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002100:	48 8d 1d 19 30 00 00 	lea    0x3019(%rip),%rbx        # 140005120 <.rdata+0x60>
   140002107:	eb 86                	jmp    14000208f <_matherr+0x3f>
   140002109:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002110:	48 8d 1d e9 2f 00 00 	lea    0x2fe9(%rip),%rbx        # 140005100 <.rdata+0x40>
   140002117:	e9 73 ff ff ff       	jmp    14000208f <_matherr+0x3f>
   14000211c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002120:	48 8d 1d 49 30 00 00 	lea    0x3049(%rip),%rbx        # 140005170 <.rdata+0xb0>
   140002127:	e9 63 ff ff ff       	jmp    14000208f <_matherr+0x3f>
   14000212c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002130:	48 8d 1d 11 30 00 00 	lea    0x3011(%rip),%rbx        # 140005148 <.rdata+0x88>
   140002137:	e9 53 ff ff ff       	jmp    14000208f <_matherr+0x3f>
   14000213c:	48 8d 1d 63 30 00 00 	lea    0x3063(%rip),%rbx        # 1400051a6 <.rdata+0xe6>
   140002143:	e9 47 ff ff ff       	jmp    14000208f <_matherr+0x3f>
   140002148:	90                   	nop
   140002149:	90                   	nop
   14000214a:	90                   	nop
   14000214b:	90                   	nop
   14000214c:	90                   	nop
   14000214d:	90                   	nop
   14000214e:	90                   	nop
   14000214f:	90                   	nop

0000000140002150 <_fpreset>:
   140002150:	db e3                	fninit 
   140002152:	c3                   	ret    
   140002153:	90                   	nop
   140002154:	90                   	nop
   140002155:	90                   	nop
   140002156:	90                   	nop
   140002157:	90                   	nop
   140002158:	90                   	nop
   140002159:	90                   	nop
   14000215a:	90                   	nop
   14000215b:	90                   	nop
   14000215c:	90                   	nop
   14000215d:	90                   	nop
   14000215e:	90                   	nop
   14000215f:	90                   	nop

0000000140002160 <__report_error>:
   140002160:	41 54                	push   %r12
   140002162:	53                   	push   %rbx
   140002163:	48 83 ec 38          	sub    $0x38,%rsp
   140002167:	49 89 cc             	mov    %rcx,%r12
   14000216a:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   14000216f:	b9 02 00 00 00       	mov    $0x2,%ecx
   140002174:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   140002179:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   14000217e:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   140002183:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   140002188:	e8 23 0e 00 00       	call   140002fb0 <__acrt_iob_func>
   14000218d:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   140002193:	ba 01 00 00 00       	mov    $0x1,%edx
   140002198:	48 8d 0d 61 30 00 00 	lea    0x3061(%rip),%rcx        # 140005200 <.rdata>
   14000219f:	49 89 c1             	mov    %rax,%r9
   1400021a2:	e8 99 0e 00 00       	call   140003040 <fwrite>
   1400021a7:	48 8b 5c 24 28       	mov    0x28(%rsp),%rbx
   1400021ac:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400021b1:	e8 fa 0d 00 00       	call   140002fb0 <__acrt_iob_func>
   1400021b6:	4c 89 e2             	mov    %r12,%rdx
   1400021b9:	48 89 c1             	mov    %rax,%rcx
   1400021bc:	49 89 d8             	mov    %rbx,%r8
   1400021bf:	e8 ac 0e 00 00       	call   140003070 <vfprintf>
   1400021c4:	e8 4f 0e 00 00       	call   140003018 <abort>
   1400021c9:	90                   	nop
   1400021ca:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000001400021d0 <mark_section_writable>:
   1400021d0:	41 54                	push   %r12
   1400021d2:	56                   	push   %rsi
   1400021d3:	53                   	push   %rbx
   1400021d4:	48 83 ec 50          	sub    $0x50,%rsp
   1400021d8:	48 63 1d d5 5e 00 00 	movslq 0x5ed5(%rip),%rbx        # 1400080b4 <maxSections>
   1400021df:	49 89 cc             	mov    %rcx,%r12
   1400021e2:	85 db                	test   %ebx,%ebx
   1400021e4:	0f 8e 16 01 00 00    	jle    140002300 <mark_section_writable+0x130>
   1400021ea:	48 8b 05 c7 5e 00 00 	mov    0x5ec7(%rip),%rax        # 1400080b8 <the_secs>
   1400021f1:	45 31 c9             	xor    %r9d,%r9d
   1400021f4:	48 83 c0 18          	add    $0x18,%rax
   1400021f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400021ff:	00 
   140002200:	4c 8b 00             	mov    (%rax),%r8
   140002203:	4d 39 e0             	cmp    %r12,%r8
   140002206:	77 13                	ja     14000221b <mark_section_writable+0x4b>
   140002208:	48 8b 50 08          	mov    0x8(%rax),%rdx
   14000220c:	8b 52 08             	mov    0x8(%rdx),%edx
   14000220f:	49 01 d0             	add    %rdx,%r8
   140002212:	4d 39 c4             	cmp    %r8,%r12
   140002215:	0f 82 8a 00 00 00    	jb     1400022a5 <mark_section_writable+0xd5>
   14000221b:	41 83 c1 01          	add    $0x1,%r9d
   14000221f:	48 83 c0 28          	add    $0x28,%rax
   140002223:	41 39 d9             	cmp    %ebx,%r9d
   140002226:	75 d8                	jne    140002200 <mark_section_writable+0x30>
   140002228:	4c 89 e1             	mov    %r12,%rcx
   14000222b:	e8 20 0a 00 00       	call   140002c50 <__mingw_GetSectionForAddress>
   140002230:	48 89 c6             	mov    %rax,%rsi
   140002233:	48 85 c0             	test   %rax,%rax
   140002236:	0f 84 e6 00 00 00    	je     140002322 <mark_section_writable+0x152>
   14000223c:	48 8b 05 75 5e 00 00 	mov    0x5e75(%rip),%rax        # 1400080b8 <the_secs>
   140002243:	48 8d 1c 9b          	lea    (%rbx,%rbx,4),%rbx
   140002247:	48 c1 e3 03          	shl    $0x3,%rbx
   14000224b:	48 01 d8             	add    %rbx,%rax
   14000224e:	48 89 70 20          	mov    %rsi,0x20(%rax)
   140002252:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140002258:	e8 23 0b 00 00       	call   140002d80 <_GetPEImageBase>
   14000225d:	8b 56 0c             	mov    0xc(%rsi),%edx
   140002260:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   140002266:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   14000226a:	48 8b 05 47 5e 00 00 	mov    0x5e47(%rip),%rax        # 1400080b8 <the_secs>
   140002271:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   140002276:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   14000227b:	ff 15 43 70 00 00    	call   *0x7043(%rip)        # 1400092c4 <__imp_VirtualQuery>
   140002281:	48 85 c0             	test   %rax,%rax
   140002284:	0f 84 7d 00 00 00    	je     140002307 <mark_section_writable+0x137>
   14000228a:	8b 44 24 44          	mov    0x44(%rsp),%eax
   14000228e:	8d 50 c0             	lea    -0x40(%rax),%edx
   140002291:	83 e2 bf             	and    $0xffffffbf,%edx
   140002294:	74 08                	je     14000229e <mark_section_writable+0xce>
   140002296:	8d 50 fc             	lea    -0x4(%rax),%edx
   140002299:	83 e2 fb             	and    $0xfffffffb,%edx
   14000229c:	75 12                	jne    1400022b0 <mark_section_writable+0xe0>
   14000229e:	83 05 0f 5e 00 00 01 	addl   $0x1,0x5e0f(%rip)        # 1400080b4 <maxSections>
   1400022a5:	48 83 c4 50          	add    $0x50,%rsp
   1400022a9:	5b                   	pop    %rbx
   1400022aa:	5e                   	pop    %rsi
   1400022ab:	41 5c                	pop    %r12
   1400022ad:	c3                   	ret    
   1400022ae:	66 90                	xchg   %ax,%ax
   1400022b0:	83 f8 02             	cmp    $0x2,%eax
   1400022b3:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400022b8:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   1400022bd:	41 b8 04 00 00 00    	mov    $0x4,%r8d
   1400022c3:	b8 40 00 00 00       	mov    $0x40,%eax
   1400022c8:	44 0f 45 c0          	cmovne %eax,%r8d
   1400022cc:	48 03 1d e5 5d 00 00 	add    0x5de5(%rip),%rbx        # 1400080b8 <the_secs>
   1400022d3:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   1400022d7:	49 89 d9             	mov    %rbx,%r9
   1400022da:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   1400022de:	ff 15 d8 6f 00 00    	call   *0x6fd8(%rip)        # 1400092bc <__imp_VirtualProtect>
   1400022e4:	85 c0                	test   %eax,%eax
   1400022e6:	75 b6                	jne    14000229e <mark_section_writable+0xce>
   1400022e8:	ff 15 96 6f 00 00    	call   *0x6f96(%rip)        # 140009284 <__imp_GetLastError>
   1400022ee:	48 8d 0d 83 2f 00 00 	lea    0x2f83(%rip),%rcx        # 140005278 <.rdata+0x78>
   1400022f5:	89 c2                	mov    %eax,%edx
   1400022f7:	e8 64 fe ff ff       	call   140002160 <__report_error>
   1400022fc:	0f 1f 40 00          	nopl   0x0(%rax)
   140002300:	31 db                	xor    %ebx,%ebx
   140002302:	e9 21 ff ff ff       	jmp    140002228 <mark_section_writable+0x58>
   140002307:	48 8b 05 aa 5d 00 00 	mov    0x5daa(%rip),%rax        # 1400080b8 <the_secs>
   14000230e:	8b 56 08             	mov    0x8(%rsi),%edx
   140002311:	48 8d 0d 28 2f 00 00 	lea    0x2f28(%rip),%rcx        # 140005240 <.rdata+0x40>
   140002318:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   14000231d:	e8 3e fe ff ff       	call   140002160 <__report_error>
   140002322:	4c 89 e2             	mov    %r12,%rdx
   140002325:	48 8d 0d f4 2e 00 00 	lea    0x2ef4(%rip),%rcx        # 140005220 <.rdata+0x20>
   14000232c:	e8 2f fe ff ff       	call   140002160 <__report_error>
   140002331:	90                   	nop
   140002332:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002339:	00 00 00 00 
   14000233d:	0f 1f 00             	nopl   (%rax)

0000000140002340 <_pei386_runtime_relocator>:
   140002340:	55                   	push   %rbp
   140002341:	41 57                	push   %r15
   140002343:	41 56                	push   %r14
   140002345:	41 55                	push   %r13
   140002347:	41 54                	push   %r12
   140002349:	57                   	push   %rdi
   14000234a:	56                   	push   %rsi
   14000234b:	53                   	push   %rbx
   14000234c:	48 83 ec 48          	sub    $0x48,%rsp
   140002350:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140002355:	8b 35 55 5d 00 00    	mov    0x5d55(%rip),%esi        # 1400080b0 <was_init.0>
   14000235b:	85 f6                	test   %esi,%esi
   14000235d:	74 11                	je     140002370 <_pei386_runtime_relocator+0x30>
   14000235f:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   140002363:	5b                   	pop    %rbx
   140002364:	5e                   	pop    %rsi
   140002365:	5f                   	pop    %rdi
   140002366:	41 5c                	pop    %r12
   140002368:	41 5d                	pop    %r13
   14000236a:	41 5e                	pop    %r14
   14000236c:	41 5f                	pop    %r15
   14000236e:	5d                   	pop    %rbp
   14000236f:	c3                   	ret    
   140002370:	c7 05 36 5d 00 00 01 	movl   $0x1,0x5d36(%rip)        # 1400080b0 <was_init.0>
   140002377:	00 00 00 
   14000237a:	e8 51 09 00 00       	call   140002cd0 <__mingw_GetSectionCount>
   14000237f:	48 98                	cltq   
   140002381:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002385:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   14000238c:	00 
   14000238d:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   140002391:	e8 8a 0b 00 00       	call   140002f20 <___chkstk_ms>
   140002396:	48 8b 3d 63 30 00 00 	mov    0x3063(%rip),%rdi        # 140005400 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   14000239d:	48 8b 1d 6c 30 00 00 	mov    0x306c(%rip),%rbx        # 140005410 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   1400023a4:	c7 05 06 5d 00 00 00 	movl   $0x0,0x5d06(%rip)        # 1400080b4 <maxSections>
   1400023ab:	00 00 00 
   1400023ae:	48 29 c4             	sub    %rax,%rsp
   1400023b1:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   1400023b6:	48 89 05 fb 5c 00 00 	mov    %rax,0x5cfb(%rip)        # 1400080b8 <the_secs>
   1400023bd:	48 89 f8             	mov    %rdi,%rax
   1400023c0:	48 29 d8             	sub    %rbx,%rax
   1400023c3:	48 83 f8 07          	cmp    $0x7,%rax
   1400023c7:	7e 96                	jle    14000235f <_pei386_runtime_relocator+0x1f>
   1400023c9:	8b 13                	mov    (%rbx),%edx
   1400023cb:	48 83 f8 0b          	cmp    $0xb,%rax
   1400023cf:	0f 8f 83 01 00 00    	jg     140002558 <_pei386_runtime_relocator+0x218>
   1400023d5:	8b 03                	mov    (%rbx),%eax
   1400023d7:	85 c0                	test   %eax,%eax
   1400023d9:	0f 85 29 02 00 00    	jne    140002608 <_pei386_runtime_relocator+0x2c8>
   1400023df:	8b 43 04             	mov    0x4(%rbx),%eax
   1400023e2:	85 c0                	test   %eax,%eax
   1400023e4:	0f 85 1e 02 00 00    	jne    140002608 <_pei386_runtime_relocator+0x2c8>
   1400023ea:	8b 53 08             	mov    0x8(%rbx),%edx
   1400023ed:	83 fa 01             	cmp    $0x1,%edx
   1400023f0:	0f 85 72 02 00 00    	jne    140002668 <_pei386_runtime_relocator+0x328>
   1400023f6:	48 83 c3 0c          	add    $0xc,%rbx
   1400023fa:	48 39 fb             	cmp    %rdi,%rbx
   1400023fd:	0f 83 5c ff ff ff    	jae    14000235f <_pei386_runtime_relocator+0x1f>
   140002403:	4c 8b 3d 26 30 00 00 	mov    0x3026(%rip),%r15        # 140005430 <.refptr.__image_base__>
   14000240a:	49 bc 00 00 00 00 ff 	movabs $0xffffffff00000000,%r12
   140002411:	ff ff ff 
   140002414:	eb 5d                	jmp    140002473 <_pei386_runtime_relocator+0x133>
   140002416:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000241d:	00 00 00 
   140002420:	41 0f b6 06          	movzbl (%r14),%eax
   140002424:	49 89 c3             	mov    %rax,%r11
   140002427:	49 81 cb 00 ff ff ff 	or     $0xffffffffffffff00,%r11
   14000242e:	84 c0                	test   %al,%al
   140002430:	49 0f 48 c3          	cmovs  %r11,%rax
   140002434:	48 29 c8             	sub    %rcx,%rax
   140002437:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   14000243e:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   140002442:	75 17                	jne    14000245b <_pei386_runtime_relocator+0x11b>
   140002444:	49 83 fd 80          	cmp    $0xffffffffffffff80,%r13
   140002448:	0f 8c 06 02 00 00    	jl     140002654 <_pei386_runtime_relocator+0x314>
   14000244e:	49 81 fd ff 00 00 00 	cmp    $0xff,%r13
   140002455:	0f 8f f9 01 00 00    	jg     140002654 <_pei386_runtime_relocator+0x314>
   14000245b:	4c 89 f1             	mov    %r14,%rcx
   14000245e:	e8 6d fd ff ff       	call   1400021d0 <mark_section_writable>
   140002463:	45 88 2e             	mov    %r13b,(%r14)
   140002466:	48 83 c3 0c          	add    $0xc,%rbx
   14000246a:	48 39 fb             	cmp    %rdi,%rbx
   14000246d:	0f 83 8d 00 00 00    	jae    140002500 <_pei386_runtime_relocator+0x1c0>
   140002473:	8b 0b                	mov    (%rbx),%ecx
   140002475:	44 8b 43 08          	mov    0x8(%rbx),%r8d
   140002479:	44 8b 73 04          	mov    0x4(%rbx),%r14d
   14000247d:	4c 01 f9             	add    %r15,%rcx
   140002480:	41 0f b6 d0          	movzbl %r8b,%edx
   140002484:	4c 8b 09             	mov    (%rcx),%r9
   140002487:	4d 01 fe             	add    %r15,%r14
   14000248a:	83 fa 20             	cmp    $0x20,%edx
   14000248d:	0f 84 25 01 00 00    	je     1400025b8 <_pei386_runtime_relocator+0x278>
   140002493:	0f 87 e7 00 00 00    	ja     140002580 <_pei386_runtime_relocator+0x240>
   140002499:	83 fa 08             	cmp    $0x8,%edx
   14000249c:	74 82                	je     140002420 <_pei386_runtime_relocator+0xe0>
   14000249e:	83 fa 10             	cmp    $0x10,%edx
   1400024a1:	0f 85 a1 01 00 00    	jne    140002648 <_pei386_runtime_relocator+0x308>
   1400024a7:	41 0f b7 06          	movzwl (%r14),%eax
   1400024ab:	49 89 c3             	mov    %rax,%r11
   1400024ae:	49 81 cb 00 00 ff ff 	or     $0xffffffffffff0000,%r11
   1400024b5:	66 85 c0             	test   %ax,%ax
   1400024b8:	49 0f 48 c3          	cmovs  %r11,%rax
   1400024bc:	48 29 c8             	sub    %rcx,%rax
   1400024bf:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   1400024c6:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   1400024ca:	75 1a                	jne    1400024e6 <_pei386_runtime_relocator+0x1a6>
   1400024cc:	49 81 fd 00 80 ff ff 	cmp    $0xffffffffffff8000,%r13
   1400024d3:	0f 8c 7b 01 00 00    	jl     140002654 <_pei386_runtime_relocator+0x314>
   1400024d9:	49 81 fd ff ff 00 00 	cmp    $0xffff,%r13
   1400024e0:	0f 8f 6e 01 00 00    	jg     140002654 <_pei386_runtime_relocator+0x314>
   1400024e6:	4c 89 f1             	mov    %r14,%rcx
   1400024e9:	48 83 c3 0c          	add    $0xc,%rbx
   1400024ed:	e8 de fc ff ff       	call   1400021d0 <mark_section_writable>
   1400024f2:	66 45 89 2e          	mov    %r13w,(%r14)
   1400024f6:	48 39 fb             	cmp    %rdi,%rbx
   1400024f9:	0f 82 74 ff ff ff    	jb     140002473 <_pei386_runtime_relocator+0x133>
   1400024ff:	90                   	nop
   140002500:	8b 15 ae 5b 00 00    	mov    0x5bae(%rip),%edx        # 1400080b4 <maxSections>
   140002506:	85 d2                	test   %edx,%edx
   140002508:	0f 8e 51 fe ff ff    	jle    14000235f <_pei386_runtime_relocator+0x1f>
   14000250e:	48 8b 3d a7 6d 00 00 	mov    0x6da7(%rip),%rdi        # 1400092bc <__imp_VirtualProtect>
   140002515:	31 db                	xor    %ebx,%ebx
   140002517:	4c 8d 65 fc          	lea    -0x4(%rbp),%r12
   14000251b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002520:	48 8b 05 91 5b 00 00 	mov    0x5b91(%rip),%rax        # 1400080b8 <the_secs>
   140002527:	48 01 d8             	add    %rbx,%rax
   14000252a:	44 8b 00             	mov    (%rax),%r8d
   14000252d:	45 85 c0             	test   %r8d,%r8d
   140002530:	74 0d                	je     14000253f <_pei386_runtime_relocator+0x1ff>
   140002532:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140002536:	48 8b 48 08          	mov    0x8(%rax),%rcx
   14000253a:	4d 89 e1             	mov    %r12,%r9
   14000253d:	ff d7                	call   *%rdi
   14000253f:	83 c6 01             	add    $0x1,%esi
   140002542:	48 83 c3 28          	add    $0x28,%rbx
   140002546:	3b 35 68 5b 00 00    	cmp    0x5b68(%rip),%esi        # 1400080b4 <maxSections>
   14000254c:	7c d2                	jl     140002520 <_pei386_runtime_relocator+0x1e0>
   14000254e:	e9 0c fe ff ff       	jmp    14000235f <_pei386_runtime_relocator+0x1f>
   140002553:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002558:	85 d2                	test   %edx,%edx
   14000255a:	0f 85 a8 00 00 00    	jne    140002608 <_pei386_runtime_relocator+0x2c8>
   140002560:	8b 43 04             	mov    0x4(%rbx),%eax
   140002563:	89 c2                	mov    %eax,%edx
   140002565:	0b 53 08             	or     0x8(%rbx),%edx
   140002568:	0f 85 74 fe ff ff    	jne    1400023e2 <_pei386_runtime_relocator+0xa2>
   14000256e:	48 83 c3 0c          	add    $0xc,%rbx
   140002572:	e9 5e fe ff ff       	jmp    1400023d5 <_pei386_runtime_relocator+0x95>
   140002577:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000257e:	00 00 
   140002580:	83 fa 40             	cmp    $0x40,%edx
   140002583:	0f 85 bf 00 00 00    	jne    140002648 <_pei386_runtime_relocator+0x308>
   140002589:	49 8b 06             	mov    (%r14),%rax
   14000258c:	48 29 c8             	sub    %rcx,%rax
   14000258f:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   140002596:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   14000259a:	75 09                	jne    1400025a5 <_pei386_runtime_relocator+0x265>
   14000259c:	4d 85 ed             	test   %r13,%r13
   14000259f:	0f 89 af 00 00 00    	jns    140002654 <_pei386_runtime_relocator+0x314>
   1400025a5:	4c 89 f1             	mov    %r14,%rcx
   1400025a8:	e8 23 fc ff ff       	call   1400021d0 <mark_section_writable>
   1400025ad:	4d 89 2e             	mov    %r13,(%r14)
   1400025b0:	e9 b1 fe ff ff       	jmp    140002466 <_pei386_runtime_relocator+0x126>
   1400025b5:	0f 1f 00             	nopl   (%rax)
   1400025b8:	41 8b 06             	mov    (%r14),%eax
   1400025bb:	49 89 c2             	mov    %rax,%r10
   1400025be:	4c 09 e0             	or     %r12,%rax
   1400025c1:	45 85 d2             	test   %r10d,%r10d
   1400025c4:	49 0f 49 c2          	cmovns %r10,%rax
   1400025c8:	48 29 c8             	sub    %rcx,%rax
   1400025cb:	41 81 e0 c0 00 00 00 	and    $0xc0,%r8d
   1400025d2:	4e 8d 2c 08          	lea    (%rax,%r9,1),%r13
   1400025d6:	75 19                	jne    1400025f1 <_pei386_runtime_relocator+0x2b1>
   1400025d8:	48 b8 ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%rax
   1400025df:	ff ff ff 
   1400025e2:	49 39 c5             	cmp    %rax,%r13
   1400025e5:	7e 6d                	jle    140002654 <_pei386_runtime_relocator+0x314>
   1400025e7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   1400025ec:	49 39 c5             	cmp    %rax,%r13
   1400025ef:	7f 63                	jg     140002654 <_pei386_runtime_relocator+0x314>
   1400025f1:	4c 89 f1             	mov    %r14,%rcx
   1400025f4:	e8 d7 fb ff ff       	call   1400021d0 <mark_section_writable>
   1400025f9:	45 89 2e             	mov    %r13d,(%r14)
   1400025fc:	e9 65 fe ff ff       	jmp    140002466 <_pei386_runtime_relocator+0x126>
   140002601:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002608:	48 39 fb             	cmp    %rdi,%rbx
   14000260b:	0f 83 4e fd ff ff    	jae    14000235f <_pei386_runtime_relocator+0x1f>
   140002611:	4c 8b 35 18 2e 00 00 	mov    0x2e18(%rip),%r14        # 140005430 <.refptr.__image_base__>
   140002618:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000261f:	00 
   140002620:	44 8b 63 04          	mov    0x4(%rbx),%r12d
   140002624:	44 8b 2b             	mov    (%rbx),%r13d
   140002627:	48 83 c3 08          	add    $0x8,%rbx
   14000262b:	4d 01 f4             	add    %r14,%r12
   14000262e:	45 03 2c 24          	add    (%r12),%r13d
   140002632:	4c 89 e1             	mov    %r12,%rcx
   140002635:	e8 96 fb ff ff       	call   1400021d0 <mark_section_writable>
   14000263a:	45 89 2c 24          	mov    %r13d,(%r12)
   14000263e:	48 39 fb             	cmp    %rdi,%rbx
   140002641:	72 dd                	jb     140002620 <_pei386_runtime_relocator+0x2e0>
   140002643:	e9 b8 fe ff ff       	jmp    140002500 <_pei386_runtime_relocator+0x1c0>
   140002648:	48 8d 0d 89 2c 00 00 	lea    0x2c89(%rip),%rcx        # 1400052d8 <.rdata+0xd8>
   14000264f:	e8 0c fb ff ff       	call   140002160 <__report_error>
   140002654:	4c 89 6c 24 20       	mov    %r13,0x20(%rsp)
   140002659:	4d 89 f0             	mov    %r14,%r8
   14000265c:	48 8d 0d a5 2c 00 00 	lea    0x2ca5(%rip),%rcx        # 140005308 <.rdata+0x108>
   140002663:	e8 f8 fa ff ff       	call   140002160 <__report_error>
   140002668:	48 8d 0d 31 2c 00 00 	lea    0x2c31(%rip),%rcx        # 1400052a0 <.rdata+0xa0>
   14000266f:	e8 ec fa ff ff       	call   140002160 <__report_error>
   140002674:	90                   	nop
   140002675:	90                   	nop
   140002676:	90                   	nop
   140002677:	90                   	nop
   140002678:	90                   	nop
   140002679:	90                   	nop
   14000267a:	90                   	nop
   14000267b:	90                   	nop
   14000267c:	90                   	nop
   14000267d:	90                   	nop
   14000267e:	90                   	nop
   14000267f:	90                   	nop

0000000140002680 <__mingw_raise_matherr>:
   140002680:	48 83 ec 58          	sub    $0x58,%rsp
   140002684:	48 8b 05 35 5a 00 00 	mov    0x5a35(%rip),%rax        # 1400080c0 <stUserMathErr>
   14000268b:	48 85 c0             	test   %rax,%rax
   14000268e:	74 2c                	je     1400026bc <__mingw_raise_matherr+0x3c>
   140002690:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140002697:	00 00 
   140002699:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   14000269d:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   1400026a2:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   1400026a7:	f2 0f 11 54 24 30    	movsd  %xmm2,0x30(%rsp)
   1400026ad:	f2 0f 11 5c 24 38    	movsd  %xmm3,0x38(%rsp)
   1400026b3:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   1400026b9:	ff d0                	call   *%rax
   1400026bb:	90                   	nop
   1400026bc:	48 83 c4 58          	add    $0x58,%rsp
   1400026c0:	c3                   	ret    
   1400026c1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400026c8:	00 00 00 00 
   1400026cc:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400026d0 <__mingw_setusermatherr>:
   1400026d0:	48 89 0d e9 59 00 00 	mov    %rcx,0x59e9(%rip)        # 1400080c0 <stUserMathErr>
   1400026d7:	e9 14 09 00 00       	jmp    140002ff0 <__setusermatherr>
   1400026dc:	90                   	nop
   1400026dd:	90                   	nop
   1400026de:	90                   	nop
   1400026df:	90                   	nop

00000001400026e0 <_gnu_exception_handler>:
   1400026e0:	41 54                	push   %r12
   1400026e2:	48 83 ec 20          	sub    $0x20,%rsp
   1400026e6:	48 8b 11             	mov    (%rcx),%rdx
   1400026e9:	8b 02                	mov    (%rdx),%eax
   1400026eb:	49 89 cc             	mov    %rcx,%r12
   1400026ee:	89 c1                	mov    %eax,%ecx
   1400026f0:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   1400026f6:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   1400026fc:	0f 84 be 00 00 00    	je     1400027c0 <_gnu_exception_handler+0xe0>
   140002702:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140002707:	0f 87 9a 00 00 00    	ja     1400027a7 <_gnu_exception_handler+0xc7>
   14000270d:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140002712:	76 44                	jbe    140002758 <_gnu_exception_handler+0x78>
   140002714:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140002719:	83 f8 09             	cmp    $0x9,%eax
   14000271c:	77 2a                	ja     140002748 <_gnu_exception_handler+0x68>
   14000271e:	48 8d 15 3b 2c 00 00 	lea    0x2c3b(%rip),%rdx        # 140005360 <.rdata>
   140002725:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140002729:	48 01 d0             	add    %rdx,%rax
   14000272c:	ff e0                	jmp    *%rax
   14000272e:	66 90                	xchg   %ax,%ax
   140002730:	ba 01 00 00 00       	mov    $0x1,%edx
   140002735:	b9 08 00 00 00       	mov    $0x8,%ecx
   14000273a:	e8 19 09 00 00       	call   140003058 <signal>
   14000273f:	e8 0c fa ff ff       	call   140002150 <_fpreset>
   140002744:	0f 1f 40 00          	nopl   0x0(%rax)
   140002748:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000274d:	48 83 c4 20          	add    $0x20,%rsp
   140002751:	41 5c                	pop    %r12
   140002753:	c3                   	ret    
   140002754:	0f 1f 40 00          	nopl   0x0(%rax)
   140002758:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   14000275d:	0f 84 dd 00 00 00    	je     140002840 <_gnu_exception_handler+0x160>
   140002763:	76 3b                	jbe    1400027a0 <_gnu_exception_handler+0xc0>
   140002765:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   14000276a:	74 dc                	je     140002748 <_gnu_exception_handler+0x68>
   14000276c:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140002771:	75 34                	jne    1400027a7 <_gnu_exception_handler+0xc7>
   140002773:	31 d2                	xor    %edx,%edx
   140002775:	b9 04 00 00 00       	mov    $0x4,%ecx
   14000277a:	e8 d9 08 00 00       	call   140003058 <signal>
   14000277f:	48 83 f8 01          	cmp    $0x1,%rax
   140002783:	0f 84 e3 00 00 00    	je     14000286c <_gnu_exception_handler+0x18c>
   140002789:	48 85 c0             	test   %rax,%rax
   14000278c:	74 19                	je     1400027a7 <_gnu_exception_handler+0xc7>
   14000278e:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002793:	ff d0                	call   *%rax
   140002795:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   14000279a:	eb b1                	jmp    14000274d <_gnu_exception_handler+0x6d>
   14000279c:	0f 1f 40 00          	nopl   0x0(%rax)
   1400027a0:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   1400027a5:	74 a1                	je     140002748 <_gnu_exception_handler+0x68>
   1400027a7:	48 8b 05 32 59 00 00 	mov    0x5932(%rip),%rax        # 1400080e0 <__mingw_oldexcpt_handler>
   1400027ae:	48 85 c0             	test   %rax,%rax
   1400027b1:	74 1d                	je     1400027d0 <_gnu_exception_handler+0xf0>
   1400027b3:	4c 89 e1             	mov    %r12,%rcx
   1400027b6:	48 83 c4 20          	add    $0x20,%rsp
   1400027ba:	41 5c                	pop    %r12
   1400027bc:	48 ff e0             	rex.W jmp *%rax
   1400027bf:	90                   	nop
   1400027c0:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   1400027c4:	0f 85 38 ff ff ff    	jne    140002702 <_gnu_exception_handler+0x22>
   1400027ca:	e9 79 ff ff ff       	jmp    140002748 <_gnu_exception_handler+0x68>
   1400027cf:	90                   	nop
   1400027d0:	31 c0                	xor    %eax,%eax
   1400027d2:	48 83 c4 20          	add    $0x20,%rsp
   1400027d6:	41 5c                	pop    %r12
   1400027d8:	c3                   	ret    
   1400027d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400027e0:	31 d2                	xor    %edx,%edx
   1400027e2:	b9 08 00 00 00       	mov    $0x8,%ecx
   1400027e7:	e8 6c 08 00 00       	call   140003058 <signal>
   1400027ec:	48 83 f8 01          	cmp    $0x1,%rax
   1400027f0:	0f 84 3a ff ff ff    	je     140002730 <_gnu_exception_handler+0x50>
   1400027f6:	48 85 c0             	test   %rax,%rax
   1400027f9:	74 ac                	je     1400027a7 <_gnu_exception_handler+0xc7>
   1400027fb:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002800:	ff d0                	call   *%rax
   140002802:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002807:	e9 41 ff ff ff       	jmp    14000274d <_gnu_exception_handler+0x6d>
   14000280c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002810:	31 d2                	xor    %edx,%edx
   140002812:	b9 08 00 00 00       	mov    $0x8,%ecx
   140002817:	e8 3c 08 00 00       	call   140003058 <signal>
   14000281c:	48 83 f8 01          	cmp    $0x1,%rax
   140002820:	75 d4                	jne    1400027f6 <_gnu_exception_handler+0x116>
   140002822:	ba 01 00 00 00       	mov    $0x1,%edx
   140002827:	b9 08 00 00 00       	mov    $0x8,%ecx
   14000282c:	e8 27 08 00 00       	call   140003058 <signal>
   140002831:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002836:	e9 12 ff ff ff       	jmp    14000274d <_gnu_exception_handler+0x6d>
   14000283b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002840:	31 d2                	xor    %edx,%edx
   140002842:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002847:	e8 0c 08 00 00       	call   140003058 <signal>
   14000284c:	48 83 f8 01          	cmp    $0x1,%rax
   140002850:	74 31                	je     140002883 <_gnu_exception_handler+0x1a3>
   140002852:	48 85 c0             	test   %rax,%rax
   140002855:	0f 84 4c ff ff ff    	je     1400027a7 <_gnu_exception_handler+0xc7>
   14000285b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140002860:	ff d0                	call   *%rax
   140002862:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140002867:	e9 e1 fe ff ff       	jmp    14000274d <_gnu_exception_handler+0x6d>
   14000286c:	ba 01 00 00 00       	mov    $0x1,%edx
   140002871:	b9 04 00 00 00       	mov    $0x4,%ecx
   140002876:	e8 dd 07 00 00       	call   140003058 <signal>
   14000287b:	83 c8 ff             	or     $0xffffffff,%eax
   14000287e:	e9 ca fe ff ff       	jmp    14000274d <_gnu_exception_handler+0x6d>
   140002883:	ba 01 00 00 00       	mov    $0x1,%edx
   140002888:	b9 0b 00 00 00       	mov    $0xb,%ecx
   14000288d:	e8 c6 07 00 00       	call   140003058 <signal>
   140002892:	83 c8 ff             	or     $0xffffffff,%eax
   140002895:	e9 b3 fe ff ff       	jmp    14000274d <_gnu_exception_handler+0x6d>
   14000289a:	90                   	nop
   14000289b:	90                   	nop
   14000289c:	90                   	nop
   14000289d:	90                   	nop
   14000289e:	90                   	nop
   14000289f:	90                   	nop

00000001400028a0 <__mingwthr_run_key_dtors.part.0>:
   1400028a0:	41 55                	push   %r13
   1400028a2:	41 54                	push   %r12
   1400028a4:	57                   	push   %rdi
   1400028a5:	56                   	push   %rsi
   1400028a6:	53                   	push   %rbx
   1400028a7:	48 83 ec 20          	sub    $0x20,%rsp
   1400028ab:	4c 8d 2d 6e 58 00 00 	lea    0x586e(%rip),%r13        # 140008120 <__mingwthr_cs>
   1400028b2:	4c 89 e9             	mov    %r13,%rcx
   1400028b5:	ff 15 c1 69 00 00    	call   *0x69c1(%rip)        # 14000927c <__imp_EnterCriticalSection>
   1400028bb:	48 8b 1d 3e 58 00 00 	mov    0x583e(%rip),%rbx        # 140008100 <key_dtor_list>
   1400028c2:	48 85 db             	test   %rbx,%rbx
   1400028c5:	74 35                	je     1400028fc <__mingwthr_run_key_dtors.part.0+0x5c>
   1400028c7:	48 8b 3d e6 69 00 00 	mov    0x69e6(%rip),%rdi        # 1400092b4 <__imp_TlsGetValue>
   1400028ce:	48 8b 35 af 69 00 00 	mov    0x69af(%rip),%rsi        # 140009284 <__imp_GetLastError>
   1400028d5:	0f 1f 00             	nopl   (%rax)
   1400028d8:	8b 0b                	mov    (%rbx),%ecx
   1400028da:	ff d7                	call   *%rdi
   1400028dc:	49 89 c4             	mov    %rax,%r12
   1400028df:	ff d6                	call   *%rsi
   1400028e1:	85 c0                	test   %eax,%eax
   1400028e3:	75 0e                	jne    1400028f3 <__mingwthr_run_key_dtors.part.0+0x53>
   1400028e5:	4d 85 e4             	test   %r12,%r12
   1400028e8:	74 09                	je     1400028f3 <__mingwthr_run_key_dtors.part.0+0x53>
   1400028ea:	48 8b 43 08          	mov    0x8(%rbx),%rax
   1400028ee:	4c 89 e1             	mov    %r12,%rcx
   1400028f1:	ff d0                	call   *%rax
   1400028f3:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   1400028f7:	48 85 db             	test   %rbx,%rbx
   1400028fa:	75 dc                	jne    1400028d8 <__mingwthr_run_key_dtors.part.0+0x38>
   1400028fc:	4c 89 e9             	mov    %r13,%rcx
   1400028ff:	48 83 c4 20          	add    $0x20,%rsp
   140002903:	5b                   	pop    %rbx
   140002904:	5e                   	pop    %rsi
   140002905:	5f                   	pop    %rdi
   140002906:	41 5c                	pop    %r12
   140002908:	41 5d                	pop    %r13
   14000290a:	48 ff 25 8b 69 00 00 	rex.W jmp *0x698b(%rip)        # 14000929c <__imp_LeaveCriticalSection>
   140002911:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002918:	00 00 00 00 
   14000291c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002920 <___w64_mingwthr_add_key_dtor>:
   140002920:	41 54                	push   %r12
   140002922:	57                   	push   %rdi
   140002923:	56                   	push   %rsi
   140002924:	53                   	push   %rbx
   140002925:	48 83 ec 28          	sub    $0x28,%rsp
   140002929:	8b 05 d9 57 00 00    	mov    0x57d9(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   14000292f:	89 cf                	mov    %ecx,%edi
   140002931:	48 89 d6             	mov    %rdx,%rsi
   140002934:	85 c0                	test   %eax,%eax
   140002936:	75 10                	jne    140002948 <___w64_mingwthr_add_key_dtor+0x28>
   140002938:	48 83 c4 28          	add    $0x28,%rsp
   14000293c:	5b                   	pop    %rbx
   14000293d:	5e                   	pop    %rsi
   14000293e:	5f                   	pop    %rdi
   14000293f:	41 5c                	pop    %r12
   140002941:	c3                   	ret    
   140002942:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002948:	ba 18 00 00 00       	mov    $0x18,%edx
   14000294d:	b9 01 00 00 00       	mov    $0x1,%ecx
   140002952:	e8 c9 06 00 00       	call   140003020 <calloc>
   140002957:	48 89 c3             	mov    %rax,%rbx
   14000295a:	48 85 c0             	test   %rax,%rax
   14000295d:	74 3d                	je     14000299c <___w64_mingwthr_add_key_dtor+0x7c>
   14000295f:	4c 8d 25 ba 57 00 00 	lea    0x57ba(%rip),%r12        # 140008120 <__mingwthr_cs>
   140002966:	89 38                	mov    %edi,(%rax)
   140002968:	48 89 70 08          	mov    %rsi,0x8(%rax)
   14000296c:	4c 89 e1             	mov    %r12,%rcx
   14000296f:	ff 15 07 69 00 00    	call   *0x6907(%rip)        # 14000927c <__imp_EnterCriticalSection>
   140002975:	48 8b 05 84 57 00 00 	mov    0x5784(%rip),%rax        # 140008100 <key_dtor_list>
   14000297c:	4c 89 e1             	mov    %r12,%rcx
   14000297f:	48 89 1d 7a 57 00 00 	mov    %rbx,0x577a(%rip)        # 140008100 <key_dtor_list>
   140002986:	48 89 43 10          	mov    %rax,0x10(%rbx)
   14000298a:	ff 15 0c 69 00 00    	call   *0x690c(%rip)        # 14000929c <__imp_LeaveCriticalSection>
   140002990:	31 c0                	xor    %eax,%eax
   140002992:	48 83 c4 28          	add    $0x28,%rsp
   140002996:	5b                   	pop    %rbx
   140002997:	5e                   	pop    %rsi
   140002998:	5f                   	pop    %rdi
   140002999:	41 5c                	pop    %r12
   14000299b:	c3                   	ret    
   14000299c:	83 c8 ff             	or     $0xffffffff,%eax
   14000299f:	eb 97                	jmp    140002938 <___w64_mingwthr_add_key_dtor+0x18>
   1400029a1:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400029a8:	00 00 00 00 
   1400029ac:	0f 1f 40 00          	nopl   0x0(%rax)

00000001400029b0 <___w64_mingwthr_remove_key_dtor>:
   1400029b0:	41 54                	push   %r12
   1400029b2:	53                   	push   %rbx
   1400029b3:	48 83 ec 28          	sub    $0x28,%rsp
   1400029b7:	8b 05 4b 57 00 00    	mov    0x574b(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   1400029bd:	89 cb                	mov    %ecx,%ebx
   1400029bf:	85 c0                	test   %eax,%eax
   1400029c1:	75 0d                	jne    1400029d0 <___w64_mingwthr_remove_key_dtor+0x20>
   1400029c3:	31 c0                	xor    %eax,%eax
   1400029c5:	48 83 c4 28          	add    $0x28,%rsp
   1400029c9:	5b                   	pop    %rbx
   1400029ca:	41 5c                	pop    %r12
   1400029cc:	c3                   	ret    
   1400029cd:	0f 1f 00             	nopl   (%rax)
   1400029d0:	4c 8d 25 49 57 00 00 	lea    0x5749(%rip),%r12        # 140008120 <__mingwthr_cs>
   1400029d7:	4c 89 e1             	mov    %r12,%rcx
   1400029da:	ff 15 9c 68 00 00    	call   *0x689c(%rip)        # 14000927c <__imp_EnterCriticalSection>
   1400029e0:	48 8b 0d 19 57 00 00 	mov    0x5719(%rip),%rcx        # 140008100 <key_dtor_list>
   1400029e7:	48 85 c9             	test   %rcx,%rcx
   1400029ea:	74 27                	je     140002a13 <___w64_mingwthr_remove_key_dtor+0x63>
   1400029ec:	31 d2                	xor    %edx,%edx
   1400029ee:	eb 0b                	jmp    1400029fb <___w64_mingwthr_remove_key_dtor+0x4b>
   1400029f0:	48 89 ca             	mov    %rcx,%rdx
   1400029f3:	48 85 c0             	test   %rax,%rax
   1400029f6:	74 1b                	je     140002a13 <___w64_mingwthr_remove_key_dtor+0x63>
   1400029f8:	48 89 c1             	mov    %rax,%rcx
   1400029fb:	8b 01                	mov    (%rcx),%eax
   1400029fd:	39 d8                	cmp    %ebx,%eax
   1400029ff:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140002a03:	75 eb                	jne    1400029f0 <___w64_mingwthr_remove_key_dtor+0x40>
   140002a05:	48 85 d2             	test   %rdx,%rdx
   140002a08:	74 26                	je     140002a30 <___w64_mingwthr_remove_key_dtor+0x80>
   140002a0a:	48 89 42 10          	mov    %rax,0x10(%rdx)
   140002a0e:	e8 25 06 00 00       	call   140003038 <free>
   140002a13:	4c 89 e1             	mov    %r12,%rcx
   140002a16:	ff 15 80 68 00 00    	call   *0x6880(%rip)        # 14000929c <__imp_LeaveCriticalSection>
   140002a1c:	31 c0                	xor    %eax,%eax
   140002a1e:	48 83 c4 28          	add    $0x28,%rsp
   140002a22:	5b                   	pop    %rbx
   140002a23:	41 5c                	pop    %r12
   140002a25:	c3                   	ret    
   140002a26:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002a2d:	00 00 00 
   140002a30:	48 89 05 c9 56 00 00 	mov    %rax,0x56c9(%rip)        # 140008100 <key_dtor_list>
   140002a37:	eb d5                	jmp    140002a0e <___w64_mingwthr_remove_key_dtor+0x5e>
   140002a39:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002a40 <__mingw_TLScallback>:
   140002a40:	53                   	push   %rbx
   140002a41:	48 83 ec 20          	sub    $0x20,%rsp
   140002a45:	83 fa 02             	cmp    $0x2,%edx
   140002a48:	74 46                	je     140002a90 <__mingw_TLScallback+0x50>
   140002a4a:	77 2c                	ja     140002a78 <__mingw_TLScallback+0x38>
   140002a4c:	85 d2                	test   %edx,%edx
   140002a4e:	74 50                	je     140002aa0 <__mingw_TLScallback+0x60>
   140002a50:	8b 05 b2 56 00 00    	mov    0x56b2(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002a56:	85 c0                	test   %eax,%eax
   140002a58:	0f 84 b2 00 00 00    	je     140002b10 <__mingw_TLScallback+0xd0>
   140002a5e:	c7 05 a0 56 00 00 01 	movl   $0x1,0x56a0(%rip)        # 140008108 <__mingwthr_cs_init>
   140002a65:	00 00 00 
   140002a68:	b8 01 00 00 00       	mov    $0x1,%eax
   140002a6d:	48 83 c4 20          	add    $0x20,%rsp
   140002a71:	5b                   	pop    %rbx
   140002a72:	c3                   	ret    
   140002a73:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002a78:	83 fa 03             	cmp    $0x3,%edx
   140002a7b:	75 eb                	jne    140002a68 <__mingw_TLScallback+0x28>
   140002a7d:	8b 05 85 56 00 00    	mov    0x5685(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002a83:	85 c0                	test   %eax,%eax
   140002a85:	74 e1                	je     140002a68 <__mingw_TLScallback+0x28>
   140002a87:	e8 14 fe ff ff       	call   1400028a0 <__mingwthr_run_key_dtors.part.0>
   140002a8c:	eb da                	jmp    140002a68 <__mingw_TLScallback+0x28>
   140002a8e:	66 90                	xchg   %ax,%ax
   140002a90:	e8 bb f6 ff ff       	call   140002150 <_fpreset>
   140002a95:	b8 01 00 00 00       	mov    $0x1,%eax
   140002a9a:	48 83 c4 20          	add    $0x20,%rsp
   140002a9e:	5b                   	pop    %rbx
   140002a9f:	c3                   	ret    
   140002aa0:	8b 05 62 56 00 00    	mov    0x5662(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002aa6:	85 c0                	test   %eax,%eax
   140002aa8:	75 56                	jne    140002b00 <__mingw_TLScallback+0xc0>
   140002aaa:	8b 05 58 56 00 00    	mov    0x5658(%rip),%eax        # 140008108 <__mingwthr_cs_init>
   140002ab0:	83 f8 01             	cmp    $0x1,%eax
   140002ab3:	75 b3                	jne    140002a68 <__mingw_TLScallback+0x28>
   140002ab5:	48 8b 1d 44 56 00 00 	mov    0x5644(%rip),%rbx        # 140008100 <key_dtor_list>
   140002abc:	48 85 db             	test   %rbx,%rbx
   140002abf:	74 18                	je     140002ad9 <__mingw_TLScallback+0x99>
   140002ac1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002ac8:	48 89 d9             	mov    %rbx,%rcx
   140002acb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140002acf:	e8 64 05 00 00       	call   140003038 <free>
   140002ad4:	48 85 db             	test   %rbx,%rbx
   140002ad7:	75 ef                	jne    140002ac8 <__mingw_TLScallback+0x88>
   140002ad9:	48 8d 0d 40 56 00 00 	lea    0x5640(%rip),%rcx        # 140008120 <__mingwthr_cs>
   140002ae0:	48 c7 05 15 56 00 00 	movq   $0x0,0x5615(%rip)        # 140008100 <key_dtor_list>
   140002ae7:	00 00 00 00 
   140002aeb:	c7 05 13 56 00 00 00 	movl   $0x0,0x5613(%rip)        # 140008108 <__mingwthr_cs_init>
   140002af2:	00 00 00 
   140002af5:	ff 15 79 67 00 00    	call   *0x6779(%rip)        # 140009274 <__IAT_start__>
   140002afb:	e9 68 ff ff ff       	jmp    140002a68 <__mingw_TLScallback+0x28>
   140002b00:	e8 9b fd ff ff       	call   1400028a0 <__mingwthr_run_key_dtors.part.0>
   140002b05:	eb a3                	jmp    140002aaa <__mingw_TLScallback+0x6a>
   140002b07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140002b0e:	00 00 
   140002b10:	48 8d 0d 09 56 00 00 	lea    0x5609(%rip),%rcx        # 140008120 <__mingwthr_cs>
   140002b17:	ff 15 77 67 00 00    	call   *0x6777(%rip)        # 140009294 <__imp_InitializeCriticalSection>
   140002b1d:	e9 3c ff ff ff       	jmp    140002a5e <__mingw_TLScallback+0x1e>
   140002b22:	90                   	nop
   140002b23:	90                   	nop
   140002b24:	90                   	nop
   140002b25:	90                   	nop
   140002b26:	90                   	nop
   140002b27:	90                   	nop
   140002b28:	90                   	nop
   140002b29:	90                   	nop
   140002b2a:	90                   	nop
   140002b2b:	90                   	nop
   140002b2c:	90                   	nop
   140002b2d:	90                   	nop
   140002b2e:	90                   	nop
   140002b2f:	90                   	nop

0000000140002b30 <_ValidateImageBase>:
   140002b30:	31 c0                	xor    %eax,%eax
   140002b32:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002b37:	75 0f                	jne    140002b48 <_ValidateImageBase+0x18>
   140002b39:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   140002b3d:	48 01 d1             	add    %rdx,%rcx
   140002b40:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002b46:	74 08                	je     140002b50 <_ValidateImageBase+0x20>
   140002b48:	c3                   	ret    
   140002b49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002b50:	31 c0                	xor    %eax,%eax
   140002b52:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002b58:	0f 94 c0             	sete   %al
   140002b5b:	c3                   	ret    
   140002b5c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002b60 <_FindPESection>:
   140002b60:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002b64:	48 01 c1             	add    %rax,%rcx
   140002b67:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   140002b6b:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   140002b70:	0f b7 49 06          	movzwl 0x6(%rcx),%ecx
   140002b74:	85 c9                	test   %ecx,%ecx
   140002b76:	74 2d                	je     140002ba5 <_FindPESection+0x45>
   140002b78:	83 e9 01             	sub    $0x1,%ecx
   140002b7b:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   140002b7f:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   140002b84:	0f 1f 40 00          	nopl   0x0(%rax)
   140002b88:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002b8c:	4c 89 c1             	mov    %r8,%rcx
   140002b8f:	49 39 d0             	cmp    %rdx,%r8
   140002b92:	77 08                	ja     140002b9c <_FindPESection+0x3c>
   140002b94:	03 48 08             	add    0x8(%rax),%ecx
   140002b97:	48 39 d1             	cmp    %rdx,%rcx
   140002b9a:	77 0b                	ja     140002ba7 <_FindPESection+0x47>
   140002b9c:	48 83 c0 28          	add    $0x28,%rax
   140002ba0:	4c 39 c8             	cmp    %r9,%rax
   140002ba3:	75 e3                	jne    140002b88 <_FindPESection+0x28>
   140002ba5:	31 c0                	xor    %eax,%eax
   140002ba7:	c3                   	ret    
   140002ba8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002baf:	00 

0000000140002bb0 <_FindPESectionByName>:
   140002bb0:	41 54                	push   %r12
   140002bb2:	56                   	push   %rsi
   140002bb3:	53                   	push   %rbx
   140002bb4:	48 83 ec 20          	sub    $0x20,%rsp
   140002bb8:	48 89 cb             	mov    %rcx,%rbx
   140002bbb:	e8 a0 04 00 00       	call   140003060 <strlen>
   140002bc0:	48 83 f8 08          	cmp    $0x8,%rax
   140002bc4:	77 7a                	ja     140002c40 <_FindPESectionByName+0x90>
   140002bc6:	48 8b 15 63 28 00 00 	mov    0x2863(%rip),%rdx        # 140005430 <.refptr.__image_base__>
   140002bcd:	45 31 e4             	xor    %r12d,%r12d
   140002bd0:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002bd5:	75 57                	jne    140002c2e <_FindPESectionByName+0x7e>
   140002bd7:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   140002bdb:	48 01 d0             	add    %rdx,%rax
   140002bde:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140002be4:	75 48                	jne    140002c2e <_FindPESectionByName+0x7e>
   140002be6:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   140002bec:	75 40                	jne    140002c2e <_FindPESectionByName+0x7e>
   140002bee:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140002bf2:	4c 8d 64 10 18       	lea    0x18(%rax,%rdx,1),%r12
   140002bf7:	0f b7 40 06          	movzwl 0x6(%rax),%eax
   140002bfb:	85 c0                	test   %eax,%eax
   140002bfd:	74 41                	je     140002c40 <_FindPESectionByName+0x90>
   140002bff:	83 e8 01             	sub    $0x1,%eax
   140002c02:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002c06:	49 8d 74 c4 28       	lea    0x28(%r12,%rax,8),%rsi
   140002c0b:	eb 0c                	jmp    140002c19 <_FindPESectionByName+0x69>
   140002c0d:	0f 1f 00             	nopl   (%rax)
   140002c10:	49 83 c4 28          	add    $0x28,%r12
   140002c14:	49 39 f4             	cmp    %rsi,%r12
   140002c17:	74 27                	je     140002c40 <_FindPESectionByName+0x90>
   140002c19:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   140002c1f:	48 89 da             	mov    %rbx,%rdx
   140002c22:	4c 89 e1             	mov    %r12,%rcx
   140002c25:	e8 3e 04 00 00       	call   140003068 <strncmp>
   140002c2a:	85 c0                	test   %eax,%eax
   140002c2c:	75 e2                	jne    140002c10 <_FindPESectionByName+0x60>
   140002c2e:	4c 89 e0             	mov    %r12,%rax
   140002c31:	48 83 c4 20          	add    $0x20,%rsp
   140002c35:	5b                   	pop    %rbx
   140002c36:	5e                   	pop    %rsi
   140002c37:	41 5c                	pop    %r12
   140002c39:	c3                   	ret    
   140002c3a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002c40:	45 31 e4             	xor    %r12d,%r12d
   140002c43:	4c 89 e0             	mov    %r12,%rax
   140002c46:	48 83 c4 20          	add    $0x20,%rsp
   140002c4a:	5b                   	pop    %rbx
   140002c4b:	5e                   	pop    %rsi
   140002c4c:	41 5c                	pop    %r12
   140002c4e:	c3                   	ret    
   140002c4f:	90                   	nop

0000000140002c50 <__mingw_GetSectionForAddress>:
   140002c50:	48 8b 15 d9 27 00 00 	mov    0x27d9(%rip),%rdx        # 140005430 <.refptr.__image_base__>
   140002c57:	31 c0                	xor    %eax,%eax
   140002c59:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002c5e:	75 10                	jne    140002c70 <__mingw_GetSectionForAddress+0x20>
   140002c60:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002c64:	49 01 d0             	add    %rdx,%r8
   140002c67:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002c6e:	74 08                	je     140002c78 <__mingw_GetSectionForAddress+0x28>
   140002c70:	c3                   	ret    
   140002c71:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002c78:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002c7f:	75 ef                	jne    140002c70 <__mingw_GetSectionForAddress+0x20>
   140002c81:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   140002c86:	48 29 d1             	sub    %rdx,%rcx
   140002c89:	41 0f b7 50 06       	movzwl 0x6(%r8),%edx
   140002c8e:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   140002c93:	85 d2                	test   %edx,%edx
   140002c95:	74 2e                	je     140002cc5 <__mingw_GetSectionForAddress+0x75>
   140002c97:	83 ea 01             	sub    $0x1,%edx
   140002c9a:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002c9e:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   140002ca3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140002ca8:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   140002cac:	4c 89 c2             	mov    %r8,%rdx
   140002caf:	4c 39 c1             	cmp    %r8,%rcx
   140002cb2:	72 08                	jb     140002cbc <__mingw_GetSectionForAddress+0x6c>
   140002cb4:	03 50 08             	add    0x8(%rax),%edx
   140002cb7:	48 39 d1             	cmp    %rdx,%rcx
   140002cba:	72 b4                	jb     140002c70 <__mingw_GetSectionForAddress+0x20>
   140002cbc:	48 83 c0 28          	add    $0x28,%rax
   140002cc0:	4c 39 c8             	cmp    %r9,%rax
   140002cc3:	75 e3                	jne    140002ca8 <__mingw_GetSectionForAddress+0x58>
   140002cc5:	31 c0                	xor    %eax,%eax
   140002cc7:	c3                   	ret    
   140002cc8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002ccf:	00 

0000000140002cd0 <__mingw_GetSectionCount>:
   140002cd0:	48 8b 05 59 27 00 00 	mov    0x2759(%rip),%rax        # 140005430 <.refptr.__image_base__>
   140002cd7:	45 31 c0             	xor    %r8d,%r8d
   140002cda:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140002cdf:	75 0f                	jne    140002cf0 <__mingw_GetSectionCount+0x20>
   140002ce1:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002ce5:	48 01 d0             	add    %rdx,%rax
   140002ce8:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140002cee:	74 08                	je     140002cf8 <__mingw_GetSectionCount+0x28>
   140002cf0:	44 89 c0             	mov    %r8d,%eax
   140002cf3:	c3                   	ret    
   140002cf4:	0f 1f 40 00          	nopl   0x0(%rax)
   140002cf8:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   140002cfe:	75 f0                	jne    140002cf0 <__mingw_GetSectionCount+0x20>
   140002d00:	44 0f b7 40 06       	movzwl 0x6(%rax),%r8d
   140002d05:	44 89 c0             	mov    %r8d,%eax
   140002d08:	c3                   	ret    
   140002d09:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002d10 <_FindPESectionExec>:
   140002d10:	4c 8b 05 19 27 00 00 	mov    0x2719(%rip),%r8        # 140005430 <.refptr.__image_base__>
   140002d17:	31 c0                	xor    %eax,%eax
   140002d19:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   140002d1f:	75 0f                	jne    140002d30 <_FindPESectionExec+0x20>
   140002d21:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140002d25:	4c 01 c2             	add    %r8,%rdx
   140002d28:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   140002d2e:	74 08                	je     140002d38 <_FindPESectionExec+0x28>
   140002d30:	c3                   	ret    
   140002d31:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002d38:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   140002d3e:	75 f0                	jne    140002d30 <_FindPESectionExec+0x20>
   140002d40:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002d44:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   140002d49:	0f b7 52 06          	movzwl 0x6(%rdx),%edx
   140002d4d:	85 d2                	test   %edx,%edx
   140002d4f:	74 27                	je     140002d78 <_FindPESectionExec+0x68>
   140002d51:	83 ea 01             	sub    $0x1,%edx
   140002d54:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   140002d58:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   140002d5d:	0f 1f 00             	nopl   (%rax)
   140002d60:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   140002d64:	74 09                	je     140002d6f <_FindPESectionExec+0x5f>
   140002d66:	48 85 c9             	test   %rcx,%rcx
   140002d69:	74 c5                	je     140002d30 <_FindPESectionExec+0x20>
   140002d6b:	48 83 e9 01          	sub    $0x1,%rcx
   140002d6f:	48 83 c0 28          	add    $0x28,%rax
   140002d73:	48 39 d0             	cmp    %rdx,%rax
   140002d76:	75 e8                	jne    140002d60 <_FindPESectionExec+0x50>
   140002d78:	31 c0                	xor    %eax,%eax
   140002d7a:	c3                   	ret    
   140002d7b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000140002d80 <_GetPEImageBase>:
   140002d80:	48 8b 05 a9 26 00 00 	mov    0x26a9(%rip),%rax        # 140005430 <.refptr.__image_base__>
   140002d87:	45 31 c0             	xor    %r8d,%r8d
   140002d8a:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140002d8f:	75 0f                	jne    140002da0 <_GetPEImageBase+0x20>
   140002d91:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002d95:	48 01 c2             	add    %rax,%rdx
   140002d98:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   140002d9e:	74 08                	je     140002da8 <_GetPEImageBase+0x28>
   140002da0:	4c 89 c0             	mov    %r8,%rax
   140002da3:	c3                   	ret    
   140002da4:	0f 1f 40 00          	nopl   0x0(%rax)
   140002da8:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   140002dae:	4c 0f 44 c0          	cmove  %rax,%r8
   140002db2:	4c 89 c0             	mov    %r8,%rax
   140002db5:	c3                   	ret    
   140002db6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002dbd:	00 00 00 

0000000140002dc0 <_IsNonwritableInCurrentImage>:
   140002dc0:	48 8b 15 69 26 00 00 	mov    0x2669(%rip),%rdx        # 140005430 <.refptr.__image_base__>
   140002dc7:	31 c0                	xor    %eax,%eax
   140002dc9:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002dce:	75 10                	jne    140002de0 <_IsNonwritableInCurrentImage+0x20>
   140002dd0:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002dd4:	49 01 d0             	add    %rdx,%r8
   140002dd7:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002dde:	74 08                	je     140002de8 <_IsNonwritableInCurrentImage+0x28>
   140002de0:	c3                   	ret    
   140002de1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002de8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002def:	75 ef                	jne    140002de0 <_IsNonwritableInCurrentImage+0x20>
   140002df1:	48 29 d1             	sub    %rdx,%rcx
   140002df4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002df9:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002dfe:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002e03:	45 85 c0             	test   %r8d,%r8d
   140002e06:	74 d8                	je     140002de0 <_IsNonwritableInCurrentImage+0x20>
   140002e08:	41 8d 40 ff          	lea    -0x1(%r8),%eax
   140002e0c:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002e10:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140002e15:	0f 1f 00             	nopl   (%rax)
   140002e18:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   140002e1c:	4c 89 c0             	mov    %r8,%rax
   140002e1f:	4c 39 c1             	cmp    %r8,%rcx
   140002e22:	72 08                	jb     140002e2c <_IsNonwritableInCurrentImage+0x6c>
   140002e24:	03 42 08             	add    0x8(%rdx),%eax
   140002e27:	48 39 c1             	cmp    %rax,%rcx
   140002e2a:	72 14                	jb     140002e40 <_IsNonwritableInCurrentImage+0x80>
   140002e2c:	48 83 c2 28          	add    $0x28,%rdx
   140002e30:	4c 39 ca             	cmp    %r9,%rdx
   140002e33:	75 e3                	jne    140002e18 <_IsNonwritableInCurrentImage+0x58>
   140002e35:	31 c0                	xor    %eax,%eax
   140002e37:	c3                   	ret    
   140002e38:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002e3f:	00 
   140002e40:	8b 42 24             	mov    0x24(%rdx),%eax
   140002e43:	f7 d0                	not    %eax
   140002e45:	c1 e8 1f             	shr    $0x1f,%eax
   140002e48:	c3                   	ret    
   140002e49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002e50 <__mingw_enum_import_library_names>:
   140002e50:	4c 8b 1d d9 25 00 00 	mov    0x25d9(%rip),%r11        # 140005430 <.refptr.__image_base__>
   140002e57:	45 31 c9             	xor    %r9d,%r9d
   140002e5a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   140002e60:	75 10                	jne    140002e72 <__mingw_enum_import_library_names+0x22>
   140002e62:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   140002e66:	4d 01 d8             	add    %r11,%r8
   140002e69:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   140002e70:	74 0e                	je     140002e80 <__mingw_enum_import_library_names+0x30>
   140002e72:	4c 89 c8             	mov    %r9,%rax
   140002e75:	c3                   	ret    
   140002e76:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140002e7d:	00 00 00 
   140002e80:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   140002e87:	75 e9                	jne    140002e72 <__mingw_enum_import_library_names+0x22>
   140002e89:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   140002e90:	85 c0                	test   %eax,%eax
   140002e92:	74 de                	je     140002e72 <__mingw_enum_import_library_names+0x22>
   140002e94:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   140002e99:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002e9e:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   140002ea3:	45 85 c0             	test   %r8d,%r8d
   140002ea6:	74 ca                	je     140002e72 <__mingw_enum_import_library_names+0x22>
   140002ea8:	41 83 e8 01          	sub    $0x1,%r8d
   140002eac:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   140002eb0:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   140002eb5:	0f 1f 00             	nopl   (%rax)
   140002eb8:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   140002ebc:	4d 89 c8             	mov    %r9,%r8
   140002ebf:	4c 39 c8             	cmp    %r9,%rax
   140002ec2:	72 09                	jb     140002ecd <__mingw_enum_import_library_names+0x7d>
   140002ec4:	44 03 42 08          	add    0x8(%rdx),%r8d
   140002ec8:	4c 39 c0             	cmp    %r8,%rax
   140002ecb:	72 13                	jb     140002ee0 <__mingw_enum_import_library_names+0x90>
   140002ecd:	48 83 c2 28          	add    $0x28,%rdx
   140002ed1:	49 39 d2             	cmp    %rdx,%r10
   140002ed4:	75 e2                	jne    140002eb8 <__mingw_enum_import_library_names+0x68>
   140002ed6:	45 31 c9             	xor    %r9d,%r9d
   140002ed9:	4c 89 c8             	mov    %r9,%rax
   140002edc:	c3                   	ret    
   140002edd:	0f 1f 00             	nopl   (%rax)
   140002ee0:	4c 01 d8             	add    %r11,%rax
   140002ee3:	eb 0a                	jmp    140002eef <__mingw_enum_import_library_names+0x9f>
   140002ee5:	0f 1f 00             	nopl   (%rax)
   140002ee8:	83 e9 01             	sub    $0x1,%ecx
   140002eeb:	48 83 c0 14          	add    $0x14,%rax
   140002eef:	44 8b 40 04          	mov    0x4(%rax),%r8d
   140002ef3:	45 85 c0             	test   %r8d,%r8d
   140002ef6:	75 07                	jne    140002eff <__mingw_enum_import_library_names+0xaf>
   140002ef8:	8b 50 0c             	mov    0xc(%rax),%edx
   140002efb:	85 d2                	test   %edx,%edx
   140002efd:	74 d7                	je     140002ed6 <__mingw_enum_import_library_names+0x86>
   140002eff:	85 c9                	test   %ecx,%ecx
   140002f01:	7f e5                	jg     140002ee8 <__mingw_enum_import_library_names+0x98>
   140002f03:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   140002f07:	4d 01 d9             	add    %r11,%r9
   140002f0a:	4c 89 c8             	mov    %r9,%rax
   140002f0d:	c3                   	ret    
   140002f0e:	90                   	nop
   140002f0f:	90                   	nop

0000000140002f10 <_Unwind_Resume>:
   140002f10:	ff 25 8e 64 00 00    	jmp    *0x648e(%rip)        # 1400093a4 <__imp__Unwind_Resume>
   140002f16:	90                   	nop
   140002f17:	90                   	nop
   140002f18:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002f1f:	00 

0000000140002f20 <___chkstk_ms>:
   140002f20:	51                   	push   %rcx
   140002f21:	50                   	push   %rax
   140002f22:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002f28:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   140002f2d:	72 19                	jb     140002f48 <___chkstk_ms+0x28>
   140002f2f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002f36:	48 83 09 00          	orq    $0x0,(%rcx)
   140002f3a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002f40:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002f46:	77 e7                	ja     140002f2f <___chkstk_ms+0xf>
   140002f48:	48 29 c1             	sub    %rax,%rcx
   140002f4b:	48 83 09 00          	orq    $0x0,(%rcx)
   140002f4f:	58                   	pop    %rax
   140002f50:	59                   	pop    %rcx
   140002f51:	c3                   	ret    
   140002f52:	90                   	nop
   140002f53:	90                   	nop
   140002f54:	90                   	nop
   140002f55:	90                   	nop
   140002f56:	90                   	nop
   140002f57:	90                   	nop
   140002f58:	90                   	nop
   140002f59:	90                   	nop
   140002f5a:	90                   	nop
   140002f5b:	90                   	nop
   140002f5c:	90                   	nop
   140002f5d:	90                   	nop
   140002f5e:	90                   	nop
   140002f5f:	90                   	nop

0000000140002f60 <__p__fmode>:
   140002f60:	48 8b 05 09 25 00 00 	mov    0x2509(%rip),%rax        # 140005470 <.refptr.__imp__fmode>
   140002f67:	48 8b 00             	mov    (%rax),%rax
   140002f6a:	c3                   	ret    
   140002f6b:	90                   	nop
   140002f6c:	90                   	nop
   140002f6d:	90                   	nop
   140002f6e:	90                   	nop
   140002f6f:	90                   	nop

0000000140002f70 <__p__commode>:
   140002f70:	48 8b 05 e9 24 00 00 	mov    0x24e9(%rip),%rax        # 140005460 <.refptr.__imp__commode>
   140002f77:	48 8b 00             	mov    (%rax),%rax
   140002f7a:	c3                   	ret    
   140002f7b:	90                   	nop
   140002f7c:	90                   	nop
   140002f7d:	90                   	nop
   140002f7e:	90                   	nop
   140002f7f:	90                   	nop

0000000140002f80 <__p__acmdln>:
   140002f80:	48 8b 05 c9 24 00 00 	mov    0x24c9(%rip),%rax        # 140005450 <.refptr.__imp__acmdln>
   140002f87:	48 8b 00             	mov    (%rax),%rax
   140002f8a:	c3                   	ret    
   140002f8b:	90                   	nop
   140002f8c:	90                   	nop
   140002f8d:	90                   	nop
   140002f8e:	90                   	nop
   140002f8f:	90                   	nop

0000000140002f90 <_get_invalid_parameter_handler>:
   140002f90:	48 8b 05 f9 51 00 00 	mov    0x51f9(%rip),%rax        # 140008190 <handler>
   140002f97:	c3                   	ret    
   140002f98:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140002f9f:	00 

0000000140002fa0 <_set_invalid_parameter_handler>:
   140002fa0:	48 89 c8             	mov    %rcx,%rax
   140002fa3:	48 87 05 e6 51 00 00 	xchg   %rax,0x51e6(%rip)        # 140008190 <handler>
   140002faa:	c3                   	ret    
   140002fab:	90                   	nop
   140002fac:	90                   	nop
   140002fad:	90                   	nop
   140002fae:	90                   	nop
   140002faf:	90                   	nop

0000000140002fb0 <__acrt_iob_func>:
   140002fb0:	53                   	push   %rbx
   140002fb1:	48 83 ec 20          	sub    $0x20,%rsp
   140002fb5:	89 cb                	mov    %ecx,%ebx
   140002fb7:	e8 24 00 00 00       	call   140002fe0 <__iob_func>
   140002fbc:	89 d9                	mov    %ebx,%ecx
   140002fbe:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   140002fc2:	48 c1 e2 04          	shl    $0x4,%rdx
   140002fc6:	48 01 d0             	add    %rdx,%rax
   140002fc9:	48 83 c4 20          	add    $0x20,%rsp
   140002fcd:	5b                   	pop    %rbx
   140002fce:	c3                   	ret    
   140002fcf:	90                   	nop

0000000140002fd0 <__C_specific_handler>:
   140002fd0:	ff 25 fe 62 00 00    	jmp    *0x62fe(%rip)        # 1400092d4 <__imp___C_specific_handler>
   140002fd6:	90                   	nop
   140002fd7:	90                   	nop

0000000140002fd8 <__getmainargs>:
   140002fd8:	ff 25 fe 62 00 00    	jmp    *0x62fe(%rip)        # 1400092dc <__imp___getmainargs>
   140002fde:	90                   	nop
   140002fdf:	90                   	nop

0000000140002fe0 <__iob_func>:
   140002fe0:	ff 25 06 63 00 00    	jmp    *0x6306(%rip)        # 1400092ec <__imp___iob_func>
   140002fe6:	90                   	nop
   140002fe7:	90                   	nop

0000000140002fe8 <__set_app_type>:
   140002fe8:	ff 25 06 63 00 00    	jmp    *0x6306(%rip)        # 1400092f4 <__imp___set_app_type>
   140002fee:	90                   	nop
   140002fef:	90                   	nop

0000000140002ff0 <__setusermatherr>:
   140002ff0:	ff 25 06 63 00 00    	jmp    *0x6306(%rip)        # 1400092fc <__imp___setusermatherr>
   140002ff6:	90                   	nop
   140002ff7:	90                   	nop

0000000140002ff8 <_amsg_exit>:
   140002ff8:	ff 25 0e 63 00 00    	jmp    *0x630e(%rip)        # 14000930c <__imp__amsg_exit>
   140002ffe:	90                   	nop
   140002fff:	90                   	nop

0000000140003000 <_cexit>:
   140003000:	ff 25 0e 63 00 00    	jmp    *0x630e(%rip)        # 140009314 <__imp__cexit>
   140003006:	90                   	nop
   140003007:	90                   	nop

0000000140003008 <_initterm>:
   140003008:	ff 25 1e 63 00 00    	jmp    *0x631e(%rip)        # 14000932c <__imp__initterm>
   14000300e:	90                   	nop
   14000300f:	90                   	nop

0000000140003010 <_onexit>:
   140003010:	ff 25 1e 63 00 00    	jmp    *0x631e(%rip)        # 140009334 <__imp__onexit>
   140003016:	90                   	nop
   140003017:	90                   	nop

0000000140003018 <abort>:
   140003018:	ff 25 1e 63 00 00    	jmp    *0x631e(%rip)        # 14000933c <__imp_abort>
   14000301e:	90                   	nop
   14000301f:	90                   	nop

0000000140003020 <calloc>:
   140003020:	ff 25 1e 63 00 00    	jmp    *0x631e(%rip)        # 140009344 <__imp_calloc>
   140003026:	90                   	nop
   140003027:	90                   	nop

0000000140003028 <exit>:
   140003028:	ff 25 1e 63 00 00    	jmp    *0x631e(%rip)        # 14000934c <__imp_exit>
   14000302e:	90                   	nop
   14000302f:	90                   	nop

0000000140003030 <fprintf>:
   140003030:	ff 25 1e 63 00 00    	jmp    *0x631e(%rip)        # 140009354 <__imp_fprintf>
   140003036:	90                   	nop
   140003037:	90                   	nop

0000000140003038 <free>:
   140003038:	ff 25 1e 63 00 00    	jmp    *0x631e(%rip)        # 14000935c <__imp_free>
   14000303e:	90                   	nop
   14000303f:	90                   	nop

0000000140003040 <fwrite>:
   140003040:	ff 25 1e 63 00 00    	jmp    *0x631e(%rip)        # 140009364 <__imp_fwrite>
   140003046:	90                   	nop
   140003047:	90                   	nop

0000000140003048 <malloc>:
   140003048:	ff 25 1e 63 00 00    	jmp    *0x631e(%rip)        # 14000936c <__imp_malloc>
   14000304e:	90                   	nop
   14000304f:	90                   	nop

0000000140003050 <memcpy>:
   140003050:	ff 25 1e 63 00 00    	jmp    *0x631e(%rip)        # 140009374 <__imp_memcpy>
   140003056:	90                   	nop
   140003057:	90                   	nop

0000000140003058 <signal>:
   140003058:	ff 25 1e 63 00 00    	jmp    *0x631e(%rip)        # 14000937c <__imp_signal>
   14000305e:	90                   	nop
   14000305f:	90                   	nop

0000000140003060 <strlen>:
   140003060:	ff 25 1e 63 00 00    	jmp    *0x631e(%rip)        # 140009384 <__imp_strlen>
   140003066:	90                   	nop
   140003067:	90                   	nop

0000000140003068 <strncmp>:
   140003068:	ff 25 1e 63 00 00    	jmp    *0x631e(%rip)        # 14000938c <__imp_strncmp>
   14000306e:	90                   	nop
   14000306f:	90                   	nop

0000000140003070 <vfprintf>:
   140003070:	ff 25 1e 63 00 00    	jmp    *0x631e(%rip)        # 140009394 <__imp_vfprintf>
   140003076:	90                   	nop
   140003077:	90                   	nop
   140003078:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   14000307f:	00 

0000000140003080 <VirtualQuery>:
   140003080:	ff 25 3e 62 00 00    	jmp    *0x623e(%rip)        # 1400092c4 <__imp_VirtualQuery>
   140003086:	90                   	nop
   140003087:	90                   	nop

0000000140003088 <VirtualProtect>:
   140003088:	ff 25 2e 62 00 00    	jmp    *0x622e(%rip)        # 1400092bc <__imp_VirtualProtect>
   14000308e:	90                   	nop
   14000308f:	90                   	nop

0000000140003090 <TlsGetValue>:
   140003090:	ff 25 1e 62 00 00    	jmp    *0x621e(%rip)        # 1400092b4 <__imp_TlsGetValue>
   140003096:	90                   	nop
   140003097:	90                   	nop

0000000140003098 <Sleep>:
   140003098:	ff 25 0e 62 00 00    	jmp    *0x620e(%rip)        # 1400092ac <__imp_Sleep>
   14000309e:	90                   	nop
   14000309f:	90                   	nop

00000001400030a0 <SetUnhandledExceptionFilter>:
   1400030a0:	ff 25 fe 61 00 00    	jmp    *0x61fe(%rip)        # 1400092a4 <__imp_SetUnhandledExceptionFilter>
   1400030a6:	90                   	nop
   1400030a7:	90                   	nop

00000001400030a8 <LeaveCriticalSection>:
   1400030a8:	ff 25 ee 61 00 00    	jmp    *0x61ee(%rip)        # 14000929c <__imp_LeaveCriticalSection>
   1400030ae:	90                   	nop
   1400030af:	90                   	nop

00000001400030b0 <InitializeCriticalSection>:
   1400030b0:	ff 25 de 61 00 00    	jmp    *0x61de(%rip)        # 140009294 <__imp_InitializeCriticalSection>
   1400030b6:	90                   	nop
   1400030b7:	90                   	nop

00000001400030b8 <GetStartupInfoA>:
   1400030b8:	ff 25 ce 61 00 00    	jmp    *0x61ce(%rip)        # 14000928c <__imp_GetStartupInfoA>
   1400030be:	90                   	nop
   1400030bf:	90                   	nop

00000001400030c0 <GetLastError>:
   1400030c0:	ff 25 be 61 00 00    	jmp    *0x61be(%rip)        # 140009284 <__imp_GetLastError>
   1400030c6:	90                   	nop
   1400030c7:	90                   	nop

00000001400030c8 <EnterCriticalSection>:
   1400030c8:	ff 25 ae 61 00 00    	jmp    *0x61ae(%rip)        # 14000927c <__imp_EnterCriticalSection>
   1400030ce:	90                   	nop
   1400030cf:	90                   	nop

00000001400030d0 <DeleteCriticalSection>:
   1400030d0:	ff 25 9e 61 00 00    	jmp    *0x619e(%rip)        # 140009274 <__IAT_start__>
   1400030d6:	90                   	nop
   1400030d7:	90                   	nop
   1400030d8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400030df:	00 

00000001400030e0 <_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_>:
   *  @param __rhs  C string.
   *  @return  True if @a __lhs.compare(@a __rhs) == 0.  False otherwise.
   */
  template<typename _CharT, typename _Traits, typename _Alloc>
    inline bool
    operator==(const basic_string<_CharT, _Traits, _Alloc>& __lhs,
   1400030e0:	55                   	push   %rbp
   1400030e1:	48 89 e5             	mov    %rsp,%rbp
   1400030e4:	48 83 ec 20          	sub    $0x20,%rsp
   1400030e8:	48 89 4d 10          	mov    %rcx,0x10(%rbp)
   1400030ec:	48 89 55 18          	mov    %rdx,0x18(%rbp)
	       const _CharT* __rhs)
    { return __lhs.compare(__rhs) == 0; }
   1400030f0:	48 8b 45 18          	mov    0x18(%rbp),%rax
   1400030f4:	48 89 c2             	mov    %rax,%rdx
   1400030f7:	48 8b 4d 10          	mov    0x10(%rbp),%rcx
   1400030fb:	e8 80 ed ff ff       	call   140001e80 <_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7compareEPKc>
   140003100:	85 c0                	test   %eax,%eax
   140003102:	0f 94 c0             	sete   %al
   140003105:	48 83 c4 20          	add    $0x20,%rsp
   140003109:	5d                   	pop    %rbp
   14000310a:	c3                   	ret    
   14000310b:	90                   	nop
   14000310c:	90                   	nop
   14000310d:	90                   	nop
   14000310e:	90                   	nop
   14000310f:	90                   	nop

0000000140003110 <register_frame_ctor>:
   140003110:	e9 fb e3 ff ff       	jmp    140001510 <__gcc_register_frame>
   140003115:	90                   	nop
   140003116:	90                   	nop
   140003117:	90                   	nop
   140003118:	90                   	nop
   140003119:	90                   	nop
   14000311a:	90                   	nop
   14000311b:	90                   	nop
   14000311c:	90                   	nop
   14000311d:	90                   	nop
   14000311e:	90                   	nop
   14000311f:	90                   	nop

0000000140003120 <__CTOR_LIST__>:
   140003120:	ff                   	(bad)  
   140003121:	ff                   	(bad)  
   140003122:	ff                   	(bad)  
   140003123:	ff                   	(bad)  
   140003124:	ff                   	(bad)  
   140003125:	ff                   	(bad)  
   140003126:	ff                   	(bad)  
   140003127:	ff                   	.byte 0xff

0000000140003128 <.ctors>:
   140003128:	c1 1d 00 40 01 00 00 	rcrl   $0x0,0x14000(%rip)        # 14001712f <.debug_info+0x57e7>
	...

0000000140003130 <.ctors.65535>:
   140003130:	10 31                	adc    %dh,(%rcx)
   140003132:	00 40 01             	add    %al,0x1(%rax)
	...

0000000140003140 <__DTOR_LIST__>:
   140003140:	ff                   	(bad)  
   140003141:	ff                   	(bad)  
   140003142:	ff                   	(bad)  
   140003143:	ff                   	(bad)  
   140003144:	ff                   	(bad)  
   140003145:	ff                   	(bad)  
   140003146:	ff                   	(bad)  
   140003147:	ff 00                	incl   (%rax)
   140003149:	00 00                	add    %al,(%rax)
   14000314b:	00 00                	add    %al,(%rax)
   14000314d:	00 00                	add    %al,(%rax)
	...
