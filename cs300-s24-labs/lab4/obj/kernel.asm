
obj/kernel.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000040000 <_kernel_start>:
   40000:	48 c7 c4 00 00 08 00 	mov    $0x80000,%rsp
   40007:	48 89 e5             	mov    %rsp,%rbp
   4000a:	6a 00                	push   $0x0
   4000c:	9d                   	popf
   4000d:	3d 02 b0 ad 2b       	cmp    $0x2badb002,%eax
   40012:	75 0d                	jne    40021 <_kernel_start+0x21>
   40014:	f7 03 04 00 00 00    	testl  $0x4,(%rbx)
   4001a:	74 05                	je     40021 <_kernel_start+0x21>
   4001c:	8b 7b 10             	mov    0x10(%rbx),%edi
   4001f:	eb 07                	jmp    40028 <_kernel_start+0x28>
   40021:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
   40028:	e9 3c 0e 00 00       	jmp    40e69 <kernel(char const*)>

000000000004002d <exception_entry_0>:
   4002d:	6a 00                	push   $0x0
   4002f:	6a 00                	push   $0x0
   40031:	e9 3c 0a 00 00       	jmp    40a72 <exception_entry>

0000000000040036 <exception_entry_1>:
   40036:	6a 00                	push   $0x0
   40038:	6a 01                	push   $0x1
   4003a:	e9 33 0a 00 00       	jmp    40a72 <exception_entry>

000000000004003f <exception_entry_2>:
   4003f:	6a 00                	push   $0x0
   40041:	6a 02                	push   $0x2
   40043:	e9 2a 0a 00 00       	jmp    40a72 <exception_entry>

0000000000040048 <exception_entry_3>:
   40048:	6a 00                	push   $0x0
   4004a:	6a 03                	push   $0x3
   4004c:	e9 21 0a 00 00       	jmp    40a72 <exception_entry>

0000000000040051 <exception_entry_4>:
   40051:	6a 00                	push   $0x0
   40053:	6a 04                	push   $0x4
   40055:	e9 18 0a 00 00       	jmp    40a72 <exception_entry>

000000000004005a <exception_entry_5>:
   4005a:	6a 00                	push   $0x0
   4005c:	6a 05                	push   $0x5
   4005e:	e9 0f 0a 00 00       	jmp    40a72 <exception_entry>

0000000000040063 <exception_entry_6>:
   40063:	6a 00                	push   $0x0
   40065:	6a 06                	push   $0x6
   40067:	e9 06 0a 00 00       	jmp    40a72 <exception_entry>

000000000004006c <exception_entry_7>:
   4006c:	6a 00                	push   $0x0
   4006e:	6a 07                	push   $0x7
   40070:	e9 fd 09 00 00       	jmp    40a72 <exception_entry>

0000000000040075 <exception_entry_8>:
   40075:	6a 08                	push   $0x8
   40077:	e9 f6 09 00 00       	jmp    40a72 <exception_entry>

000000000004007c <exception_entry_9>:
   4007c:	6a 00                	push   $0x0
   4007e:	6a 09                	push   $0x9
   40080:	e9 ed 09 00 00       	jmp    40a72 <exception_entry>

0000000000040085 <exception_entry_10>:
   40085:	6a 0a                	push   $0xa
   40087:	e9 e6 09 00 00       	jmp    40a72 <exception_entry>

000000000004008c <exception_entry_11>:
   4008c:	6a 0b                	push   $0xb
   4008e:	e9 df 09 00 00       	jmp    40a72 <exception_entry>

0000000000040093 <exception_entry_12>:
   40093:	6a 0c                	push   $0xc
   40095:	e9 d8 09 00 00       	jmp    40a72 <exception_entry>

000000000004009a <exception_entry_13>:
   4009a:	6a 0d                	push   $0xd
   4009c:	e9 d1 09 00 00       	jmp    40a72 <exception_entry>

00000000000400a1 <exception_entry_14>:
   400a1:	6a 0e                	push   $0xe
   400a3:	e9 ca 09 00 00       	jmp    40a72 <exception_entry>

00000000000400a8 <exception_entry_15>:
   400a8:	6a 00                	push   $0x0
   400aa:	6a 0f                	push   $0xf
   400ac:	e9 c1 09 00 00       	jmp    40a72 <exception_entry>

00000000000400b1 <exception_entry_16>:
   400b1:	6a 00                	push   $0x0
   400b3:	6a 10                	push   $0x10
   400b5:	e9 b8 09 00 00       	jmp    40a72 <exception_entry>

00000000000400ba <exception_entry_17>:
   400ba:	6a 11                	push   $0x11
   400bc:	e9 b1 09 00 00       	jmp    40a72 <exception_entry>

00000000000400c1 <exception_entry_18>:
   400c1:	6a 00                	push   $0x0
   400c3:	6a 12                	push   $0x12
   400c5:	e9 a8 09 00 00       	jmp    40a72 <exception_entry>

00000000000400ca <exception_entry_19>:
   400ca:	6a 00                	push   $0x0
   400cc:	6a 13                	push   $0x13
   400ce:	e9 9f 09 00 00       	jmp    40a72 <exception_entry>

00000000000400d3 <exception_entry_20>:
   400d3:	6a 00                	push   $0x0
   400d5:	6a 14                	push   $0x14
   400d7:	e9 96 09 00 00       	jmp    40a72 <exception_entry>

00000000000400dc <exception_entry_21>:
   400dc:	6a 00                	push   $0x0
   400de:	6a 15                	push   $0x15
   400e0:	e9 8d 09 00 00       	jmp    40a72 <exception_entry>

00000000000400e5 <exception_entry_22>:
   400e5:	6a 00                	push   $0x0
   400e7:	6a 16                	push   $0x16
   400e9:	e9 84 09 00 00       	jmp    40a72 <exception_entry>

00000000000400ee <exception_entry_23>:
   400ee:	6a 00                	push   $0x0
   400f0:	6a 17                	push   $0x17
   400f2:	e9 7b 09 00 00       	jmp    40a72 <exception_entry>

00000000000400f7 <exception_entry_24>:
   400f7:	6a 00                	push   $0x0
   400f9:	6a 18                	push   $0x18
   400fb:	e9 72 09 00 00       	jmp    40a72 <exception_entry>

0000000000040100 <exception_entry_25>:
   40100:	6a 00                	push   $0x0
   40102:	6a 19                	push   $0x19
   40104:	e9 69 09 00 00       	jmp    40a72 <exception_entry>

0000000000040109 <exception_entry_26>:
   40109:	6a 00                	push   $0x0
   4010b:	6a 1a                	push   $0x1a
   4010d:	e9 60 09 00 00       	jmp    40a72 <exception_entry>

0000000000040112 <exception_entry_27>:
   40112:	6a 00                	push   $0x0
   40114:	6a 1b                	push   $0x1b
   40116:	e9 57 09 00 00       	jmp    40a72 <exception_entry>

000000000004011b <exception_entry_28>:
   4011b:	6a 00                	push   $0x0
   4011d:	6a 1c                	push   $0x1c
   4011f:	e9 4e 09 00 00       	jmp    40a72 <exception_entry>

0000000000040124 <exception_entry_29>:
   40124:	6a 00                	push   $0x0
   40126:	6a 1d                	push   $0x1d
   40128:	e9 45 09 00 00       	jmp    40a72 <exception_entry>

000000000004012d <exception_entry_30>:
   4012d:	6a 00                	push   $0x0
   4012f:	6a 1e                	push   $0x1e
   40131:	e9 3c 09 00 00       	jmp    40a72 <exception_entry>

0000000000040136 <exception_entry_31>:
   40136:	6a 00                	push   $0x0
   40138:	6a 1f                	push   $0x1f
   4013a:	e9 33 09 00 00       	jmp    40a72 <exception_entry>

000000000004013f <exception_entry_32>:
   4013f:	6a 00                	push   $0x0
   40141:	6a 20                	push   $0x20
   40143:	e9 2a 09 00 00       	jmp    40a72 <exception_entry>

0000000000040148 <exception_entry_33>:
   40148:	6a 00                	push   $0x0
   4014a:	6a 21                	push   $0x21
   4014c:	e9 21 09 00 00       	jmp    40a72 <exception_entry>

0000000000040151 <exception_entry_34>:
   40151:	6a 00                	push   $0x0
   40153:	6a 22                	push   $0x22
   40155:	e9 18 09 00 00       	jmp    40a72 <exception_entry>

000000000004015a <exception_entry_35>:
   4015a:	6a 00                	push   $0x0
   4015c:	6a 23                	push   $0x23
   4015e:	e9 0f 09 00 00       	jmp    40a72 <exception_entry>

0000000000040163 <exception_entry_36>:
   40163:	6a 00                	push   $0x0
   40165:	6a 24                	push   $0x24
   40167:	e9 06 09 00 00       	jmp    40a72 <exception_entry>

000000000004016c <exception_entry_37>:
   4016c:	6a 00                	push   $0x0
   4016e:	6a 25                	push   $0x25
   40170:	e9 fd 08 00 00       	jmp    40a72 <exception_entry>

0000000000040175 <exception_entry_38>:
   40175:	6a 00                	push   $0x0
   40177:	6a 26                	push   $0x26
   40179:	e9 f4 08 00 00       	jmp    40a72 <exception_entry>

000000000004017e <exception_entry_39>:
   4017e:	6a 00                	push   $0x0
   40180:	6a 27                	push   $0x27
   40182:	e9 eb 08 00 00       	jmp    40a72 <exception_entry>

0000000000040187 <exception_entry_40>:
   40187:	6a 00                	push   $0x0
   40189:	6a 28                	push   $0x28
   4018b:	e9 e2 08 00 00       	jmp    40a72 <exception_entry>

0000000000040190 <exception_entry_41>:
   40190:	6a 00                	push   $0x0
   40192:	6a 29                	push   $0x29
   40194:	e9 d9 08 00 00       	jmp    40a72 <exception_entry>

0000000000040199 <exception_entry_42>:
   40199:	6a 00                	push   $0x0
   4019b:	6a 2a                	push   $0x2a
   4019d:	e9 d0 08 00 00       	jmp    40a72 <exception_entry>

00000000000401a2 <exception_entry_43>:
   401a2:	6a 00                	push   $0x0
   401a4:	6a 2b                	push   $0x2b
   401a6:	e9 c7 08 00 00       	jmp    40a72 <exception_entry>

00000000000401ab <exception_entry_44>:
   401ab:	6a 00                	push   $0x0
   401ad:	6a 2c                	push   $0x2c
   401af:	e9 be 08 00 00       	jmp    40a72 <exception_entry>

00000000000401b4 <exception_entry_45>:
   401b4:	6a 00                	push   $0x0
   401b6:	6a 2d                	push   $0x2d
   401b8:	e9 b5 08 00 00       	jmp    40a72 <exception_entry>

00000000000401bd <exception_entry_46>:
   401bd:	6a 00                	push   $0x0
   401bf:	6a 2e                	push   $0x2e
   401c1:	e9 ac 08 00 00       	jmp    40a72 <exception_entry>

00000000000401c6 <exception_entry_47>:
   401c6:	6a 00                	push   $0x0
   401c8:	6a 2f                	push   $0x2f
   401ca:	e9 a3 08 00 00       	jmp    40a72 <exception_entry>

00000000000401cf <exception_entry_48>:
   401cf:	6a 00                	push   $0x0
   401d1:	6a 30                	push   $0x30
   401d3:	e9 9a 08 00 00       	jmp    40a72 <exception_entry>

00000000000401d8 <exception_entry_49>:
   401d8:	6a 00                	push   $0x0
   401da:	6a 31                	push   $0x31
   401dc:	e9 91 08 00 00       	jmp    40a72 <exception_entry>

00000000000401e1 <exception_entry_50>:
   401e1:	6a 00                	push   $0x0
   401e3:	6a 32                	push   $0x32
   401e5:	e9 88 08 00 00       	jmp    40a72 <exception_entry>

00000000000401ea <exception_entry_51>:
   401ea:	6a 00                	push   $0x0
   401ec:	6a 33                	push   $0x33
   401ee:	e9 7f 08 00 00       	jmp    40a72 <exception_entry>

00000000000401f3 <exception_entry_52>:
   401f3:	6a 00                	push   $0x0
   401f5:	6a 34                	push   $0x34
   401f7:	e9 76 08 00 00       	jmp    40a72 <exception_entry>

00000000000401fc <exception_entry_53>:
   401fc:	6a 00                	push   $0x0
   401fe:	6a 35                	push   $0x35
   40200:	e9 6d 08 00 00       	jmp    40a72 <exception_entry>

0000000000040205 <exception_entry_54>:
   40205:	6a 00                	push   $0x0
   40207:	6a 36                	push   $0x36
   40209:	e9 64 08 00 00       	jmp    40a72 <exception_entry>

000000000004020e <exception_entry_55>:
   4020e:	6a 00                	push   $0x0
   40210:	6a 37                	push   $0x37
   40212:	e9 5b 08 00 00       	jmp    40a72 <exception_entry>

0000000000040217 <exception_entry_56>:
   40217:	6a 00                	push   $0x0
   40219:	6a 38                	push   $0x38
   4021b:	e9 52 08 00 00       	jmp    40a72 <exception_entry>

0000000000040220 <exception_entry_57>:
   40220:	6a 00                	push   $0x0
   40222:	6a 39                	push   $0x39
   40224:	e9 49 08 00 00       	jmp    40a72 <exception_entry>

0000000000040229 <exception_entry_58>:
   40229:	6a 00                	push   $0x0
   4022b:	6a 3a                	push   $0x3a
   4022d:	e9 40 08 00 00       	jmp    40a72 <exception_entry>

0000000000040232 <exception_entry_59>:
   40232:	6a 00                	push   $0x0
   40234:	6a 3b                	push   $0x3b
   40236:	e9 37 08 00 00       	jmp    40a72 <exception_entry>

000000000004023b <exception_entry_60>:
   4023b:	6a 00                	push   $0x0
   4023d:	6a 3c                	push   $0x3c
   4023f:	e9 2e 08 00 00       	jmp    40a72 <exception_entry>

0000000000040244 <exception_entry_61>:
   40244:	6a 00                	push   $0x0
   40246:	6a 3d                	push   $0x3d
   40248:	e9 25 08 00 00       	jmp    40a72 <exception_entry>

000000000004024d <exception_entry_62>:
   4024d:	6a 00                	push   $0x0
   4024f:	6a 3e                	push   $0x3e
   40251:	e9 1c 08 00 00       	jmp    40a72 <exception_entry>

0000000000040256 <exception_entry_63>:
   40256:	6a 00                	push   $0x0
   40258:	6a 3f                	push   $0x3f
   4025a:	e9 13 08 00 00       	jmp    40a72 <exception_entry>

000000000004025f <exception_entry_64>:
   4025f:	6a 00                	push   $0x0
   40261:	6a 40                	push   $0x40
   40263:	e9 0a 08 00 00       	jmp    40a72 <exception_entry>

0000000000040268 <exception_entry_65>:
   40268:	6a 00                	push   $0x0
   4026a:	6a 41                	push   $0x41
   4026c:	e9 01 08 00 00       	jmp    40a72 <exception_entry>

0000000000040271 <exception_entry_66>:
   40271:	6a 00                	push   $0x0
   40273:	6a 42                	push   $0x42
   40275:	e9 f8 07 00 00       	jmp    40a72 <exception_entry>

000000000004027a <exception_entry_67>:
   4027a:	6a 00                	push   $0x0
   4027c:	6a 43                	push   $0x43
   4027e:	e9 ef 07 00 00       	jmp    40a72 <exception_entry>

0000000000040283 <exception_entry_68>:
   40283:	6a 00                	push   $0x0
   40285:	6a 44                	push   $0x44
   40287:	e9 e6 07 00 00       	jmp    40a72 <exception_entry>

000000000004028c <exception_entry_69>:
   4028c:	6a 00                	push   $0x0
   4028e:	6a 45                	push   $0x45
   40290:	e9 dd 07 00 00       	jmp    40a72 <exception_entry>

0000000000040295 <exception_entry_70>:
   40295:	6a 00                	push   $0x0
   40297:	6a 46                	push   $0x46
   40299:	e9 d4 07 00 00       	jmp    40a72 <exception_entry>

000000000004029e <exception_entry_71>:
   4029e:	6a 00                	push   $0x0
   402a0:	6a 47                	push   $0x47
   402a2:	e9 cb 07 00 00       	jmp    40a72 <exception_entry>

00000000000402a7 <exception_entry_72>:
   402a7:	6a 00                	push   $0x0
   402a9:	6a 48                	push   $0x48
   402ab:	e9 c2 07 00 00       	jmp    40a72 <exception_entry>

00000000000402b0 <exception_entry_73>:
   402b0:	6a 00                	push   $0x0
   402b2:	6a 49                	push   $0x49
   402b4:	e9 b9 07 00 00       	jmp    40a72 <exception_entry>

00000000000402b9 <exception_entry_74>:
   402b9:	6a 00                	push   $0x0
   402bb:	6a 4a                	push   $0x4a
   402bd:	e9 b0 07 00 00       	jmp    40a72 <exception_entry>

00000000000402c2 <exception_entry_75>:
   402c2:	6a 00                	push   $0x0
   402c4:	6a 4b                	push   $0x4b
   402c6:	e9 a7 07 00 00       	jmp    40a72 <exception_entry>

00000000000402cb <exception_entry_76>:
   402cb:	6a 00                	push   $0x0
   402cd:	6a 4c                	push   $0x4c
   402cf:	e9 9e 07 00 00       	jmp    40a72 <exception_entry>

00000000000402d4 <exception_entry_77>:
   402d4:	6a 00                	push   $0x0
   402d6:	6a 4d                	push   $0x4d
   402d8:	e9 95 07 00 00       	jmp    40a72 <exception_entry>

00000000000402dd <exception_entry_78>:
   402dd:	6a 00                	push   $0x0
   402df:	6a 4e                	push   $0x4e
   402e1:	e9 8c 07 00 00       	jmp    40a72 <exception_entry>

00000000000402e6 <exception_entry_79>:
   402e6:	6a 00                	push   $0x0
   402e8:	6a 4f                	push   $0x4f
   402ea:	e9 83 07 00 00       	jmp    40a72 <exception_entry>

00000000000402ef <exception_entry_80>:
   402ef:	6a 00                	push   $0x0
   402f1:	6a 50                	push   $0x50
   402f3:	e9 7a 07 00 00       	jmp    40a72 <exception_entry>

00000000000402f8 <exception_entry_81>:
   402f8:	6a 00                	push   $0x0
   402fa:	6a 51                	push   $0x51
   402fc:	e9 71 07 00 00       	jmp    40a72 <exception_entry>

0000000000040301 <exception_entry_82>:
   40301:	6a 00                	push   $0x0
   40303:	6a 52                	push   $0x52
   40305:	e9 68 07 00 00       	jmp    40a72 <exception_entry>

000000000004030a <exception_entry_83>:
   4030a:	6a 00                	push   $0x0
   4030c:	6a 53                	push   $0x53
   4030e:	e9 5f 07 00 00       	jmp    40a72 <exception_entry>

0000000000040313 <exception_entry_84>:
   40313:	6a 00                	push   $0x0
   40315:	6a 54                	push   $0x54
   40317:	e9 56 07 00 00       	jmp    40a72 <exception_entry>

000000000004031c <exception_entry_85>:
   4031c:	6a 00                	push   $0x0
   4031e:	6a 55                	push   $0x55
   40320:	e9 4d 07 00 00       	jmp    40a72 <exception_entry>

0000000000040325 <exception_entry_86>:
   40325:	6a 00                	push   $0x0
   40327:	6a 56                	push   $0x56
   40329:	e9 44 07 00 00       	jmp    40a72 <exception_entry>

000000000004032e <exception_entry_87>:
   4032e:	6a 00                	push   $0x0
   40330:	6a 57                	push   $0x57
   40332:	e9 3b 07 00 00       	jmp    40a72 <exception_entry>

0000000000040337 <exception_entry_88>:
   40337:	6a 00                	push   $0x0
   40339:	6a 58                	push   $0x58
   4033b:	e9 32 07 00 00       	jmp    40a72 <exception_entry>

0000000000040340 <exception_entry_89>:
   40340:	6a 00                	push   $0x0
   40342:	6a 59                	push   $0x59
   40344:	e9 29 07 00 00       	jmp    40a72 <exception_entry>

0000000000040349 <exception_entry_90>:
   40349:	6a 00                	push   $0x0
   4034b:	6a 5a                	push   $0x5a
   4034d:	e9 20 07 00 00       	jmp    40a72 <exception_entry>

0000000000040352 <exception_entry_91>:
   40352:	6a 00                	push   $0x0
   40354:	6a 5b                	push   $0x5b
   40356:	e9 17 07 00 00       	jmp    40a72 <exception_entry>

000000000004035b <exception_entry_92>:
   4035b:	6a 00                	push   $0x0
   4035d:	6a 5c                	push   $0x5c
   4035f:	e9 0e 07 00 00       	jmp    40a72 <exception_entry>

0000000000040364 <exception_entry_93>:
   40364:	6a 00                	push   $0x0
   40366:	6a 5d                	push   $0x5d
   40368:	e9 05 07 00 00       	jmp    40a72 <exception_entry>

000000000004036d <exception_entry_94>:
   4036d:	6a 00                	push   $0x0
   4036f:	6a 5e                	push   $0x5e
   40371:	e9 fc 06 00 00       	jmp    40a72 <exception_entry>

0000000000040376 <exception_entry_95>:
   40376:	6a 00                	push   $0x0
   40378:	6a 5f                	push   $0x5f
   4037a:	e9 f3 06 00 00       	jmp    40a72 <exception_entry>

000000000004037f <exception_entry_96>:
   4037f:	6a 00                	push   $0x0
   40381:	6a 60                	push   $0x60
   40383:	e9 ea 06 00 00       	jmp    40a72 <exception_entry>

0000000000040388 <exception_entry_97>:
   40388:	6a 00                	push   $0x0
   4038a:	6a 61                	push   $0x61
   4038c:	e9 e1 06 00 00       	jmp    40a72 <exception_entry>

0000000000040391 <exception_entry_98>:
   40391:	6a 00                	push   $0x0
   40393:	6a 62                	push   $0x62
   40395:	e9 d8 06 00 00       	jmp    40a72 <exception_entry>

000000000004039a <exception_entry_99>:
   4039a:	6a 00                	push   $0x0
   4039c:	6a 63                	push   $0x63
   4039e:	e9 cf 06 00 00       	jmp    40a72 <exception_entry>

00000000000403a3 <exception_entry_100>:
   403a3:	6a 00                	push   $0x0
   403a5:	6a 64                	push   $0x64
   403a7:	e9 c6 06 00 00       	jmp    40a72 <exception_entry>

00000000000403ac <exception_entry_101>:
   403ac:	6a 00                	push   $0x0
   403ae:	6a 65                	push   $0x65
   403b0:	e9 bd 06 00 00       	jmp    40a72 <exception_entry>

00000000000403b5 <exception_entry_102>:
   403b5:	6a 00                	push   $0x0
   403b7:	6a 66                	push   $0x66
   403b9:	e9 b4 06 00 00       	jmp    40a72 <exception_entry>

00000000000403be <exception_entry_103>:
   403be:	6a 00                	push   $0x0
   403c0:	6a 67                	push   $0x67
   403c2:	e9 ab 06 00 00       	jmp    40a72 <exception_entry>

00000000000403c7 <exception_entry_104>:
   403c7:	6a 00                	push   $0x0
   403c9:	6a 68                	push   $0x68
   403cb:	e9 a2 06 00 00       	jmp    40a72 <exception_entry>

00000000000403d0 <exception_entry_105>:
   403d0:	6a 00                	push   $0x0
   403d2:	6a 69                	push   $0x69
   403d4:	e9 99 06 00 00       	jmp    40a72 <exception_entry>

00000000000403d9 <exception_entry_106>:
   403d9:	6a 00                	push   $0x0
   403db:	6a 6a                	push   $0x6a
   403dd:	e9 90 06 00 00       	jmp    40a72 <exception_entry>

00000000000403e2 <exception_entry_107>:
   403e2:	6a 00                	push   $0x0
   403e4:	6a 6b                	push   $0x6b
   403e6:	e9 87 06 00 00       	jmp    40a72 <exception_entry>

00000000000403eb <exception_entry_108>:
   403eb:	6a 00                	push   $0x0
   403ed:	6a 6c                	push   $0x6c
   403ef:	e9 7e 06 00 00       	jmp    40a72 <exception_entry>

00000000000403f4 <exception_entry_109>:
   403f4:	6a 00                	push   $0x0
   403f6:	6a 6d                	push   $0x6d
   403f8:	e9 75 06 00 00       	jmp    40a72 <exception_entry>

00000000000403fd <exception_entry_110>:
   403fd:	6a 00                	push   $0x0
   403ff:	6a 6e                	push   $0x6e
   40401:	e9 6c 06 00 00       	jmp    40a72 <exception_entry>

0000000000040406 <exception_entry_111>:
   40406:	6a 00                	push   $0x0
   40408:	6a 6f                	push   $0x6f
   4040a:	e9 63 06 00 00       	jmp    40a72 <exception_entry>

000000000004040f <exception_entry_112>:
   4040f:	6a 00                	push   $0x0
   40411:	6a 70                	push   $0x70
   40413:	e9 5a 06 00 00       	jmp    40a72 <exception_entry>

0000000000040418 <exception_entry_113>:
   40418:	6a 00                	push   $0x0
   4041a:	6a 71                	push   $0x71
   4041c:	e9 51 06 00 00       	jmp    40a72 <exception_entry>

0000000000040421 <exception_entry_114>:
   40421:	6a 00                	push   $0x0
   40423:	6a 72                	push   $0x72
   40425:	e9 48 06 00 00       	jmp    40a72 <exception_entry>

000000000004042a <exception_entry_115>:
   4042a:	6a 00                	push   $0x0
   4042c:	6a 73                	push   $0x73
   4042e:	e9 3f 06 00 00       	jmp    40a72 <exception_entry>

0000000000040433 <exception_entry_116>:
   40433:	6a 00                	push   $0x0
   40435:	6a 74                	push   $0x74
   40437:	e9 36 06 00 00       	jmp    40a72 <exception_entry>

000000000004043c <exception_entry_117>:
   4043c:	6a 00                	push   $0x0
   4043e:	6a 75                	push   $0x75
   40440:	e9 2d 06 00 00       	jmp    40a72 <exception_entry>

0000000000040445 <exception_entry_118>:
   40445:	6a 00                	push   $0x0
   40447:	6a 76                	push   $0x76
   40449:	e9 24 06 00 00       	jmp    40a72 <exception_entry>

000000000004044e <exception_entry_119>:
   4044e:	6a 00                	push   $0x0
   40450:	6a 77                	push   $0x77
   40452:	e9 1b 06 00 00       	jmp    40a72 <exception_entry>

0000000000040457 <exception_entry_120>:
   40457:	6a 00                	push   $0x0
   40459:	6a 78                	push   $0x78
   4045b:	e9 12 06 00 00       	jmp    40a72 <exception_entry>

0000000000040460 <exception_entry_121>:
   40460:	6a 00                	push   $0x0
   40462:	6a 79                	push   $0x79
   40464:	e9 09 06 00 00       	jmp    40a72 <exception_entry>

0000000000040469 <exception_entry_122>:
   40469:	6a 00                	push   $0x0
   4046b:	6a 7a                	push   $0x7a
   4046d:	e9 00 06 00 00       	jmp    40a72 <exception_entry>

0000000000040472 <exception_entry_123>:
   40472:	6a 00                	push   $0x0
   40474:	6a 7b                	push   $0x7b
   40476:	e9 f7 05 00 00       	jmp    40a72 <exception_entry>

000000000004047b <exception_entry_124>:
   4047b:	6a 00                	push   $0x0
   4047d:	6a 7c                	push   $0x7c
   4047f:	e9 ee 05 00 00       	jmp    40a72 <exception_entry>

0000000000040484 <exception_entry_125>:
   40484:	6a 00                	push   $0x0
   40486:	6a 7d                	push   $0x7d
   40488:	e9 e5 05 00 00       	jmp    40a72 <exception_entry>

000000000004048d <exception_entry_126>:
   4048d:	6a 00                	push   $0x0
   4048f:	6a 7e                	push   $0x7e
   40491:	e9 dc 05 00 00       	jmp    40a72 <exception_entry>

0000000000040496 <exception_entry_127>:
   40496:	6a 00                	push   $0x0
   40498:	6a 7f                	push   $0x7f
   4049a:	e9 d3 05 00 00       	jmp    40a72 <exception_entry>

000000000004049f <exception_entry_128>:
   4049f:	6a 00                	push   $0x0
   404a1:	68 80 00 00 00       	push   $0x80
   404a6:	e9 c7 05 00 00       	jmp    40a72 <exception_entry>

00000000000404ab <exception_entry_129>:
   404ab:	6a 00                	push   $0x0
   404ad:	68 81 00 00 00       	push   $0x81
   404b2:	e9 bb 05 00 00       	jmp    40a72 <exception_entry>

00000000000404b7 <exception_entry_130>:
   404b7:	6a 00                	push   $0x0
   404b9:	68 82 00 00 00       	push   $0x82
   404be:	e9 af 05 00 00       	jmp    40a72 <exception_entry>

00000000000404c3 <exception_entry_131>:
   404c3:	6a 00                	push   $0x0
   404c5:	68 83 00 00 00       	push   $0x83
   404ca:	e9 a3 05 00 00       	jmp    40a72 <exception_entry>

00000000000404cf <exception_entry_132>:
   404cf:	6a 00                	push   $0x0
   404d1:	68 84 00 00 00       	push   $0x84
   404d6:	e9 97 05 00 00       	jmp    40a72 <exception_entry>

00000000000404db <exception_entry_133>:
   404db:	6a 00                	push   $0x0
   404dd:	68 85 00 00 00       	push   $0x85
   404e2:	e9 8b 05 00 00       	jmp    40a72 <exception_entry>

00000000000404e7 <exception_entry_134>:
   404e7:	6a 00                	push   $0x0
   404e9:	68 86 00 00 00       	push   $0x86
   404ee:	e9 7f 05 00 00       	jmp    40a72 <exception_entry>

00000000000404f3 <exception_entry_135>:
   404f3:	6a 00                	push   $0x0
   404f5:	68 87 00 00 00       	push   $0x87
   404fa:	e9 73 05 00 00       	jmp    40a72 <exception_entry>

00000000000404ff <exception_entry_136>:
   404ff:	6a 00                	push   $0x0
   40501:	68 88 00 00 00       	push   $0x88
   40506:	e9 67 05 00 00       	jmp    40a72 <exception_entry>

000000000004050b <exception_entry_137>:
   4050b:	6a 00                	push   $0x0
   4050d:	68 89 00 00 00       	push   $0x89
   40512:	e9 5b 05 00 00       	jmp    40a72 <exception_entry>

0000000000040517 <exception_entry_138>:
   40517:	6a 00                	push   $0x0
   40519:	68 8a 00 00 00       	push   $0x8a
   4051e:	e9 4f 05 00 00       	jmp    40a72 <exception_entry>

0000000000040523 <exception_entry_139>:
   40523:	6a 00                	push   $0x0
   40525:	68 8b 00 00 00       	push   $0x8b
   4052a:	e9 43 05 00 00       	jmp    40a72 <exception_entry>

000000000004052f <exception_entry_140>:
   4052f:	6a 00                	push   $0x0
   40531:	68 8c 00 00 00       	push   $0x8c
   40536:	e9 37 05 00 00       	jmp    40a72 <exception_entry>

000000000004053b <exception_entry_141>:
   4053b:	6a 00                	push   $0x0
   4053d:	68 8d 00 00 00       	push   $0x8d
   40542:	e9 2b 05 00 00       	jmp    40a72 <exception_entry>

0000000000040547 <exception_entry_142>:
   40547:	6a 00                	push   $0x0
   40549:	68 8e 00 00 00       	push   $0x8e
   4054e:	e9 1f 05 00 00       	jmp    40a72 <exception_entry>

0000000000040553 <exception_entry_143>:
   40553:	6a 00                	push   $0x0
   40555:	68 8f 00 00 00       	push   $0x8f
   4055a:	e9 13 05 00 00       	jmp    40a72 <exception_entry>

000000000004055f <exception_entry_144>:
   4055f:	6a 00                	push   $0x0
   40561:	68 90 00 00 00       	push   $0x90
   40566:	e9 07 05 00 00       	jmp    40a72 <exception_entry>

000000000004056b <exception_entry_145>:
   4056b:	6a 00                	push   $0x0
   4056d:	68 91 00 00 00       	push   $0x91
   40572:	e9 fb 04 00 00       	jmp    40a72 <exception_entry>

0000000000040577 <exception_entry_146>:
   40577:	6a 00                	push   $0x0
   40579:	68 92 00 00 00       	push   $0x92
   4057e:	e9 ef 04 00 00       	jmp    40a72 <exception_entry>

0000000000040583 <exception_entry_147>:
   40583:	6a 00                	push   $0x0
   40585:	68 93 00 00 00       	push   $0x93
   4058a:	e9 e3 04 00 00       	jmp    40a72 <exception_entry>

000000000004058f <exception_entry_148>:
   4058f:	6a 00                	push   $0x0
   40591:	68 94 00 00 00       	push   $0x94
   40596:	e9 d7 04 00 00       	jmp    40a72 <exception_entry>

000000000004059b <exception_entry_149>:
   4059b:	6a 00                	push   $0x0
   4059d:	68 95 00 00 00       	push   $0x95
   405a2:	e9 cb 04 00 00       	jmp    40a72 <exception_entry>

00000000000405a7 <exception_entry_150>:
   405a7:	6a 00                	push   $0x0
   405a9:	68 96 00 00 00       	push   $0x96
   405ae:	e9 bf 04 00 00       	jmp    40a72 <exception_entry>

00000000000405b3 <exception_entry_151>:
   405b3:	6a 00                	push   $0x0
   405b5:	68 97 00 00 00       	push   $0x97
   405ba:	e9 b3 04 00 00       	jmp    40a72 <exception_entry>

00000000000405bf <exception_entry_152>:
   405bf:	6a 00                	push   $0x0
   405c1:	68 98 00 00 00       	push   $0x98
   405c6:	e9 a7 04 00 00       	jmp    40a72 <exception_entry>

00000000000405cb <exception_entry_153>:
   405cb:	6a 00                	push   $0x0
   405cd:	68 99 00 00 00       	push   $0x99
   405d2:	e9 9b 04 00 00       	jmp    40a72 <exception_entry>

00000000000405d7 <exception_entry_154>:
   405d7:	6a 00                	push   $0x0
   405d9:	68 9a 00 00 00       	push   $0x9a
   405de:	e9 8f 04 00 00       	jmp    40a72 <exception_entry>

00000000000405e3 <exception_entry_155>:
   405e3:	6a 00                	push   $0x0
   405e5:	68 9b 00 00 00       	push   $0x9b
   405ea:	e9 83 04 00 00       	jmp    40a72 <exception_entry>

00000000000405ef <exception_entry_156>:
   405ef:	6a 00                	push   $0x0
   405f1:	68 9c 00 00 00       	push   $0x9c
   405f6:	e9 77 04 00 00       	jmp    40a72 <exception_entry>

00000000000405fb <exception_entry_157>:
   405fb:	6a 00                	push   $0x0
   405fd:	68 9d 00 00 00       	push   $0x9d
   40602:	e9 6b 04 00 00       	jmp    40a72 <exception_entry>

0000000000040607 <exception_entry_158>:
   40607:	6a 00                	push   $0x0
   40609:	68 9e 00 00 00       	push   $0x9e
   4060e:	e9 5f 04 00 00       	jmp    40a72 <exception_entry>

0000000000040613 <exception_entry_159>:
   40613:	6a 00                	push   $0x0
   40615:	68 9f 00 00 00       	push   $0x9f
   4061a:	e9 53 04 00 00       	jmp    40a72 <exception_entry>

000000000004061f <exception_entry_160>:
   4061f:	6a 00                	push   $0x0
   40621:	68 a0 00 00 00       	push   $0xa0
   40626:	e9 47 04 00 00       	jmp    40a72 <exception_entry>

000000000004062b <exception_entry_161>:
   4062b:	6a 00                	push   $0x0
   4062d:	68 a1 00 00 00       	push   $0xa1
   40632:	e9 3b 04 00 00       	jmp    40a72 <exception_entry>

0000000000040637 <exception_entry_162>:
   40637:	6a 00                	push   $0x0
   40639:	68 a2 00 00 00       	push   $0xa2
   4063e:	e9 2f 04 00 00       	jmp    40a72 <exception_entry>

0000000000040643 <exception_entry_163>:
   40643:	6a 00                	push   $0x0
   40645:	68 a3 00 00 00       	push   $0xa3
   4064a:	e9 23 04 00 00       	jmp    40a72 <exception_entry>

000000000004064f <exception_entry_164>:
   4064f:	6a 00                	push   $0x0
   40651:	68 a4 00 00 00       	push   $0xa4
   40656:	e9 17 04 00 00       	jmp    40a72 <exception_entry>

000000000004065b <exception_entry_165>:
   4065b:	6a 00                	push   $0x0
   4065d:	68 a5 00 00 00       	push   $0xa5
   40662:	e9 0b 04 00 00       	jmp    40a72 <exception_entry>

0000000000040667 <exception_entry_166>:
   40667:	6a 00                	push   $0x0
   40669:	68 a6 00 00 00       	push   $0xa6
   4066e:	e9 ff 03 00 00       	jmp    40a72 <exception_entry>

0000000000040673 <exception_entry_167>:
   40673:	6a 00                	push   $0x0
   40675:	68 a7 00 00 00       	push   $0xa7
   4067a:	e9 f3 03 00 00       	jmp    40a72 <exception_entry>

000000000004067f <exception_entry_168>:
   4067f:	6a 00                	push   $0x0
   40681:	68 a8 00 00 00       	push   $0xa8
   40686:	e9 e7 03 00 00       	jmp    40a72 <exception_entry>

000000000004068b <exception_entry_169>:
   4068b:	6a 00                	push   $0x0
   4068d:	68 a9 00 00 00       	push   $0xa9
   40692:	e9 db 03 00 00       	jmp    40a72 <exception_entry>

0000000000040697 <exception_entry_170>:
   40697:	6a 00                	push   $0x0
   40699:	68 aa 00 00 00       	push   $0xaa
   4069e:	e9 cf 03 00 00       	jmp    40a72 <exception_entry>

00000000000406a3 <exception_entry_171>:
   406a3:	6a 00                	push   $0x0
   406a5:	68 ab 00 00 00       	push   $0xab
   406aa:	e9 c3 03 00 00       	jmp    40a72 <exception_entry>

00000000000406af <exception_entry_172>:
   406af:	6a 00                	push   $0x0
   406b1:	68 ac 00 00 00       	push   $0xac
   406b6:	e9 b7 03 00 00       	jmp    40a72 <exception_entry>

00000000000406bb <exception_entry_173>:
   406bb:	6a 00                	push   $0x0
   406bd:	68 ad 00 00 00       	push   $0xad
   406c2:	e9 ab 03 00 00       	jmp    40a72 <exception_entry>

00000000000406c7 <exception_entry_174>:
   406c7:	6a 00                	push   $0x0
   406c9:	68 ae 00 00 00       	push   $0xae
   406ce:	e9 9f 03 00 00       	jmp    40a72 <exception_entry>

00000000000406d3 <exception_entry_175>:
   406d3:	6a 00                	push   $0x0
   406d5:	68 af 00 00 00       	push   $0xaf
   406da:	e9 93 03 00 00       	jmp    40a72 <exception_entry>

00000000000406df <exception_entry_176>:
   406df:	6a 00                	push   $0x0
   406e1:	68 b0 00 00 00       	push   $0xb0
   406e6:	e9 87 03 00 00       	jmp    40a72 <exception_entry>

00000000000406eb <exception_entry_177>:
   406eb:	6a 00                	push   $0x0
   406ed:	68 b1 00 00 00       	push   $0xb1
   406f2:	e9 7b 03 00 00       	jmp    40a72 <exception_entry>

00000000000406f7 <exception_entry_178>:
   406f7:	6a 00                	push   $0x0
   406f9:	68 b2 00 00 00       	push   $0xb2
   406fe:	e9 6f 03 00 00       	jmp    40a72 <exception_entry>

0000000000040703 <exception_entry_179>:
   40703:	6a 00                	push   $0x0
   40705:	68 b3 00 00 00       	push   $0xb3
   4070a:	e9 63 03 00 00       	jmp    40a72 <exception_entry>

000000000004070f <exception_entry_180>:
   4070f:	6a 00                	push   $0x0
   40711:	68 b4 00 00 00       	push   $0xb4
   40716:	e9 57 03 00 00       	jmp    40a72 <exception_entry>

000000000004071b <exception_entry_181>:
   4071b:	6a 00                	push   $0x0
   4071d:	68 b5 00 00 00       	push   $0xb5
   40722:	e9 4b 03 00 00       	jmp    40a72 <exception_entry>

0000000000040727 <exception_entry_182>:
   40727:	6a 00                	push   $0x0
   40729:	68 b6 00 00 00       	push   $0xb6
   4072e:	e9 3f 03 00 00       	jmp    40a72 <exception_entry>

0000000000040733 <exception_entry_183>:
   40733:	6a 00                	push   $0x0
   40735:	68 b7 00 00 00       	push   $0xb7
   4073a:	e9 33 03 00 00       	jmp    40a72 <exception_entry>

000000000004073f <exception_entry_184>:
   4073f:	6a 00                	push   $0x0
   40741:	68 b8 00 00 00       	push   $0xb8
   40746:	e9 27 03 00 00       	jmp    40a72 <exception_entry>

000000000004074b <exception_entry_185>:
   4074b:	6a 00                	push   $0x0
   4074d:	68 b9 00 00 00       	push   $0xb9
   40752:	e9 1b 03 00 00       	jmp    40a72 <exception_entry>

0000000000040757 <exception_entry_186>:
   40757:	6a 00                	push   $0x0
   40759:	68 ba 00 00 00       	push   $0xba
   4075e:	e9 0f 03 00 00       	jmp    40a72 <exception_entry>

0000000000040763 <exception_entry_187>:
   40763:	6a 00                	push   $0x0
   40765:	68 bb 00 00 00       	push   $0xbb
   4076a:	e9 03 03 00 00       	jmp    40a72 <exception_entry>

000000000004076f <exception_entry_188>:
   4076f:	6a 00                	push   $0x0
   40771:	68 bc 00 00 00       	push   $0xbc
   40776:	e9 f7 02 00 00       	jmp    40a72 <exception_entry>

000000000004077b <exception_entry_189>:
   4077b:	6a 00                	push   $0x0
   4077d:	68 bd 00 00 00       	push   $0xbd
   40782:	e9 eb 02 00 00       	jmp    40a72 <exception_entry>

0000000000040787 <exception_entry_190>:
   40787:	6a 00                	push   $0x0
   40789:	68 be 00 00 00       	push   $0xbe
   4078e:	e9 df 02 00 00       	jmp    40a72 <exception_entry>

0000000000040793 <exception_entry_191>:
   40793:	6a 00                	push   $0x0
   40795:	68 bf 00 00 00       	push   $0xbf
   4079a:	e9 d3 02 00 00       	jmp    40a72 <exception_entry>

000000000004079f <exception_entry_192>:
   4079f:	6a 00                	push   $0x0
   407a1:	68 c0 00 00 00       	push   $0xc0
   407a6:	e9 c7 02 00 00       	jmp    40a72 <exception_entry>

00000000000407ab <exception_entry_193>:
   407ab:	6a 00                	push   $0x0
   407ad:	68 c1 00 00 00       	push   $0xc1
   407b2:	e9 bb 02 00 00       	jmp    40a72 <exception_entry>

00000000000407b7 <exception_entry_194>:
   407b7:	6a 00                	push   $0x0
   407b9:	68 c2 00 00 00       	push   $0xc2
   407be:	e9 af 02 00 00       	jmp    40a72 <exception_entry>

00000000000407c3 <exception_entry_195>:
   407c3:	6a 00                	push   $0x0
   407c5:	68 c3 00 00 00       	push   $0xc3
   407ca:	e9 a3 02 00 00       	jmp    40a72 <exception_entry>

00000000000407cf <exception_entry_196>:
   407cf:	6a 00                	push   $0x0
   407d1:	68 c4 00 00 00       	push   $0xc4
   407d6:	e9 97 02 00 00       	jmp    40a72 <exception_entry>

00000000000407db <exception_entry_197>:
   407db:	6a 00                	push   $0x0
   407dd:	68 c5 00 00 00       	push   $0xc5
   407e2:	e9 8b 02 00 00       	jmp    40a72 <exception_entry>

00000000000407e7 <exception_entry_198>:
   407e7:	6a 00                	push   $0x0
   407e9:	68 c6 00 00 00       	push   $0xc6
   407ee:	e9 7f 02 00 00       	jmp    40a72 <exception_entry>

00000000000407f3 <exception_entry_199>:
   407f3:	6a 00                	push   $0x0
   407f5:	68 c7 00 00 00       	push   $0xc7
   407fa:	e9 73 02 00 00       	jmp    40a72 <exception_entry>

00000000000407ff <exception_entry_200>:
   407ff:	6a 00                	push   $0x0
   40801:	68 c8 00 00 00       	push   $0xc8
   40806:	e9 67 02 00 00       	jmp    40a72 <exception_entry>

000000000004080b <exception_entry_201>:
   4080b:	6a 00                	push   $0x0
   4080d:	68 c9 00 00 00       	push   $0xc9
   40812:	e9 5b 02 00 00       	jmp    40a72 <exception_entry>

0000000000040817 <exception_entry_202>:
   40817:	6a 00                	push   $0x0
   40819:	68 ca 00 00 00       	push   $0xca
   4081e:	e9 4f 02 00 00       	jmp    40a72 <exception_entry>

0000000000040823 <exception_entry_203>:
   40823:	6a 00                	push   $0x0
   40825:	68 cb 00 00 00       	push   $0xcb
   4082a:	e9 43 02 00 00       	jmp    40a72 <exception_entry>

000000000004082f <exception_entry_204>:
   4082f:	6a 00                	push   $0x0
   40831:	68 cc 00 00 00       	push   $0xcc
   40836:	e9 37 02 00 00       	jmp    40a72 <exception_entry>

000000000004083b <exception_entry_205>:
   4083b:	6a 00                	push   $0x0
   4083d:	68 cd 00 00 00       	push   $0xcd
   40842:	e9 2b 02 00 00       	jmp    40a72 <exception_entry>

0000000000040847 <exception_entry_206>:
   40847:	6a 00                	push   $0x0
   40849:	68 ce 00 00 00       	push   $0xce
   4084e:	e9 1f 02 00 00       	jmp    40a72 <exception_entry>

0000000000040853 <exception_entry_207>:
   40853:	6a 00                	push   $0x0
   40855:	68 cf 00 00 00       	push   $0xcf
   4085a:	e9 13 02 00 00       	jmp    40a72 <exception_entry>

000000000004085f <exception_entry_208>:
   4085f:	6a 00                	push   $0x0
   40861:	68 d0 00 00 00       	push   $0xd0
   40866:	e9 07 02 00 00       	jmp    40a72 <exception_entry>

000000000004086b <exception_entry_209>:
   4086b:	6a 00                	push   $0x0
   4086d:	68 d1 00 00 00       	push   $0xd1
   40872:	e9 fb 01 00 00       	jmp    40a72 <exception_entry>

0000000000040877 <exception_entry_210>:
   40877:	6a 00                	push   $0x0
   40879:	68 d2 00 00 00       	push   $0xd2
   4087e:	e9 ef 01 00 00       	jmp    40a72 <exception_entry>

0000000000040883 <exception_entry_211>:
   40883:	6a 00                	push   $0x0
   40885:	68 d3 00 00 00       	push   $0xd3
   4088a:	e9 e3 01 00 00       	jmp    40a72 <exception_entry>

000000000004088f <exception_entry_212>:
   4088f:	6a 00                	push   $0x0
   40891:	68 d4 00 00 00       	push   $0xd4
   40896:	e9 d7 01 00 00       	jmp    40a72 <exception_entry>

000000000004089b <exception_entry_213>:
   4089b:	6a 00                	push   $0x0
   4089d:	68 d5 00 00 00       	push   $0xd5
   408a2:	e9 cb 01 00 00       	jmp    40a72 <exception_entry>

00000000000408a7 <exception_entry_214>:
   408a7:	6a 00                	push   $0x0
   408a9:	68 d6 00 00 00       	push   $0xd6
   408ae:	e9 bf 01 00 00       	jmp    40a72 <exception_entry>

00000000000408b3 <exception_entry_215>:
   408b3:	6a 00                	push   $0x0
   408b5:	68 d7 00 00 00       	push   $0xd7
   408ba:	e9 b3 01 00 00       	jmp    40a72 <exception_entry>

00000000000408bf <exception_entry_216>:
   408bf:	6a 00                	push   $0x0
   408c1:	68 d8 00 00 00       	push   $0xd8
   408c6:	e9 a7 01 00 00       	jmp    40a72 <exception_entry>

00000000000408cb <exception_entry_217>:
   408cb:	6a 00                	push   $0x0
   408cd:	68 d9 00 00 00       	push   $0xd9
   408d2:	e9 9b 01 00 00       	jmp    40a72 <exception_entry>

00000000000408d7 <exception_entry_218>:
   408d7:	6a 00                	push   $0x0
   408d9:	68 da 00 00 00       	push   $0xda
   408de:	e9 8f 01 00 00       	jmp    40a72 <exception_entry>

00000000000408e3 <exception_entry_219>:
   408e3:	6a 00                	push   $0x0
   408e5:	68 db 00 00 00       	push   $0xdb
   408ea:	e9 83 01 00 00       	jmp    40a72 <exception_entry>

00000000000408ef <exception_entry_220>:
   408ef:	6a 00                	push   $0x0
   408f1:	68 dc 00 00 00       	push   $0xdc
   408f6:	e9 77 01 00 00       	jmp    40a72 <exception_entry>

00000000000408fb <exception_entry_221>:
   408fb:	6a 00                	push   $0x0
   408fd:	68 dd 00 00 00       	push   $0xdd
   40902:	e9 6b 01 00 00       	jmp    40a72 <exception_entry>

0000000000040907 <exception_entry_222>:
   40907:	6a 00                	push   $0x0
   40909:	68 de 00 00 00       	push   $0xde
   4090e:	e9 5f 01 00 00       	jmp    40a72 <exception_entry>

0000000000040913 <exception_entry_223>:
   40913:	6a 00                	push   $0x0
   40915:	68 df 00 00 00       	push   $0xdf
   4091a:	e9 53 01 00 00       	jmp    40a72 <exception_entry>

000000000004091f <exception_entry_224>:
   4091f:	6a 00                	push   $0x0
   40921:	68 e0 00 00 00       	push   $0xe0
   40926:	e9 47 01 00 00       	jmp    40a72 <exception_entry>

000000000004092b <exception_entry_225>:
   4092b:	6a 00                	push   $0x0
   4092d:	68 e1 00 00 00       	push   $0xe1
   40932:	e9 3b 01 00 00       	jmp    40a72 <exception_entry>

0000000000040937 <exception_entry_226>:
   40937:	6a 00                	push   $0x0
   40939:	68 e2 00 00 00       	push   $0xe2
   4093e:	e9 2f 01 00 00       	jmp    40a72 <exception_entry>

0000000000040943 <exception_entry_227>:
   40943:	6a 00                	push   $0x0
   40945:	68 e3 00 00 00       	push   $0xe3
   4094a:	e9 23 01 00 00       	jmp    40a72 <exception_entry>

000000000004094f <exception_entry_228>:
   4094f:	6a 00                	push   $0x0
   40951:	68 e4 00 00 00       	push   $0xe4
   40956:	e9 17 01 00 00       	jmp    40a72 <exception_entry>

000000000004095b <exception_entry_229>:
   4095b:	6a 00                	push   $0x0
   4095d:	68 e5 00 00 00       	push   $0xe5
   40962:	e9 0b 01 00 00       	jmp    40a72 <exception_entry>

0000000000040967 <exception_entry_230>:
   40967:	6a 00                	push   $0x0
   40969:	68 e6 00 00 00       	push   $0xe6
   4096e:	e9 ff 00 00 00       	jmp    40a72 <exception_entry>

0000000000040973 <exception_entry_231>:
   40973:	6a 00                	push   $0x0
   40975:	68 e7 00 00 00       	push   $0xe7
   4097a:	e9 f3 00 00 00       	jmp    40a72 <exception_entry>

000000000004097f <exception_entry_232>:
   4097f:	6a 00                	push   $0x0
   40981:	68 e8 00 00 00       	push   $0xe8
   40986:	e9 e7 00 00 00       	jmp    40a72 <exception_entry>

000000000004098b <exception_entry_233>:
   4098b:	6a 00                	push   $0x0
   4098d:	68 e9 00 00 00       	push   $0xe9
   40992:	e9 db 00 00 00       	jmp    40a72 <exception_entry>

0000000000040997 <exception_entry_234>:
   40997:	6a 00                	push   $0x0
   40999:	68 ea 00 00 00       	push   $0xea
   4099e:	e9 cf 00 00 00       	jmp    40a72 <exception_entry>

00000000000409a3 <exception_entry_235>:
   409a3:	6a 00                	push   $0x0
   409a5:	68 eb 00 00 00       	push   $0xeb
   409aa:	e9 c3 00 00 00       	jmp    40a72 <exception_entry>

00000000000409af <exception_entry_236>:
   409af:	6a 00                	push   $0x0
   409b1:	68 ec 00 00 00       	push   $0xec
   409b6:	e9 b7 00 00 00       	jmp    40a72 <exception_entry>

00000000000409bb <exception_entry_237>:
   409bb:	6a 00                	push   $0x0
   409bd:	68 ed 00 00 00       	push   $0xed
   409c2:	e9 ab 00 00 00       	jmp    40a72 <exception_entry>

00000000000409c7 <exception_entry_238>:
   409c7:	6a 00                	push   $0x0
   409c9:	68 ee 00 00 00       	push   $0xee
   409ce:	e9 9f 00 00 00       	jmp    40a72 <exception_entry>

00000000000409d3 <exception_entry_239>:
   409d3:	6a 00                	push   $0x0
   409d5:	68 ef 00 00 00       	push   $0xef
   409da:	e9 93 00 00 00       	jmp    40a72 <exception_entry>

00000000000409df <exception_entry_240>:
   409df:	6a 00                	push   $0x0
   409e1:	68 f0 00 00 00       	push   $0xf0
   409e6:	e9 87 00 00 00       	jmp    40a72 <exception_entry>

00000000000409eb <exception_entry_241>:
   409eb:	6a 00                	push   $0x0
   409ed:	68 f1 00 00 00       	push   $0xf1
   409f2:	eb 7e                	jmp    40a72 <exception_entry>

00000000000409f4 <exception_entry_242>:
   409f4:	6a 00                	push   $0x0
   409f6:	68 f2 00 00 00       	push   $0xf2
   409fb:	eb 75                	jmp    40a72 <exception_entry>

00000000000409fd <exception_entry_243>:
   409fd:	6a 00                	push   $0x0
   409ff:	68 f3 00 00 00       	push   $0xf3
   40a04:	eb 6c                	jmp    40a72 <exception_entry>

0000000000040a06 <exception_entry_244>:
   40a06:	6a 00                	push   $0x0
   40a08:	68 f4 00 00 00       	push   $0xf4
   40a0d:	eb 63                	jmp    40a72 <exception_entry>

0000000000040a0f <exception_entry_245>:
   40a0f:	6a 00                	push   $0x0
   40a11:	68 f5 00 00 00       	push   $0xf5
   40a16:	eb 5a                	jmp    40a72 <exception_entry>

0000000000040a18 <exception_entry_246>:
   40a18:	6a 00                	push   $0x0
   40a1a:	68 f6 00 00 00       	push   $0xf6
   40a1f:	eb 51                	jmp    40a72 <exception_entry>

0000000000040a21 <exception_entry_247>:
   40a21:	6a 00                	push   $0x0
   40a23:	68 f7 00 00 00       	push   $0xf7
   40a28:	eb 48                	jmp    40a72 <exception_entry>

0000000000040a2a <exception_entry_248>:
   40a2a:	6a 00                	push   $0x0
   40a2c:	68 f8 00 00 00       	push   $0xf8
   40a31:	eb 3f                	jmp    40a72 <exception_entry>

0000000000040a33 <exception_entry_249>:
   40a33:	6a 00                	push   $0x0
   40a35:	68 f9 00 00 00       	push   $0xf9
   40a3a:	eb 36                	jmp    40a72 <exception_entry>

0000000000040a3c <exception_entry_250>:
   40a3c:	6a 00                	push   $0x0
   40a3e:	68 fa 00 00 00       	push   $0xfa
   40a43:	eb 2d                	jmp    40a72 <exception_entry>

0000000000040a45 <exception_entry_251>:
   40a45:	6a 00                	push   $0x0
   40a47:	68 fb 00 00 00       	push   $0xfb
   40a4c:	eb 24                	jmp    40a72 <exception_entry>

0000000000040a4e <exception_entry_252>:
   40a4e:	6a 00                	push   $0x0
   40a50:	68 fc 00 00 00       	push   $0xfc
   40a55:	eb 1b                	jmp    40a72 <exception_entry>

0000000000040a57 <exception_entry_253>:
   40a57:	6a 00                	push   $0x0
   40a59:	68 fd 00 00 00       	push   $0xfd
   40a5e:	eb 12                	jmp    40a72 <exception_entry>

0000000000040a60 <exception_entry_254>:
   40a60:	6a 00                	push   $0x0
   40a62:	68 fe 00 00 00       	push   $0xfe
   40a67:	eb 09                	jmp    40a72 <exception_entry>

0000000000040a69 <exception_entry_255>:
   40a69:	6a 00                	push   $0x0
   40a6b:	68 ff 00 00 00       	push   $0xff
   40a70:	eb 00                	jmp    40a72 <exception_entry>

0000000000040a72 <exception_entry>:
   40a72:	0f a8                	push   %gs
   40a74:	0f a0                	push   %fs
   40a76:	41 57                	push   %r15
   40a78:	41 56                	push   %r14
   40a7a:	41 55                	push   %r13
   40a7c:	41 54                	push   %r12
   40a7e:	41 53                	push   %r11
   40a80:	41 52                	push   %r10
   40a82:	41 51                	push   %r9
   40a84:	41 50                	push   %r8
   40a86:	57                   	push   %rdi
   40a87:	56                   	push   %rsi
   40a88:	55                   	push   %rbp
   40a89:	53                   	push   %rbx
   40a8a:	52                   	push   %rdx
   40a8b:	51                   	push   %rcx
   40a8c:	50                   	push   %rax
   40a8d:	48 89 e7             	mov    %rsp,%rdi
   40a90:	48 c7 c0 00 a0 05 00 	mov    $0x5a000,%rax
   40a97:	0f 22 d8             	mov    %rax,%cr3
   40a9a:	e8 c5 06 00 00       	call   41164 <exception(regstate*)>

0000000000040a9f <exception_return(proc*)>:
   40a9f:	8b 47 0c             	mov    0xc(%rdi),%eax
   40aa2:	83 f8 01             	cmp    $0x1,%eax
   40aa5:	0f 85 a4 00 00 00    	jne    40b4f <proc_runnable_fail>
   40aab:	48 8b 07             	mov    (%rdi),%rax
   40aae:	0f 22 d8             	mov    %rax,%cr3
   40ab1:	48 8d 67 10          	lea    0x10(%rdi),%rsp
   40ab5:	58                   	pop    %rax
   40ab6:	59                   	pop    %rcx
   40ab7:	5a                   	pop    %rdx
   40ab8:	5b                   	pop    %rbx
   40ab9:	5d                   	pop    %rbp
   40aba:	5e                   	pop    %rsi
   40abb:	5f                   	pop    %rdi
   40abc:	41 58                	pop    %r8
   40abe:	41 59                	pop    %r9
   40ac0:	41 5a                	pop    %r10
   40ac2:	41 5b                	pop    %r11
   40ac4:	41 5c                	pop    %r12
   40ac6:	41 5d                	pop    %r13
   40ac8:	41 5e                	pop    %r14
   40aca:	41 5f                	pop    %r15
   40acc:	0f a1                	pop    %fs
   40ace:	0f a9                	pop    %gs
   40ad0:	48 83 c4 10          	add    $0x10,%rsp
   40ad4:	48 cf                	iretq

0000000000040ad6 <syscall_entry>:
   40ad6:	48 89 24 25 f0 ff 07 	mov    %rsp,0x7fff0
   40add:	00 
   40ade:	48 c7 c4 00 00 08 00 	mov    $0x80000,%rsp
   40ae5:	6a 23                	push   $0x23
   40ae7:	48 83 ec 08          	sub    $0x8,%rsp
   40aeb:	41 53                	push   %r11
   40aed:	6a 1b                	push   $0x1b
   40aef:	51                   	push   %rcx
   40af0:	48 83 ec 08          	sub    $0x8,%rsp
   40af4:	6a ff                	push   $0xffffffffffffffff
   40af6:	0f a8                	push   %gs
   40af8:	0f a0                	push   %fs
   40afa:	41 57                	push   %r15
   40afc:	41 56                	push   %r14
   40afe:	41 55                	push   %r13
   40b00:	41 54                	push   %r12
   40b02:	48 83 ec 08          	sub    $0x8,%rsp
   40b06:	41 52                	push   %r10
   40b08:	41 51                	push   %r9
   40b0a:	41 50                	push   %r8
   40b0c:	57                   	push   %rdi
   40b0d:	56                   	push   %rsi
   40b0e:	55                   	push   %rbp
   40b0f:	53                   	push   %rbx
   40b10:	52                   	push   %rdx
   40b11:	48 83 ec 08          	sub    $0x8,%rsp
   40b15:	50                   	push   %rax
   40b16:	48 c7 c0 00 a0 05 00 	mov    $0x5a000,%rax
   40b1d:	0f 22 d8             	mov    %rax,%cr3
   40b20:	48 89 e7             	mov    %rsp,%rdi
   40b23:	e8 4c 07 00 00       	call   41274 <syscall(regstate*)>
   40b28:	48 8b 0c 25 00 22 05 	mov    0x52200,%rcx
   40b2f:	00 
   40b30:	8b 49 0c             	mov    0xc(%rcx),%ecx
   40b33:	83 f9 01             	cmp    $0x1,%ecx
   40b36:	75 17                	jne    40b4f <proc_runnable_fail>
   40b38:	48 8b 0c 25 00 22 05 	mov    0x52200,%rcx
   40b3f:	00 
   40b40:	48 8b 09             	mov    (%rcx),%rcx
   40b43:	0f 22 d9             	mov    %rcx,%cr3
   40b46:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   40b4d:	48 cf                	iretq

0000000000040b4f <proc_runnable_fail>:
   40b4f:	48 c7 c2 0e 40 04 00 	mov    $0x4400e,%rdx
   40b56:	31 f6                	xor    %esi,%esi
   40b58:	48 c7 c7 00 40 04 00 	mov    $0x44000,%rdi
   40b5f:	e8 aa 11 00 00       	call   41d0e <assert_fail(char const*, int, char const*)>

0000000000040b64 <process_setup(int, char const*)>:
// process_setup(pid, program_name)
//    Loads application program `program_name` as process number `pid`.
//    This loads the application's code and data into memory, sets its
//    %rip and %rsp, gives it a stack page, and marks it as runnable.

void process_setup(pid_t pid, const char* program_name) {
   40b64:	55                   	push   %rbp
   40b65:	48 89 e5             	mov    %rsp,%rbp
   40b68:	41 56                	push   %r14
   40b6a:	41 55                	push   %r13
   40b6c:	41 54                	push   %r12
   40b6e:	53                   	push   %rbx
   40b6f:	48 83 ec 20          	sub    $0x20,%rsp
   40b73:	41 89 fd             	mov    %edi,%r13d
   40b76:	49 89 f4             	mov    %rsi,%r12
    init_process(&ptable[pid], 0);
   40b79:	4c 63 f7             	movslq %edi,%r14
   40b7c:	4b 8d 1c 76          	lea    (%r14,%r14,2),%rbx
   40b80:	48 c1 e3 02          	shl    $0x2,%rbx
   40b84:	4a 8d 3c 33          	lea    (%rbx,%r14,1),%rdi
   40b88:	48 c1 e7 04          	shl    $0x4,%rdi
   40b8c:	48 81 c7 20 22 05 00 	add    $0x52220,%rdi
   40b93:	be 00 00 00 00       	mov    $0x0,%esi
   40b98:	e8 3b 0d 00 00       	call   418d8 <init_process(proc*, int)>

    // Initialize this process's page table
    ptable[pid].pagetable = kernel_pagetable;
   40b9d:	4c 01 f3             	add    %r14,%rbx
   40ba0:	48 c1 e3 04          	shl    $0x4,%rbx
   40ba4:	48 c7 83 20 22 05 00 	movq   $0x5a000,0x52220(%rbx)
   40bab:	00 a0 05 00 

    // Load the program.
    program_loader loader(program_name);
   40baf:	4c 89 e6             	mov    %r12,%rsi
   40bb2:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40bb6:	e8 97 1d 00 00       	call   42952 <program_loader::program_loader(char const*)>

    // For each segment of the program, allocate and map memory.
    for (loader.reset(); loader.present(); ++loader) {
   40bbb:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40bbf:	e8 fa 1c 00 00       	call   428be <program_loader::reset()>
   40bc4:	eb 44                	jmp    40c0a <process_setup(int, char const*)+0xa6>
        for (uintptr_t a = round_down(loader.va(), PAGESIZE);
             a < loader.va() + loader.size();
             a += PAGESIZE) {
            assert(!pages[a / PAGESIZE].used());
   40bc6:	4c 89 e0             	mov    %r12,%rax
   40bc9:	48 c1 e8 0c          	shr    $0xc,%rax
   40bcd:	80 b8 00 20 05 00 00 	cmpb   $0x0,0x52000(%rax)
   40bd4:	75 55                	jne    40c2b <process_setup(int, char const*)+0xc7>
            pages[a / PAGESIZE].refcount = 1;
   40bd6:	c6 80 00 20 05 00 01 	movb   $0x1,0x52000(%rax)
             a += PAGESIZE) {
   40bdd:	49 81 c4 00 10 00 00 	add    $0x1000,%r12
             a < loader.va() + loader.size();
   40be4:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40be8:	e8 25 1c 00 00       	call   42812 <program_loader::va() const>
   40bed:	48 89 c3             	mov    %rax,%rbx
   40bf0:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40bf4:	e8 31 1c 00 00       	call   4282a <program_loader::size() const>
   40bf9:	48 01 c3             	add    %rax,%rbx
   40bfc:	49 39 dc             	cmp    %rbx,%r12
   40bff:	72 c5                	jb     40bc6 <process_setup(int, char const*)+0x62>
    for (loader.reset(); loader.present(); ++loader) {
   40c01:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40c05:	e8 92 1c 00 00       	call   4289c <program_loader::operator++()>
   40c0a:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40c0e:	e8 63 1c 00 00       	call   42876 <program_loader::present() const>
   40c13:	84 c0                	test   %al,%al
   40c15:	74 28                	je     40c3f <process_setup(int, char const*)+0xdb>
        for (uintptr_t a = round_down(loader.va(), PAGESIZE);
   40c17:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40c1b:	e8 f2 1b 00 00       	call   42812 <program_loader::va() const>
   40c20:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
   40c26:	49 89 c4             	mov    %rax,%r12
   40c29:	eb b9                	jmp    40be4 <process_setup(int, char const*)+0x80>
            assert(!pages[a / PAGESIZE].used());
   40c2b:	ba 2b 40 04 00       	mov    $0x4402b,%edx
   40c30:	be a5 00 00 00       	mov    $0xa5,%esi
   40c35:	bf 47 40 04 00       	mov    $0x44047,%edi
   40c3a:	e8 cf 10 00 00       	call   41d0e <assert_fail(char const*, int, char const*)>
        }
    }

    // Copy instructions and data into place.
    for (loader.reset(); loader.present(); ++loader) {
   40c3f:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40c43:	e8 76 1c 00 00       	call   428be <program_loader::reset()>
   40c48:	eb 5d                	jmp    40ca7 <process_setup(int, char const*)+0x143>
        memset((void*) loader.va(), 0, loader.size());
   40c4a:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40c4e:	e8 d7 1b 00 00       	call   4282a <program_loader::size() const>
   40c53:	48 89 c3             	mov    %rax,%rbx
   40c56:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40c5a:	e8 b3 1b 00 00       	call   42812 <program_loader::va() const>
   40c5f:	48 89 c7             	mov    %rax,%rdi
   40c62:	48 89 da             	mov    %rbx,%rdx
   40c65:	be 00 00 00 00       	mov    $0x0,%esi
   40c6a:	e8 19 28 00 00       	call   43488 <memset>
        memcpy((void*) loader.va(), loader.data(), loader.data_size());
   40c6f:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40c73:	e8 e6 1b 00 00       	call   4285e <program_loader::data_size() const>
   40c78:	49 89 c4             	mov    %rax,%r12
   40c7b:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40c7f:	e8 be 1b 00 00       	call   42842 <program_loader::data() const>
   40c84:	48 89 c3             	mov    %rax,%rbx
   40c87:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40c8b:	e8 82 1b 00 00       	call   42812 <program_loader::va() const>
   40c90:	48 89 c7             	mov    %rax,%rdi
   40c93:	4c 89 e2             	mov    %r12,%rdx
   40c96:	48 89 de             	mov    %rbx,%rsi
   40c99:	e8 79 27 00 00       	call   43417 <memcpy>
    for (loader.reset(); loader.present(); ++loader) {
   40c9e:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40ca2:	e8 f5 1b 00 00       	call   4289c <program_loader::operator++()>
   40ca7:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40cab:	e8 c6 1b 00 00       	call   42876 <program_loader::present() const>
   40cb0:	84 c0                	test   %al,%al
   40cb2:	75 96                	jne    40c4a <process_setup(int, char const*)+0xe6>
    }

    // Set %rip and mark the entry point.
    ptable[pid].regs.reg_rip = loader.entry();
   40cb4:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40cb8:	e8 c9 1b 00 00       	call   42886 <program_loader::entry() const>
   40cbd:	48 89 c2             	mov    %rax,%rdx
   40cc0:	49 63 c5             	movslq %r13d,%rax
   40cc3:	48 8d 0c 40          	lea    (%rax,%rax,2),%rcx
   40cc7:	48 8d 04 88          	lea    (%rax,%rcx,4),%rax
   40ccb:	48 c1 e0 04          	shl    $0x4,%rax
   40ccf:	48 89 90 c8 22 05 00 	mov    %rdx,0x522c8(%rax)

    // Allocate a page for the stack.
    uintptr_t stack_addr = PROC_START_ADDR + PROC_SIZE * pid - PAGESIZE;
   40cd6:	41 8d 55 04          	lea    0x4(%r13),%edx
   40cda:	c1 e2 12             	shl    $0x12,%edx
   40cdd:	48 63 d2             	movslq %edx,%rdx
   40ce0:	48 8d 82 00 f0 ff ff 	lea    -0x1000(%rdx),%rax
    assert(!pages[stack_addr / PAGESIZE].used());
   40ce7:	48 c1 e8 0c          	shr    $0xc,%rax
   40ceb:	80 b8 00 20 05 00 00 	cmpb   $0x0,0x52000(%rax)
   40cf2:	75 39                	jne    40d2d <process_setup(int, char const*)+0x1c9>
    pages[stack_addr / PAGESIZE].refcount = 1;
   40cf4:	c6 80 00 20 05 00 01 	movb   $0x1,0x52000(%rax)
    // Set %rsp to the start of the stack.
    ptable[pid].regs.reg_rsp = stack_addr + PAGESIZE;
   40cfb:	4d 63 ed             	movslq %r13d,%r13
   40cfe:	4b 8d 44 6d 00       	lea    0x0(%r13,%r13,2),%rax
   40d03:	48 c1 e0 02          	shl    $0x2,%rax
   40d07:	4a 8d 0c 28          	lea    (%rax,%r13,1),%rcx
   40d0b:	48 c1 e1 04          	shl    $0x4,%rcx
   40d0f:	48 89 91 e0 22 05 00 	mov    %rdx,0x522e0(%rcx)

    // Mark the process as runnable.
    ptable[pid].state = P_RUNNABLE;
   40d16:	c7 81 2c 22 05 00 01 	movl   $0x1,0x5222c(%rcx)
   40d1d:	00 00 00 
}
   40d20:	48 83 c4 20          	add    $0x20,%rsp
   40d24:	5b                   	pop    %rbx
   40d25:	41 5c                	pop    %r12
   40d27:	41 5d                	pop    %r13
   40d29:	41 5e                	pop    %r14
   40d2b:	5d                   	pop    %rbp
   40d2c:	c3                   	ret
    assert(!pages[stack_addr / PAGESIZE].used());
   40d2d:	ba 90 43 04 00       	mov    $0x44390,%edx
   40d32:	be b5 00 00 00       	mov    $0xb5,%esi
   40d37:	bf 47 40 04 00       	mov    $0x44047,%edi
   40d3c:	e8 cd 0f 00 00       	call   41d0e <assert_fail(char const*, int, char const*)>

0000000000040d41 <kalloc(unsigned long)>:
void* kalloc(size_t sz) {
   40d41:	f3 0f 1e fa          	endbr64
   40d45:	55                   	push   %rbp
   40d46:	48 89 e5             	mov    %rsp,%rbp
   40d49:	41 54                	push   %r12
   40d4b:	53                   	push   %rbx
    if (sz > PAGESIZE) {
   40d4c:	48 81 ff 00 10 00 00 	cmp    $0x1000,%rdi
   40d53:	77 66                	ja     40dbb <kalloc(unsigned long)+0x7a>
    while (next_alloc_pa < MEMSIZE_PHYSICAL) {
   40d55:	48 8b 1d cc 21 01 00 	mov    0x121cc(%rip),%rbx        # 52f28 <next_alloc_pa>
   40d5c:	48 81 fb ff ff 1f 00 	cmp    $0x1fffff,%rbx
   40d63:	77 48                	ja     40dad <kalloc(unsigned long)+0x6c>
        next_alloc_pa += PAGESIZE;
   40d65:	48 8d 83 00 10 00 00 	lea    0x1000(%rbx),%rax
   40d6c:	48 89 05 b5 21 01 00 	mov    %rax,0x121b5(%rip)        # 52f28 <next_alloc_pa>
        if (allocatable_physical_address(pa)
   40d73:	48 89 df             	mov    %rbx,%rdi
   40d76:	e8 03 0b 00 00       	call   4187e <allocatable_physical_address(unsigned long)>
            && !pages[pa / PAGESIZE].used()) {
   40d7b:	84 c0                	test   %al,%al
   40d7d:	74 d6                	je     40d55 <kalloc(unsigned long)+0x14>
   40d7f:	48 89 d8             	mov    %rbx,%rax
   40d82:	48 c1 e8 0c          	shr    $0xc,%rax
        if (allocatable_physical_address(pa)
   40d86:	80 b8 00 20 05 00 00 	cmpb   $0x0,0x52000(%rax)
   40d8d:	75 c6                	jne    40d55 <kalloc(unsigned long)+0x14>
            pages[pa / PAGESIZE].refcount = 1;
   40d8f:	c6 80 00 20 05 00 01 	movb   $0x1,0x52000(%rax)
            memset((void*) pa, 0xCC, PAGESIZE);
   40d96:	49 89 dc             	mov    %rbx,%r12
   40d99:	ba 00 10 00 00       	mov    $0x1000,%edx
   40d9e:	be cc 00 00 00       	mov    $0xcc,%esi
   40da3:	48 89 df             	mov    %rbx,%rdi
   40da6:	e8 dd 26 00 00       	call   43488 <memset>
            return (void*) pa;
   40dab:	eb 06                	jmp    40db3 <kalloc(unsigned long)+0x72>
    return nullptr;
   40dad:	41 bc 00 00 00 00    	mov    $0x0,%r12d
}
   40db3:	4c 89 e0             	mov    %r12,%rax
   40db6:	5b                   	pop    %rbx
   40db7:	41 5c                	pop    %r12
   40db9:	5d                   	pop    %rbp
   40dba:	c3                   	ret
        return nullptr;
   40dbb:	41 bc 00 00 00 00    	mov    $0x0,%r12d
   40dc1:	eb f0                	jmp    40db3 <kalloc(unsigned long)+0x72>

0000000000040dc3 <syscall_page_alloc(unsigned long)>:
// syscall_page_alloc(addr)
//    Helper function that handles the SYSCALL_PAGE_ALLOC system call.
//    In this basic OS, it merely records that the page at physical
//    memory address `addr` is used and sets its contents to all zeros.

int syscall_page_alloc(uintptr_t addr) {
   40dc3:	f3 0f 1e fa          	endbr64
   40dc7:	55                   	push   %rbp
   40dc8:	48 89 e5             	mov    %rsp,%rbp
    assert(addr % PAGESIZE == 0);
   40dcb:	f7 c7 ff 0f 00 00    	test   $0xfff,%edi
   40dd1:	75 2d                	jne    40e00 <syscall_page_alloc(unsigned long)+0x3d>
    assert(!pages[addr / PAGESIZE].used());
   40dd3:	48 89 f8             	mov    %rdi,%rax
   40dd6:	48 c1 e8 0c          	shr    $0xc,%rax
   40dda:	80 b8 00 20 05 00 00 	cmpb   $0x0,0x52000(%rax)
   40de1:	75 31                	jne    40e14 <syscall_page_alloc(unsigned long)+0x51>
    pages[addr / PAGESIZE].refcount = 1;
   40de3:	c6 80 00 20 05 00 01 	movb   $0x1,0x52000(%rax)
    memset((void*) addr, 0, PAGESIZE);
   40dea:	ba 00 10 00 00       	mov    $0x1000,%edx
   40def:	be 00 00 00 00       	mov    $0x0,%esi
   40df4:	e8 8f 26 00 00       	call   43488 <memset>
    return 0;
}
   40df9:	b8 00 00 00 00       	mov    $0x0,%eax
   40dfe:	5d                   	pop    %rbp
   40dff:	c3                   	ret
    assert(addr % PAGESIZE == 0);
   40e00:	ba 57 40 04 00       	mov    $0x44057,%edx
   40e05:	be 47 01 00 00       	mov    $0x147,%esi
   40e0a:	bf 47 40 04 00       	mov    $0x44047,%edi
   40e0f:	e8 fa 0e 00 00       	call   41d0e <assert_fail(char const*, int, char const*)>
    assert(!pages[addr / PAGESIZE].used());
   40e14:	ba c0 43 04 00       	mov    $0x443c0,%edx
   40e19:	be 48 01 00 00       	mov    $0x148,%esi
   40e1e:	bf 47 40 04 00       	mov    $0x44047,%edi
   40e23:	e8 e6 0e 00 00       	call   41d0e <assert_fail(char const*, int, char const*)>

0000000000040e28 <run(proc*)>:
// run(p)
//    Runs process `p`. This involves setting `current = p` and calling
//    `exception_return` to restore its page table and registers.
//    You should *not* have to edit this function.

void run(proc* p) {
   40e28:	f3 0f 1e fa          	endbr64
   40e2c:	55                   	push   %rbp
   40e2d:	48 89 e5             	mov    %rsp,%rbp
   40e30:	53                   	push   %rbx
   40e31:	48 83 ec 08          	sub    $0x8,%rsp
    assert(p->state == P_RUNNABLE);
   40e35:	83 7f 0c 01          	cmpl   $0x1,0xc(%rdi)
   40e39:	75 1a                	jne    40e55 <run(proc*)+0x2d>
   40e3b:	48 89 fb             	mov    %rdi,%rbx
    current = p;
   40e3e:	48 89 3d bb 13 01 00 	mov    %rdi,0x113bb(%rip)        # 52200 <current>

    // Check the process's current pagetable.
    check_pagetable(p->pagetable);
   40e45:	48 8b 3f             	mov    (%rdi),%rdi
   40e48:	e8 a7 13 00 00       	call   421f4 <check_pagetable(x86_64_pagetable*)>

    // This function is defined in k-exception.S. It restores the process's
    // registers then jumps back to user mode.
    exception_return(p);
   40e4d:	48 89 df             	mov    %rbx,%rdi
   40e50:	e8 4a fc ff ff       	call   40a9f <exception_return(proc*)>
    assert(p->state == P_RUNNABLE);
   40e55:	ba 6c 40 04 00       	mov    $0x4406c,%edx
   40e5a:	be 6e 01 00 00       	mov    $0x16e,%esi
   40e5f:	bf 47 40 04 00       	mov    $0x44047,%edi
   40e64:	e8 a5 0e 00 00       	call   41d0e <assert_fail(char const*, int, char const*)>

0000000000040e69 <kernel(char const*)>:
void kernel(const char* command) {
   40e69:	f3 0f 1e fa          	endbr64
   40e6d:	55                   	push   %rbp
   40e6e:	48 89 e5             	mov    %rsp,%rbp
   40e71:	48 83 ec 20          	sub    $0x20,%rsp
    init_hardware();
   40e75:	e8 53 0f 00 00       	call   41dcd <init_hardware()>
    log_printf("Starting WeensyOS\n");
   40e7a:	bf 83 40 04 00       	mov    $0x44083,%edi
   40e7f:	b8 00 00 00 00       	mov    $0x0,%eax
   40e84:	e8 5a 0d 00 00       	call   41be3 <log_printf(char const*, ...)>
	  = __m & __memory_order_mask;
	__glibcxx_assert(__b != memory_order_acquire);
	__glibcxx_assert(__b != memory_order_acq_rel);
	__glibcxx_assert(__b != memory_order_consume);

	__atomic_store_n(&_M_i, __i, int(__m));
   40e89:	b8 01 00 00 00       	mov    $0x1,%eax
   40e8e:	48 87 05 9b 20 01 00 	xchg   %rax,0x1209b(%rip)        # 52f30 <ticks>
    init_timer(HZ);
   40e95:	bf 64 00 00 00       	mov    $0x64,%edi
   40e9a:	e8 94 09 00 00       	call   41833 <init_timer(int)>
    console_clear();
   40e9f:	e8 db 2e 00 00       	call   43d7f <console_clear()>
    void down(bool skip);
};


inline vmiter::vmiter(x86_64_pagetable* pt, uintptr_t va)
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40ea4:	48 c7 45 e0 00 a0 05 	movq   $0x5a000,-0x20(%rbp)
   40eab:	00 
   40eac:	48 c7 45 e8 00 a0 05 	movq   $0x5a000,-0x18(%rbp)
   40eb3:	00 
   40eb4:	c7 45 f0 03 00 00 00 	movl   $0x3,-0x10(%rbp)
   40ebb:	c7 45 f4 ff 0f 00 00 	movl   $0xfff,-0xc(%rbp)
   40ec2:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   40ec9:	00 
    real_find(va);
   40eca:	be 00 00 00 00       	mov    $0x0,%esi
   40ecf:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
   40ed3:	e8 e0 04 00 00       	call   413b8 <vmiter::real_find(unsigned long)>
}
inline vmiter::vmiter(const proc* p, uintptr_t va)
    : vmiter(p->pagetable, va) {
}
inline uintptr_t vmiter::va() const {
    return va_;
   40ed8:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    for (vmiter it(kernel_pagetable); it.va() < MEMSIZE_PHYSICAL; it += PAGESIZE) {
   40edc:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   40ee3:	0f 86 a4 00 00 00    	jbe    40f8d <kernel(char const*)+0x124>
    for (pid_t i = 0; i < NPROC; i++) {
   40ee9:	ba 28 22 05 00       	mov    $0x52228,%edx
   40eee:	b8 00 00 00 00       	mov    $0x0,%eax
        ptable[i].pid = i;
   40ef3:	89 02                	mov    %eax,(%rdx)
        ptable[i].state = P_FREE;
   40ef5:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%rdx)
    for (pid_t i = 0; i < NPROC; i++) {
   40efc:	83 c0 01             	add    $0x1,%eax
   40eff:	48 81 c2 d0 00 00 00 	add    $0xd0,%rdx
   40f06:	83 f8 10             	cmp    $0x10,%eax
   40f09:	75 e8                	jne    40ef3 <kernel(char const*)+0x8a>
    process_setup(1, "allocator");
   40f0b:	be a9 40 04 00       	mov    $0x440a9,%esi
   40f10:	bf 01 00 00 00       	mov    $0x1,%edi
   40f15:	e8 4a fc ff ff       	call   40b64 <process_setup(int, char const*)>
    process_setup(2, "allocator2");
   40f1a:	be b3 40 04 00       	mov    $0x440b3,%esi
   40f1f:	bf 02 00 00 00       	mov    $0x2,%edi
   40f24:	e8 3b fc ff ff       	call   40b64 <process_setup(int, char const*)>
    process_setup(3,"allocator3");
   40f29:	be be 40 04 00       	mov    $0x440be,%esi
   40f2e:	bf 03 00 00 00       	mov    $0x3,%edi
   40f33:	e8 2c fc ff ff       	call   40b64 <process_setup(int, char const*)>
    process_setup(4,"allocator4");
   40f38:	be c9 40 04 00       	mov    $0x440c9,%esi
   40f3d:	bf 04 00 00 00       	mov    $0x4,%edi
   40f42:	e8 1d fc ff ff       	call   40b64 <process_setup(int, char const*)>
    run(&ptable[1]); 
   40f47:	bf f0 22 05 00       	mov    $0x522f0,%edi
   40f4c:	e8 d7 fe ff ff       	call   40e28 <run(proc*)>
}
inline void vmiter::next_range() {
    real_find(last_va());
}
inline void vmiter::map(uintptr_t pa, int perm) {
    int r = try_map(pa, perm);
   40f51:	ba 00 00 00 00       	mov    $0x0,%edx
   40f56:	be 00 00 00 00       	mov    $0x0,%esi
   40f5b:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
   40f5f:	e8 56 05 00 00       	call   414ba <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   40f64:	85 c0                	test   %eax,%eax
   40f66:	75 50                	jne    40fb8 <kernel(char const*)+0x14f>
    return find(va_ + delta);
   40f68:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   40f6c:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   40f73:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
   40f77:	e8 3c 04 00 00       	call   413b8 <vmiter::real_find(unsigned long)>
    return va_;
   40f7c:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    for (vmiter it(kernel_pagetable); it.va() < MEMSIZE_PHYSICAL; it += PAGESIZE) {
   40f80:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   40f87:	0f 87 5c ff ff ff    	ja     40ee9 <kernel(char const*)+0x80>
        if (it.va() != 0) {
   40f8d:	48 85 f6             	test   %rsi,%rsi
   40f90:	74 bf                	je     40f51 <kernel(char const*)+0xe8>
    int r = try_map(pa, perm);
   40f92:	ba 07 00 00 00       	mov    $0x7,%edx
   40f97:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
   40f9b:	e8 1a 05 00 00       	call   414ba <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   40fa0:	85 c0                	test   %eax,%eax
   40fa2:	74 c4                	je     40f68 <kernel(char const*)+0xff>
   40fa4:	ba 96 40 04 00       	mov    $0x44096,%edx
   40fa9:	be b0 00 00 00       	mov    $0xb0,%esi
   40fae:	bf 9d 40 04 00       	mov    $0x4409d,%edi
   40fb3:	e8 56 0d 00 00       	call   41d0e <assert_fail(char const*, int, char const*)>
   40fb8:	ba 96 40 04 00       	mov    $0x44096,%edx
   40fbd:	be b0 00 00 00       	mov    $0xb0,%esi
   40fc2:	bf 9d 40 04 00       	mov    $0x4409d,%edi
   40fc7:	e8 42 0d 00 00       	call   41d0e <assert_fail(char const*, int, char const*)>

0000000000040fcc <memshow()>:
//    Draws a picture of memory (physical and virtual) on the CGA console.
//    Switches to a new process's virtual memory map every 0.25 sec.
//    Uses `console_memviewer()`, a function defined in `k-memviewer.cc`.
//    You should *not* have to edit this function.

void memshow() {
   40fcc:	f3 0f 1e fa          	endbr64
   40fd0:	55                   	push   %rbp
   40fd1:	48 89 e5             	mov    %rsp,%rbp
    static unsigned last_ticks = 0;
    static int showing = 0;
    static int show_virtual = 1;

    // switch to a new process every 0.25 sec
    if (last_ticks == 0 || ticks - last_ticks >= HZ / 2) {
   40fd4:	83 3d 49 1f 01 00 00 	cmpl   $0x0,0x11f49(%rip)        # 52f24 <memshow()::last_ticks>
   40fdb:	74 16                	je     40ff3 <memshow()+0x27>
	memory_order __b __attribute__ ((__unused__))
	  = __m & __memory_order_mask;
	__glibcxx_assert(__b != memory_order_release);
	__glibcxx_assert(__b != memory_order_acq_rel);

	return __atomic_load_n(&_M_i, int(__m));
   40fdd:	48 8b 05 4c 1f 01 00 	mov    0x11f4c(%rip),%rax        # 52f30 <ticks>
   40fe4:	8b 15 3a 1f 01 00    	mov    0x11f3a(%rip),%edx        # 52f24 <memshow()::last_ticks>
   40fea:	48 29 d0             	sub    %rdx,%rax
   40fed:	48 83 f8 31          	cmp    $0x31,%rax
   40ff1:	76 27                	jbe    4101a <memshow()+0x4e>
   40ff3:	48 8b 05 36 1f 01 00 	mov    0x11f36(%rip),%rax        # 52f30 <ticks>
        last_ticks = ticks;
   40ffa:	89 05 24 1f 01 00    	mov    %eax,0x11f24(%rip)        # 52f24 <memshow()::last_ticks>
        showing = (showing + 1) % NPROC;
   41000:	8b 05 1a 1f 01 00    	mov    0x11f1a(%rip),%eax        # 52f20 <memshow()::showing>
   41006:	83 c0 01             	add    $0x1,%eax
   41009:	99                   	cltd
   4100a:	c1 ea 1c             	shr    $0x1c,%edx
   4100d:	01 d0                	add    %edx,%eax
   4100f:	83 e0 0f             	and    $0xf,%eax
   41012:	29 d0                	sub    %edx,%eax
   41014:	89 05 06 1f 01 00    	mov    %eax,0x11f06(%rip)        # 52f20 <memshow()::showing>
    }

    proc* p = nullptr;
    for (int search = 0; !p && search < NPROC; ++search) {
   4101a:	8b 05 00 1f 01 00    	mov    0x11f00(%rip),%eax        # 52f20 <memshow()::showing>
void memshow() {
   41020:	be 10 00 00 00       	mov    $0x10,%esi
   41025:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   4102b:	bf 01 00 00 00       	mov    $0x1,%edi
   41030:	eb 1d                	jmp    4104f <memshow()+0x83>
        if (ptable[showing].state != P_FREE
            && ptable[showing].pagetable) {
            p = &ptable[showing];
        } else {
            showing = (showing + 1) % NPROC;
   41032:	83 c0 01             	add    $0x1,%eax
   41035:	89 c1                	mov    %eax,%ecx
   41037:	c1 f9 1f             	sar    $0x1f,%ecx
   4103a:	c1 e9 1c             	shr    $0x1c,%ecx
   4103d:	8d 14 08             	lea    (%rax,%rcx,1),%edx
   41040:	83 e2 0f             	and    $0xf,%edx
   41043:	29 ca                	sub    %ecx,%edx
   41045:	89 d0                	mov    %edx,%eax
    for (int search = 0; !p && search < NPROC; ++search) {
   41047:	41 89 f8             	mov    %edi,%r8d
   4104a:	83 ee 01             	sub    $0x1,%esi
   4104d:	74 59                	je     410a8 <memshow()+0xdc>
        if (ptable[showing].state != P_FREE
   4104f:	48 63 d0             	movslq %eax,%rdx
   41052:	48 8d 0c 52          	lea    (%rdx,%rdx,2),%rcx
   41056:	48 8d 14 8a          	lea    (%rdx,%rcx,4),%rdx
   4105a:	48 c1 e2 04          	shl    $0x4,%rdx
   4105e:	83 ba 2c 22 05 00 00 	cmpl   $0x0,0x5222c(%rdx)
   41065:	74 cb                	je     41032 <memshow()+0x66>
            && ptable[showing].pagetable) {
   41067:	48 63 d0             	movslq %eax,%rdx
   4106a:	48 8d 14 8a          	lea    (%rdx,%rcx,4),%rdx
   4106e:	48 c1 e2 04          	shl    $0x4,%rdx
   41072:	48 83 ba 20 22 05 00 	cmpq   $0x0,0x52220(%rdx)
   41079:	00 
   4107a:	74 b6                	je     41032 <memshow()+0x66>
   4107c:	45 84 c0             	test   %r8b,%r8b
   4107f:	74 06                	je     41087 <memshow()+0xbb>
   41081:	89 05 99 1e 01 00    	mov    %eax,0x11e99(%rip)        # 52f20 <memshow()::showing>
            p = &ptable[showing];
   41087:	48 98                	cltq
   41089:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   4108d:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
   41091:	48 c1 e7 04          	shl    $0x4,%rdi
   41095:	48 81 c7 20 22 05 00 	add    $0x52220,%rdi
        }
    }

    extern void console_memviewer(proc* vmp, int show_virtual);
    console_memviewer(p, show_virtual);
   4109c:	be 01 00 00 00       	mov    $0x1,%esi
   410a1:	e8 a5 20 00 00       	call   4314b <console_memviewer(proc*, int)>
}
   410a6:	5d                   	pop    %rbp
   410a7:	c3                   	ret
   410a8:	89 15 72 1e 01 00    	mov    %edx,0x11e72(%rip)        # 52f20 <memshow()::showing>
    for (int search = 0; !p && search < NPROC; ++search) {
   410ae:	bf 00 00 00 00       	mov    $0x0,%edi
   410b3:	eb e7                	jmp    4109c <memshow()+0xd0>

00000000000410b5 <schedule()>:
void schedule() {
   410b5:	f3 0f 1e fa          	endbr64
   410b9:	55                   	push   %rbp
   410ba:	48 89 e5             	mov    %rsp,%rbp
   410bd:	41 54                	push   %r12
   410bf:	53                   	push   %rbx
    pid_t pid = current->pid;
   410c0:	48 8b 05 39 11 01 00 	mov    0x11139(%rip),%rax        # 52200 <current>
        pid = (pid + 1) % NPROC;
   410c7:	8b 40 08             	mov    0x8(%rax),%eax
   410ca:	83 c0 01             	add    $0x1,%eax
   410cd:	99                   	cltd
   410ce:	c1 ea 1c             	shr    $0x1c,%edx
   410d1:	01 d0                	add    %edx,%eax
   410d3:	83 e0 0f             	and    $0xf,%eax
   410d6:	29 d0                	sub    %edx,%eax
   410d8:	41 89 c4             	mov    %eax,%r12d
        if (ptable[pid].state == P_RUNNABLE) {
   410db:	48 98                	cltq
   410dd:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   410e1:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   410e5:	48 c1 e0 04          	shl    $0x4,%rax
    for (unsigned spins = 1; true; ++spins) {
   410e9:	bb 01 00 00 00       	mov    $0x1,%ebx
        if (ptable[pid].state == P_RUNNABLE) {
   410ee:	83 b8 2c 22 05 00 01 	cmpl   $0x1,0x5222c(%rax)
   410f5:	75 48                	jne    4113f <schedule()+0x8a>
            run(&ptable[pid]);
   410f7:	4d 63 e4             	movslq %r12d,%r12
   410fa:	4b 8d 04 64          	lea    (%r12,%r12,2),%rax
   410fe:	49 8d 3c 84          	lea    (%r12,%rax,4),%rdi
   41102:	48 c1 e7 04          	shl    $0x4,%rdi
   41106:	48 81 c7 20 22 05 00 	add    $0x52220,%rdi
   4110d:	e8 16 fd ff ff       	call   40e28 <run(proc*)>
    for (unsigned spins = 1; true; ++spins) {
   41112:	83 c3 01             	add    $0x1,%ebx
        pid = (pid + 1) % NPROC;
   41115:	41 8d 44 24 01       	lea    0x1(%r12),%eax
   4111a:	99                   	cltd
   4111b:	c1 ea 1c             	shr    $0x1c,%edx
   4111e:	01 d0                	add    %edx,%eax
   41120:	83 e0 0f             	and    $0xf,%eax
   41123:	29 d0                	sub    %edx,%eax
   41125:	41 89 c4             	mov    %eax,%r12d
        if (ptable[pid].state == P_RUNNABLE) {
   41128:	48 98                	cltq
   4112a:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   4112e:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   41132:	48 c1 e0 04          	shl    $0x4,%rax
   41136:	83 b8 2c 22 05 00 01 	cmpl   $0x1,0x5222c(%rax)
   4113d:	74 b8                	je     410f7 <schedule()+0x42>
        check_keyboard();
   4113f:	e8 70 14 00 00       	call   425b4 <check_keyboard()>
        if (spins % (1 << 12) == 0) {
   41144:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
   4114a:	75 c6                	jne    41112 <schedule()+0x5d>
            memshow();
   4114c:	e8 7b fe ff ff       	call   40fcc <memshow()>
            log_printf("%u\n", spins);
   41151:	89 de                	mov    %ebx,%esi
   41153:	bf d4 40 04 00       	mov    $0x440d4,%edi
   41158:	b8 00 00 00 00       	mov    $0x0,%eax
   4115d:	e8 81 0a 00 00       	call   41be3 <log_printf(char const*, ...)>
   41162:	eb ae                	jmp    41112 <schedule()+0x5d>

0000000000041164 <exception(regstate*)>:
void exception(regstate* regs) {
   41164:	f3 0f 1e fa          	endbr64
   41168:	55                   	push   %rbp
   41169:	48 89 e5             	mov    %rsp,%rbp
   4116c:	53                   	push   %rbx
   4116d:	48 83 ec 08          	sub    $0x8,%rsp
   41171:	48 89 fe             	mov    %rdi,%rsi
    current->regs = *regs;
   41174:	48 8b 1d 85 10 01 00 	mov    0x11085(%rip),%rbx        # 52200 <current>
   4117b:	48 8d 7b 10          	lea    0x10(%rbx),%rdi
   4117f:	b9 18 00 00 00       	mov    $0x18,%ecx
   41184:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    console_show_cursor(cursorpos);
   41187:	8b 3d 6f 7e 07 00    	mov    0x77e6f(%rip),%edi        # b8ffc <cursorpos>
   4118d:	e8 cc 07 00 00       	call   4195e <console_show_cursor(int)>
    if (regs->reg_intno != INT_PF || (regs->reg_errcode & PFERR_USER)) {
   41192:	83 bb 98 00 00 00 0e 	cmpl   $0xe,0x98(%rbx)
   41199:	75 09                	jne    411a4 <exception(regstate*)+0x40>
   4119b:	f6 83 a0 00 00 00 04 	testb  $0x4,0xa0(%rbx)
   411a2:	74 05                	je     411a9 <exception(regstate*)+0x45>
        memshow();
   411a4:	e8 23 fe ff ff       	call   40fcc <memshow()>
    check_keyboard();
   411a9:	e8 06 14 00 00       	call   425b4 <check_keyboard()>
    switch (regs->reg_intno) {
   411ae:	8b b3 98 00 00 00    	mov    0x98(%rbx),%esi
   411b4:	83 fe 0e             	cmp    $0xe,%esi
   411b7:	74 22                	je     411db <exception(regstate*)+0x77>
   411b9:	83 fe 20             	cmp    $0x20,%esi
   411bc:	0f 85 a3 00 00 00    	jne    41265 <exception(regstate*)+0x101>
      { return __atomic_add_fetch(&_M_i, 1, int(memory_order_seq_cst)); }
   411c2:	f0 48 83 05 65 1d 01 	lock addq $0x1,0x11d65(%rip)        # 52f30 <ticks>
   411c9:	00 01 
}
inline uint32_t lapicstate::read(int reg) const {
    return reg_[reg].v;
}
inline void lapicstate::write(int reg, uint32_t v) {
    reg_[reg].v = v;
   411cb:	b8 b0 00 e0 fe       	mov    $0xfee000b0,%eax
   411d0:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
        schedule();
   411d6:	e8 da fe ff ff       	call   410b5 <schedule()>
    asm volatile("movq %0, %%cr0" : : "r" (x));
}

__always_inline uintptr_t rdcr2() {
    uintptr_t x;
    asm volatile("movq %%cr2, %0" : "=r" (x));
   411db:	0f 20 d6             	mov    %cr2,%rsi
        const char* operation = regs->reg_errcode & PFERR_WRITE
   411de:	48 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%rax
                ? "write" : "read";
   411e5:	a8 02                	test   $0x2,%al
   411e7:	41 b9 de 40 04 00    	mov    $0x440de,%r9d
   411ed:	ba d8 40 04 00       	mov    $0x440d8,%edx
   411f2:	4c 0f 45 ca          	cmovne %rdx,%r9
                ? "protection problem" : "missing page";
   411f6:	a8 01                	test   $0x1,%al
   411f8:	b9 f6 40 04 00       	mov    $0x440f6,%ecx
   411fd:	ba e3 40 04 00       	mov    $0x440e3,%edx
   41202:	48 0f 45 ca          	cmovne %rdx,%rcx
        if (!(regs->reg_errcode & PFERR_USER)) {
   41206:	a8 04                	test   $0x4,%al
   41208:	74 42                	je     4124c <exception(regstate*)+0xe8>
        console_printf(CPOS(24, 0), 0x0C00,
   4120a:	48 8b 05 ef 0f 01 00 	mov    0x10fef(%rip),%rax        # 52200 <current>
   41211:	8b 40 08             	mov    0x8(%rax),%eax
   41214:	ff b3 a8 00 00 00    	push   0xa8(%rbx)
   4121a:	51                   	push   %rcx
   4121b:	49 89 f0             	mov    %rsi,%r8
   4121e:	89 c1                	mov    %eax,%ecx
   41220:	ba 10 44 04 00       	mov    $0x44410,%edx
   41225:	be 00 0c 00 00       	mov    $0xc00,%esi
   4122a:	bf 80 07 00 00       	mov    $0x780,%edi
   4122f:	b8 00 00 00 00       	mov    $0x0,%eax
   41234:	e8 72 2d 00 00       	call   43fab <console_printf(int, int, char const*, ...)>
        current->state = P_BROKEN;
   41239:	48 8b 05 c0 0f 01 00 	mov    0x10fc0(%rip),%rax        # 52200 <current>
   41240:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%rax)
        schedule();
   41247:	e8 69 fe ff ff       	call   410b5 <schedule()>
            panic("Kernel page fault for %p (%s %s, rip=%p)!\n",
   4124c:	4c 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%r8
   41253:	4c 89 ca             	mov    %r9,%rdx
   41256:	bf e0 43 04 00       	mov    $0x443e0,%edi
   4125b:	b8 00 00 00 00       	mov    $0x0,%eax
   41260:	e8 70 14 00 00       	call   426d5 <panic(char const*, ...)>
        panic("Unexpected exception %d!\n", regs->reg_intno);
   41265:	bf 03 41 04 00       	mov    $0x44103,%edi
   4126a:	b8 00 00 00 00       	mov    $0x0,%eax
   4126f:	e8 61 14 00 00       	call   426d5 <panic(char const*, ...)>

0000000000041274 <syscall(regstate*)>:
uintptr_t syscall(regstate* regs) {
   41274:	f3 0f 1e fa          	endbr64
   41278:	55                   	push   %rbp
   41279:	48 89 e5             	mov    %rsp,%rbp
   4127c:	53                   	push   %rbx
   4127d:	48 83 ec 08          	sub    $0x8,%rsp
   41281:	48 89 fe             	mov    %rdi,%rsi
    current->regs = *regs;
   41284:	48 8b 1d 75 0f 01 00 	mov    0x10f75(%rip),%rbx        # 52200 <current>
   4128b:	48 8d 7b 10          	lea    0x10(%rbx),%rdi
   4128f:	b9 18 00 00 00       	mov    $0x18,%ecx
   41294:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    console_show_cursor(cursorpos);
   41297:	8b 3d 5f 7d 07 00    	mov    0x77d5f(%rip),%edi        # b8ffc <cursorpos>
   4129d:	e8 bc 06 00 00       	call   4195e <console_show_cursor(int)>
    memshow();
   412a2:	e8 25 fd ff ff       	call   40fcc <memshow()>
    check_keyboard();
   412a7:	e8 08 13 00 00       	call   425b4 <check_keyboard()>
    switch (regs->reg_rax) {
   412ac:	48 8b 73 10          	mov    0x10(%rbx),%rsi
   412b0:	48 83 fe 02          	cmp    $0x2,%rsi
   412b4:	74 48                	je     412fe <syscall(regstate*)+0x8a>
   412b6:	77 17                	ja     412cf <syscall(regstate*)+0x5b>
   412b8:	48 83 fe 01          	cmp    $0x1,%rsi
   412bc:	75 54                	jne    41312 <syscall(regstate*)+0x9e>
        return current->pid;
   412be:	48 8b 05 3b 0f 01 00 	mov    0x10f3b(%rip),%rax        # 52200 <current>
   412c5:	48 63 40 08          	movslq 0x8(%rax),%rax
}
   412c9:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
   412cd:	c9                   	leave
   412ce:	c3                   	ret
    switch (regs->reg_rax) {
   412cf:	48 83 fe 03          	cmp    $0x3,%rsi
   412d3:	74 1a                	je     412ef <syscall(regstate*)+0x7b>
   412d5:	48 83 fe 04          	cmp    $0x4,%rsi
   412d9:	75 37                	jne    41312 <syscall(regstate*)+0x9e>
        return syscall_page_alloc(current->regs.reg_rdi);
   412db:	48 8b 05 1e 0f 01 00 	mov    0x10f1e(%rip),%rax        # 52200 <current>
   412e2:	48 8b 78 40          	mov    0x40(%rax),%rdi
   412e6:	e8 d8 fa ff ff       	call   40dc3 <syscall_page_alloc(unsigned long)>
   412eb:	48 98                	cltq
   412ed:	eb da                	jmp    412c9 <syscall(regstate*)+0x55>
        panic(nullptr);         // does not return
   412ef:	bf 00 00 00 00       	mov    $0x0,%edi
   412f4:	b8 00 00 00 00       	mov    $0x0,%eax
   412f9:	e8 d7 13 00 00       	call   426d5 <panic(char const*, ...)>
        current->regs.reg_rax = 0;
   412fe:	48 8b 05 fb 0e 01 00 	mov    0x10efb(%rip),%rax        # 52200 <current>
   41305:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
   4130c:	00 
        schedule();             // does not return
   4130d:	e8 a3 fd ff ff       	call   410b5 <schedule()>
        panic("Unexpected system call %ld!\n", regs->reg_rax);
   41312:	bf 1d 41 04 00       	mov    $0x4411d,%edi
   41317:	b8 00 00 00 00       	mov    $0x0,%eax
   4131c:	e8 b4 13 00 00       	call   426d5 <panic(char const*, ...)>
   41321:	90                   	nop

0000000000041322 <vmiter::down()>:
#include "k-vmiter.hh"

const x86_64_pageentry_t vmiter::zero_pe = 0;

void vmiter::down() {
   41322:	f3 0f 1e fa          	endbr64
   41326:	48 89 f8             	mov    %rdi,%rax
    while (level_ > 0 && (*pep_ & (PTE_P | PTE_PS)) == PTE_P) {
   41329:	8b 77 10             	mov    0x10(%rdi),%esi
   4132c:	85 f6                	test   %esi,%esi
   4132e:	7e 53                	jle    41383 <vmiter::down()+0x61>
   41330:	8d 4c f6 03          	lea    0x3(%rsi,%rsi,8),%ecx
        perm_ &= *pep_;
        --level_;
        uintptr_t pa = *pep_ & PTE_PAMASK;
   41334:	49 b9 00 f0 ff ff ff 	movabs $0xffffffffff000,%r9
   4133b:	ff 0f 00 
    while (level_ > 0 && (*pep_ & (PTE_P | PTE_PS)) == PTE_P) {
   4133e:	48 8b 78 08          	mov    0x8(%rax),%rdi
   41342:	48 8b 17             	mov    (%rdi),%rdx
   41345:	49 89 d0             	mov    %rdx,%r8
   41348:	41 81 e0 81 00 00 00 	and    $0x81,%r8d
   4134f:	49 83 f8 01          	cmp    $0x1,%r8
   41353:	75 2e                	jne    41383 <vmiter::down()+0x61>
        perm_ &= *pep_;
   41355:	21 50 14             	and    %edx,0x14(%rax)
        --level_;
   41358:	83 ee 01             	sub    $0x1,%esi
   4135b:	89 70 10             	mov    %esi,0x10(%rax)
        uintptr_t pa = *pep_ & PTE_PAMASK;
   4135e:	4c 89 ca             	mov    %r9,%rdx
   41361:	48 23 17             	and    (%rdi),%rdx
   41364:	48 89 d7             	mov    %rdx,%rdi
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
   41367:	48 8b 50 18          	mov    0x18(%rax),%rdx
   4136b:	48 d3 ea             	shr    %cl,%rdx
        x86_64_pagetable* pt = reinterpret_cast<x86_64_pagetable*>(pa);
        pep_ = &pt->entry[pageindex(va_, level_)];
   4136e:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
   41374:	48 8d 14 d7          	lea    (%rdi,%rdx,8),%rdx
   41378:	48 89 50 08          	mov    %rdx,0x8(%rax)
    while (level_ > 0 && (*pep_ & (PTE_P | PTE_PS)) == PTE_P) {
   4137c:	83 e9 09             	sub    $0x9,%ecx
   4137f:	85 f6                	test   %esi,%esi
   41381:	75 bb                	jne    4133e <vmiter::down()+0x1c>
    }
    if ((*pep_ & PTE_PAMASK) >= 0x100000000UL) {
   41383:	48 8b 50 08          	mov    0x8(%rax),%rdx
   41387:	48 8b 0a             	mov    (%rdx),%rcx
   4138a:	48 ba 00 f0 ff ff ff 	movabs $0xffffffffff000,%rdx
   41391:	ff 0f 00 
   41394:	48 21 ca             	and    %rcx,%rdx
   41397:	48 c1 ea 20          	shr    $0x20,%rdx
   4139b:	75 01                	jne    4139e <vmiter::down()+0x7c>
   4139d:	c3                   	ret
void vmiter::down() {
   4139e:	55                   	push   %rbp
   4139f:	48 89 e5             	mov    %rsp,%rbp
        panic("Page table %p may contain uninitialized memory!\n"
   413a2:	48 89 ca             	mov    %rcx,%rdx
   413a5:	48 8b 30             	mov    (%rax),%rsi
   413a8:	bf 40 44 04 00       	mov    $0x44440,%edi
   413ad:	b8 00 00 00 00       	mov    $0x0,%eax
   413b2:	e8 1e 13 00 00       	call   426d5 <panic(char const*, ...)>
   413b7:	90                   	nop

00000000000413b8 <vmiter::real_find(unsigned long)>:
              "(Page table contents: %p)\n", pt_, *pep_);
    }
}

void vmiter::real_find(uintptr_t va) {
   413b8:	f3 0f 1e fa          	endbr64
   413bc:	55                   	push   %rbp
   413bd:	48 89 e5             	mov    %rsp,%rbp
   413c0:	48 89 f0             	mov    %rsi,%rax
    if (level_ == 3 || ((va_ ^ va) & ~pageoffmask(level_ + 1)) != 0) {
   413c3:	8b 57 10             	mov    0x10(%rdi),%edx
   413c6:	83 fa 03             	cmp    $0x3,%edx
   413c9:	74 1d                	je     413e8 <vmiter::real_find(unsigned long)+0x30>
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   413cb:	8d 74 d2 09          	lea    0x9(%rdx,%rdx,8),%esi
   413cf:	8d 4e 0c             	lea    0xc(%rsi),%ecx
   413d2:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
   413d9:	48 d3 e2             	shl    %cl,%rdx
   413dc:	48 89 c1             	mov    %rax,%rcx
   413df:	48 33 4f 18          	xor    0x18(%rdi),%rcx
   413e3:	48 85 ca             	test   %rcx,%rdx
   413e6:	74 31                	je     41419 <vmiter::real_find(unsigned long)+0x61>
        level_ = 3;
   413e8:	c7 47 10 03 00 00 00 	movl   $0x3,0x10(%rdi)
    return va <= VA_LOWMAX || va >= VA_HIGHMIN;
   413ef:	48 ba 00 00 00 00 00 	movabs $0xffff800000000000,%rdx
   413f6:	80 ff ff 
   413f9:	48 01 c2             	add    %rax,%rdx
        if (va_is_canonical(va)) {
   413fc:	48 b9 ff ff ff ff ff 	movabs $0xfffeffffffffffff,%rcx
   41403:	ff fe ff 
   41406:	48 39 d1             	cmp    %rdx,%rcx
   41409:	72 39                	jb     41444 <vmiter::real_find(unsigned long)+0x8c>
            perm_ = initial_perm;
            pep_ = &pt_->entry[pageindex(va, level_)];
        } else {
            perm_ = 0;
   4140b:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%rdi)
   41412:	ba b8 47 04 00       	mov    $0x447b8,%edx
   41417:	eb 42                	jmp    4145b <vmiter::real_find(unsigned long)+0xa3>
            pep_ = const_cast<x86_64_pageentry_t*>(&zero_pe);
        }
    } else {
        int curidx = (reinterpret_cast<uintptr_t>(pep_) & PAGEOFFMASK) >> 3;
   41419:	4c 8b 47 08          	mov    0x8(%rdi),%r8
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
   4141d:	8d 4e 03             	lea    0x3(%rsi),%ecx
   41420:	48 89 c2             	mov    %rax,%rdx
   41423:	48 d3 ea             	shr    %cl,%rdx
   41426:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
   4142c:	4c 89 c1             	mov    %r8,%rcx
   4142f:	48 c1 e9 03          	shr    $0x3,%rcx
   41433:	81 e1 ff 01 00 00    	and    $0x1ff,%ecx
        pep_ += pageindex(va, level_) - curidx;
   41439:	29 ca                	sub    %ecx,%edx
   4143b:	48 63 d2             	movslq %edx,%rdx
   4143e:	49 8d 14 d0          	lea    (%r8,%rdx,8),%rdx
   41442:	eb 17                	jmp    4145b <vmiter::real_find(unsigned long)+0xa3>
            perm_ = initial_perm;
   41444:	c7 47 14 ff 0f 00 00 	movl   $0xfff,0x14(%rdi)
            pep_ = &pt_->entry[pageindex(va, level_)];
   4144b:	48 89 c2             	mov    %rax,%rdx
   4144e:	48 c1 ea 24          	shr    $0x24,%rdx
   41452:	81 e2 f8 0f 00 00    	and    $0xff8,%edx
   41458:	48 03 17             	add    (%rdi),%rdx
            pep_ = const_cast<x86_64_pageentry_t*>(&zero_pe);
   4145b:	48 89 57 08          	mov    %rdx,0x8(%rdi)
    }
    va_ = va;
   4145f:	48 89 47 18          	mov    %rax,0x18(%rdi)
    down();
   41463:	e8 ba fe ff ff       	call   41322 <vmiter::down()>
}
   41468:	5d                   	pop    %rbp
   41469:	c3                   	ret

000000000004146a <vmiter::next()>:

void vmiter::next() {
   4146a:	f3 0f 1e fa          	endbr64
   4146e:	55                   	push   %rbp
   4146f:	48 89 e5             	mov    %rsp,%rbp
    int level = 0;
    if (level_ > 0 && !perm()) {
   41472:	8b 47 10             	mov    0x10(%rdi),%eax
   41475:	85 c0                	test   %eax,%eax
   41477:	7e 1d                	jle    41496 <vmiter::next()+0x2c>
    if (*pep_ & PTE_P) {
   41479:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   4147d:	48 8b 12             	mov    (%rdx),%rdx
   41480:	f6 c2 01             	test   $0x1,%dl
   41483:	74 16                	je     4149b <vmiter::next()+0x31>
        return *pep_ & perm_;
   41485:	48 63 4f 14          	movslq 0x14(%rdi),%rcx
    int level = 0;
   41489:	48 85 d1             	test   %rdx,%rcx
   4148c:	ba 00 00 00 00       	mov    $0x0,%edx
   41491:	0f 45 c2             	cmovne %edx,%eax
   41494:	eb 05                	jmp    4149b <vmiter::next()+0x31>
   41496:	b8 00 00 00 00       	mov    $0x0,%eax
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   4149b:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   4149f:	be 01 00 00 00       	mov    $0x1,%esi
   414a4:	48 d3 e6             	shl    %cl,%rsi
   414a7:	48 83 ee 01          	sub    $0x1,%rsi
        level = level_;
    }
    real_find((va_ | pageoffmask(level)) + 1);
   414ab:	48 0b 77 18          	or     0x18(%rdi),%rsi
   414af:	48 83 c6 01          	add    $0x1,%rsi
   414b3:	e8 00 ff ff ff       	call   413b8 <vmiter::real_find(unsigned long)>
}
   414b8:	5d                   	pop    %rbp
   414b9:	c3                   	ret

00000000000414ba <vmiter::try_map(unsigned long, int)>:

int vmiter::try_map(uintptr_t pa, int perm) {
   414ba:	f3 0f 1e fa          	endbr64
   414be:	55                   	push   %rbp
   414bf:	48 89 e5             	mov    %rsp,%rbp
   414c2:	41 57                	push   %r15
   414c4:	41 56                	push   %r14
   414c6:	41 55                	push   %r13
   414c8:	41 54                	push   %r12
   414ca:	53                   	push   %rbx
   414cb:	48 83 ec 08          	sub    $0x8,%rsp
   414cf:	49 89 fc             	mov    %rdi,%r12
   414d2:	49 89 f7             	mov    %rsi,%r15
   414d5:	41 89 d6             	mov    %edx,%r14d
    if (pa == (uintptr_t) -1 && perm == 0) {
   414d8:	48 83 fe ff          	cmp    $0xffffffffffffffff,%rsi
   414dc:	75 25                	jne    41503 <vmiter::try_map(unsigned long, int)+0x49>
   414de:	85 d2                	test   %edx,%edx
   414e0:	75 21                	jne    41503 <vmiter::try_map(unsigned long, int)+0x49>
        pa = 0;
    }
    assert(!(va_ & PAGEOFFMASK));
   414e2:	4c 8b 7f 18          	mov    0x18(%rdi),%r15
   414e6:	41 81 e7 ff 0f 00 00 	and    $0xfff,%r15d
   414ed:	74 45                	je     41534 <vmiter::try_map(unsigned long, int)+0x7a>
   414ef:	ba 3a 41 04 00       	mov    $0x4413a,%edx
   414f4:	be 31 00 00 00       	mov    $0x31,%esi
   414f9:	bf 4f 41 04 00       	mov    $0x4414f,%edi
   414fe:	e8 0b 08 00 00       	call   41d0e <assert_fail(char const*, int, char const*)>
   41503:	66 41 f7 44 24 18 ff 	testw  $0xfff,0x18(%r12)
   4150a:	0f 
   4150b:	75 e2                	jne    414ef <vmiter::try_map(unsigned long, int)+0x35>
    if (perm & PTE_P) {
   4150d:	41 f6 c6 01          	test   $0x1,%r14b
   41511:	0f 84 e2 00 00 00    	je     415f9 <vmiter::try_map(unsigned long, int)+0x13f>
        assert(pa != (uintptr_t) -1);
   41517:	49 83 ff ff          	cmp    $0xffffffffffffffff,%r15
   4151b:	0f 84 b0 00 00 00    	je     415d1 <vmiter::try_map(unsigned long, int)+0x117>
        assert((pa & PTE_PAMASK) == pa);
   41521:	48 b8 ff 0f 00 00 00 	movabs $0xfff0000000000fff,%rax
   41528:	00 f0 ff 
   4152b:	49 85 c7             	test   %rax,%r15
   4152e:	0f 85 b1 00 00 00    	jne    415e5 <vmiter::try_map(unsigned long, int)+0x12b>
    } else {
        assert(!(pa & PTE_P));
    }
    assert(!(perm & ~perm_ & (PTE_P | PTE_W | PTE_U)));
   41534:	45 8b 6c 24 14       	mov    0x14(%r12),%r13d
   41539:	41 f7 d5             	not    %r13d
   4153c:	45 21 f5             	and    %r14d,%r13d
   4153f:	41 83 e5 07          	and    $0x7,%r13d
   41543:	0f 85 ce 00 00 00    	jne    41617 <vmiter::try_map(unsigned long, int)+0x15d>

    while (level_ > 0 && perm) {
   41549:	41 8b 44 24 10       	mov    0x10(%r12),%eax
   4154e:	45 85 f6             	test   %r14d,%r14d
   41551:	74 57                	je     415aa <vmiter::try_map(unsigned long, int)+0xf0>
   41553:	85 c0                	test   %eax,%eax
   41555:	7e 53                	jle    415aa <vmiter::try_map(unsigned long, int)+0xf0>
        assert(!(*pep_ & PTE_P));
   41557:	49 8b 44 24 08       	mov    0x8(%r12),%rax
   4155c:	f6 00 01             	testb  $0x1,(%rax)
   4155f:	0f 85 c6 00 00 00    	jne    4162b <vmiter::try_map(unsigned long, int)+0x171>
        x86_64_pagetable* pt = (x86_64_pagetable*) kalloc(PAGESIZE);
   41565:	bf 00 10 00 00       	mov    $0x1000,%edi
   4156a:	e8 d2 f7 ff ff       	call   40d41 <kalloc(unsigned long)>
   4156f:	48 89 c3             	mov    %rax,%rbx
        if (!pt) {
   41572:	48 85 c0             	test   %rax,%rax
   41575:	0f 84 c4 00 00 00    	je     4163f <vmiter::try_map(unsigned long, int)+0x185>
            return -1;
        }
        memset(pt, 0, PAGESIZE);
   4157b:	ba 00 10 00 00       	mov    $0x1000,%edx
   41580:	be 00 00 00 00       	mov    $0x0,%esi
   41585:	48 89 c7             	mov    %rax,%rdi
   41588:	e8 fb 1e 00 00       	call   43488 <memset>
        *pep_ = (uintptr_t) pt | PTE_P | PTE_W | PTE_U;
   4158d:	49 8b 44 24 08       	mov    0x8(%r12),%rax
   41592:	48 83 cb 07          	or     $0x7,%rbx
   41596:	48 89 18             	mov    %rbx,(%rax)
        down();
   41599:	4c 89 e7             	mov    %r12,%rdi
   4159c:	e8 81 fd ff ff       	call   41322 <vmiter::down()>
    while (level_ > 0 && perm) {
   415a1:	41 8b 44 24 10       	mov    0x10(%r12),%eax
   415a6:	85 c0                	test   %eax,%eax
   415a8:	7f ad                	jg     41557 <vmiter::try_map(unsigned long, int)+0x9d>
    }

    if (level_ == 0) {
   415aa:	85 c0                	test   %eax,%eax
   415ac:	75 11                	jne    415bf <vmiter::try_map(unsigned long, int)+0x105>
        *pep_ = pa | perm;
   415ae:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
   415b3:	4d 63 f6             	movslq %r14d,%r14
   415b6:	4d 09 fe             	or     %r15,%r14
   415b9:	4c 89 32             	mov    %r14,(%rdx)
    }
    return 0;
   415bc:	41 89 c5             	mov    %eax,%r13d
}
   415bf:	44 89 e8             	mov    %r13d,%eax
   415c2:	48 83 c4 08          	add    $0x8,%rsp
   415c6:	5b                   	pop    %rbx
   415c7:	41 5c                	pop    %r12
   415c9:	41 5d                	pop    %r13
   415cb:	41 5e                	pop    %r14
   415cd:	41 5f                	pop    %r15
   415cf:	5d                   	pop    %rbp
   415d0:	c3                   	ret
        assert(pa != (uintptr_t) -1);
   415d1:	ba 5b 41 04 00       	mov    $0x4415b,%edx
   415d6:	be 33 00 00 00       	mov    $0x33,%esi
   415db:	bf 4f 41 04 00       	mov    $0x4414f,%edi
   415e0:	e8 29 07 00 00       	call   41d0e <assert_fail(char const*, int, char const*)>
        assert((pa & PTE_PAMASK) == pa);
   415e5:	ba 70 41 04 00       	mov    $0x44170,%edx
   415ea:	be 34 00 00 00       	mov    $0x34,%esi
   415ef:	bf 4f 41 04 00       	mov    $0x4414f,%edi
   415f4:	e8 15 07 00 00       	call   41d0e <assert_fail(char const*, int, char const*)>
        assert(!(pa & PTE_P));
   415f9:	41 f6 c7 01          	test   $0x1,%r15b
   415fd:	0f 84 31 ff ff ff    	je     41534 <vmiter::try_map(unsigned long, int)+0x7a>
   41603:	ba 88 41 04 00       	mov    $0x44188,%edx
   41608:	be 36 00 00 00       	mov    $0x36,%esi
   4160d:	bf 4f 41 04 00       	mov    $0x4414f,%edi
   41612:	e8 f7 06 00 00       	call   41d0e <assert_fail(char const*, int, char const*)>
    assert(!(perm & ~perm_ & (PTE_P | PTE_W | PTE_U)));
   41617:	ba 90 44 04 00       	mov    $0x44490,%edx
   4161c:	be 38 00 00 00       	mov    $0x38,%esi
   41621:	bf 4f 41 04 00       	mov    $0x4414f,%edi
   41626:	e8 e3 06 00 00       	call   41d0e <assert_fail(char const*, int, char const*)>
        assert(!(*pep_ & PTE_P));
   4162b:	ba 96 41 04 00       	mov    $0x44196,%edx
   41630:	be 3b 00 00 00       	mov    $0x3b,%esi
   41635:	bf 4f 41 04 00       	mov    $0x4414f,%edi
   4163a:	e8 cf 06 00 00       	call   41d0e <assert_fail(char const*, int, char const*)>
            return -1;
   4163f:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
   41645:	e9 75 ff ff ff       	jmp    415bf <vmiter::try_map(unsigned long, int)+0x105>

000000000004164a <ptiter::down(bool)>:
    pep_ = &pt_->entry[pageindex(va, level_)];
    va_ = va;
    down(false);
}

void ptiter::down(bool skip) {
   4164a:	f3 0f 1e fa          	endbr64
   4164e:	55                   	push   %rbp
   4164f:	48 89 e5             	mov    %rsp,%rbp
   41652:	41 55                	push   %r13
   41654:	41 54                	push   %r12
   41656:	53                   	push   %rbx
    int stop_level = 1;
   41657:	41 ba 01 00 00 00    	mov    $0x1,%r10d
   4165d:	41 b8 01 00 00 00    	mov    $0x1,%r8d
        if ((*pep_ & (PTE_P | PTE_PS)) == PTE_P && !skip) {
            if (level_ == stop_level) {
                break;
            } else {
                --level_;
                uintptr_t pa = *pep_ & PTE_PAMASK;
   41663:	49 bb 00 f0 ff ff ff 	movabs $0xffffffffff000,%r11
   4166a:	ff 0f 00 
void ptiter::down(bool skip) {
   4166d:	41 b9 00 00 00 00    	mov    $0x0,%r9d
   41673:	eb 53                	jmp    416c8 <ptiter::down(bool)+0x7e>
            if (level_ == stop_level) {
   41675:	8b 47 10             	mov    0x10(%rdi),%eax
   41678:	44 39 d0             	cmp    %r10d,%eax
   4167b:	74 35                	je     416b2 <ptiter::down(bool)+0x68>
                --level_;
   4167d:	83 e8 01             	sub    $0x1,%eax
   41680:	89 47 10             	mov    %eax,0x10(%rdi)
                uintptr_t pa = *pep_ & PTE_PAMASK;
   41683:	4c 89 da             	mov    %r11,%rdx
   41686:	49 23 14 24          	and    (%r12),%rdx
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
   4168a:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   4168e:	48 8b 47 18          	mov    0x18(%rdi),%rax
   41692:	48 d3 e8             	shr    %cl,%rax
                x86_64_pagetable* pt = reinterpret_cast<x86_64_pagetable*>(pa);
                pep_ = &pt->entry[pageindex(va_, level_)];
   41695:	25 ff 01 00 00       	and    $0x1ff,%eax
   4169a:	48 8d 04 c2          	lea    (%rdx,%rax,8),%rax
   4169e:	48 89 47 08          	mov    %rax,0x8(%rdi)
            }
        } else {
   416a2:	eb 21                	jmp    416c5 <ptiter::down(bool)+0x7b>
            uintptr_t va = (va_ | pageoffmask(level_)) + 1;
            if ((va ^ va_) & ~pageoffmask(level_ + 1)) {
                // up one level
                if (level_ == 3) {
                    va_ = VA_NONCANONMAX + 1;
   416a4:	48 b8 00 00 00 00 00 	movabs $0x1000000000000,%rax
   416ab:	00 01 00 
   416ae:	48 89 47 18          	mov    %rax,0x18(%rdi)
                va_ = va;
            }
            skip = false;
        }
    }
}
   416b2:	5b                   	pop    %rbx
   416b3:	41 5c                	pop    %r12
   416b5:	41 5d                	pop    %r13
   416b7:	5d                   	pop    %rbp
   416b8:	c3                   	ret
                ++pep_;
   416b9:	49 83 c4 08          	add    $0x8,%r12
   416bd:	4c 89 67 08          	mov    %r12,0x8(%rdi)
                va_ = va;
   416c1:	48 89 47 18          	mov    %rax,0x18(%rdi)
void ptiter::down(bool skip) {
   416c5:	44 89 ce             	mov    %r9d,%esi
        if ((*pep_ & (PTE_P | PTE_PS)) == PTE_P && !skip) {
   416c8:	4c 8b 67 08          	mov    0x8(%rdi),%r12
   416cc:	49 8b 04 24          	mov    (%r12),%rax
   416d0:	25 81 00 00 00       	and    $0x81,%eax
   416d5:	48 83 f8 01          	cmp    $0x1,%rax
   416d9:	75 05                	jne    416e0 <ptiter::down(bool)+0x96>
   416db:	40 84 f6             	test   %sil,%sil
   416de:	74 95                	je     41675 <ptiter::down(bool)+0x2b>
            uintptr_t va = (va_ | pageoffmask(level_)) + 1;
   416e0:	48 8b 77 18          	mov    0x18(%rdi),%rsi
   416e4:	44 8b 6f 10          	mov    0x10(%rdi),%r13d
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   416e8:	43 8d 5c ed 00       	lea    0x0(%r13,%r13,8),%ebx
   416ed:	8d 4b 0c             	lea    0xc(%rbx),%ecx
   416f0:	4c 89 c2             	mov    %r8,%rdx
   416f3:	48 d3 e2             	shl    %cl,%rdx
   416f6:	48 83 ea 01          	sub    $0x1,%rdx
   416fa:	48 09 f2             	or     %rsi,%rdx
   416fd:	48 8d 42 01          	lea    0x1(%rdx),%rax
   41701:	8d 4b 15             	lea    0x15(%rbx),%ecx
   41704:	4c 89 c2             	mov    %r8,%rdx
   41707:	48 d3 e2             	shl    %cl,%rdx
            if ((va ^ va_) & ~pageoffmask(level_ + 1)) {
   4170a:	48 f7 da             	neg    %rdx
   4170d:	48 89 f1             	mov    %rsi,%rcx
   41710:	48 31 c1             	xor    %rax,%rcx
   41713:	48 85 ca             	test   %rcx,%rdx
   41716:	74 a1                	je     416b9 <ptiter::down(bool)+0x6f>
                if (level_ == 3) {
   41718:	41 83 fd 03          	cmp    $0x3,%r13d
   4171c:	74 86                	je     416a4 <ptiter::down(bool)+0x5a>
            if ((va ^ va_) & ~pageoffmask(level_ + 1)) {
   4171e:	45 8d 55 01          	lea    0x1(%r13),%r10d
                level_ = 3;
   41722:	c7 47 10 03 00 00 00 	movl   $0x3,0x10(%rdi)
                pep_ = &pt_->entry[pageindex(va_, level_)];
   41729:	48 89 f0             	mov    %rsi,%rax
   4172c:	48 c1 e8 24          	shr    $0x24,%rax
   41730:	25 f8 0f 00 00       	and    $0xff8,%eax
   41735:	48 03 07             	add    (%rdi),%rax
   41738:	48 89 47 08          	mov    %rax,0x8(%rdi)
   4173c:	eb 87                	jmp    416c5 <ptiter::down(bool)+0x7b>

000000000004173e <ptiter::go(unsigned long)>:
void ptiter::go(uintptr_t va) {
   4173e:	f3 0f 1e fa          	endbr64
   41742:	55                   	push   %rbp
   41743:	48 89 e5             	mov    %rsp,%rbp
    level_ = 3;
   41746:	c7 47 10 03 00 00 00 	movl   $0x3,0x10(%rdi)
    pep_ = &pt_->entry[pageindex(va, level_)];
   4174d:	48 89 f0             	mov    %rsi,%rax
   41750:	48 c1 e8 24          	shr    $0x24,%rax
   41754:	25 f8 0f 00 00       	and    $0xff8,%eax
   41759:	48 03 07             	add    (%rdi),%rax
   4175c:	48 89 47 08          	mov    %rax,0x8(%rdi)
    va_ = va;
   41760:	48 89 77 18          	mov    %rsi,0x18(%rdi)
    down(false);
   41764:	be 00 00 00 00       	mov    $0x0,%esi
   41769:	e8 dc fe ff ff       	call   4164a <ptiter::down(bool)>
}
   4176e:	5d                   	pop    %rbp
   4176f:	c3                   	ret

0000000000041770 <(anonymous namespace)::log_printer::putc(unsigned char, int)>:
         | IO_PARALLEL_CONTROL_INIT);
}

namespace {
struct log_printer : public printer {
    void putc(unsigned char c, int) override {
   41770:	f3 0f 1e fa          	endbr64
   41774:	41 89 f0             	mov    %esi,%r8d
    if (!initialized) {
   41777:	83 3d 86 d8 01 00 00 	cmpl   $0x0,0x1d886(%rip)        # 5f004 <parallel_port_putc(unsigned char)::initialized>
   4177e:	75 15                	jne    41795 <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x25>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
   41780:	b8 00 00 00 00       	mov    $0x0,%eax
   41785:	ba 7a 03 00 00       	mov    $0x37a,%edx
   4178a:	ee                   	out    %al,(%dx)
        initialized = 1;
   4178b:	c7 05 6f d8 01 00 01 	movl   $0x1,0x1d86f(%rip)        # 5f004 <parallel_port_putc(unsigned char)::initialized>
   41792:	00 00 00 
    asm volatile("inb %w1, %0" : "=a" (data) : "d" (port));
   41795:	ba 79 03 00 00       	mov    $0x379,%edx
   4179a:	ec                   	in     (%dx),%al
         i < 12800 && (inb(IO_PARALLEL1_STATUS) & IO_PARALLEL_STATUS_BUSY) == 0;
   4179b:	be 00 32 00 00       	mov    $0x3200,%esi
   417a0:	b9 84 00 00 00       	mov    $0x84,%ecx
   417a5:	bf 79 03 00 00       	mov    $0x379,%edi
   417aa:	84 c0                	test   %al,%al
   417ac:	78 12                	js     417c0 <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x50>
   417ae:	89 ca                	mov    %ecx,%edx
   417b0:	ec                   	in     (%dx),%al
   417b1:	ec                   	in     (%dx),%al
   417b2:	ec                   	in     (%dx),%al
   417b3:	ec                   	in     (%dx),%al
   417b4:	83 ee 01             	sub    $0x1,%esi
   417b7:	74 07                	je     417c0 <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x50>
   417b9:	89 fa                	mov    %edi,%edx
   417bb:	ec                   	in     (%dx),%al
   417bc:	84 c0                	test   %al,%al
   417be:	79 ee                	jns    417ae <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x3e>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
   417c0:	ba 78 03 00 00       	mov    $0x378,%edx
   417c5:	44 89 c0             	mov    %r8d,%eax
   417c8:	ee                   	out    %al,(%dx)
   417c9:	ba 7a 03 00 00       	mov    $0x37a,%edx
   417ce:	b8 0d 00 00 00       	mov    $0xd,%eax
   417d3:	ee                   	out    %al,(%dx)
   417d4:	b8 0c 00 00 00       	mov    $0xc,%eax
   417d9:	ee                   	out    %al,(%dx)
        parallel_port_putc(c);
    }
   417da:	c3                   	ret

00000000000417db <stash_kernel_data(bool)>:

// stash_kernel_data
//    Soft reboot requires that we restore kernel data memory to
//    its initial state, so we store its initial state in unused
//    physical memory.
static void stash_kernel_data(bool reboot) {
   417db:	55                   	push   %rbp
   417dc:	48 89 e5             	mov    %rsp,%rbp
   417df:	89 f8                	mov    %edi,%eax
    // stash initial value of data segment for soft-reboot support
    extern uint8_t _data_start, _edata, _kernel_end;
    uintptr_t data_size = (uintptr_t) &_edata - (uintptr_t) &_data_start;
   417e1:	ba c0 14 05 00       	mov    $0x514c0,%edx
   417e6:	48 81 ea 00 60 04 00 	sub    $0x46000,%rdx
    uint8_t* data_stash = (uint8_t*) (SYMTAB_ADDR - data_size);
   417ed:	bf 00 60 04 01       	mov    $0x1046000,%edi
   417f2:	48 81 ef c0 14 05 00 	sub    $0x514c0,%rdi
    if (reboot) {
   417f9:	84 c0                	test   %al,%al
   417fb:	74 2a                	je     41827 <stash_kernel_data(bool)+0x4c>
        memcpy(&_data_start, data_stash, data_size);
   417fd:	48 89 fe             	mov    %rdi,%rsi
   41800:	bf 00 60 04 00       	mov    $0x46000,%edi
   41805:	e8 0d 1c 00 00       	call   43417 <memcpy>
        memset(&_edata, 0, &_kernel_end - &_edata);
   4180a:	ba 98 f0 05 00       	mov    $0x5f098,%edx
   4180f:	48 81 ea c0 14 05 00 	sub    $0x514c0,%rdx
   41816:	be 00 00 00 00       	mov    $0x0,%esi
   4181b:	bf c0 14 05 00       	mov    $0x514c0,%edi
   41820:	e8 63 1c 00 00       	call   43488 <memset>
    } else {
        memcpy(data_stash, &_data_start, data_size);
    }
}
   41825:	5d                   	pop    %rbp
   41826:	c3                   	ret
        memcpy(data_stash, &_data_start, data_size);
   41827:	be 00 60 04 00       	mov    $0x46000,%esi
   4182c:	e8 e6 1b 00 00       	call   43417 <memcpy>
}
   41831:	eb f2                	jmp    41825 <stash_kernel_data(bool)+0x4a>

0000000000041833 <init_timer(int)>:
void init_timer(int rate) {
   41833:	f3 0f 1e fa          	endbr64
    if (rate > 0) {
   41837:	85 ff                	test   %edi,%edi
   41839:	7e 16                	jle    41851 <init_timer(int)+0x1e>
        lapic.write(lapic.reg_timer_initial_count, 1000000000 / rate);
   4183b:	b8 00 ca 9a 3b       	mov    $0x3b9aca00,%eax
   41840:	ba 00 00 00 00       	mov    $0x0,%edx
   41845:	f7 ff                	idiv   %edi
   41847:	a3 80 03 e0 fe 00 00 	movabs %eax,0xfee00380
   4184e:	00 00 
}
   41850:	c3                   	ret
    reg_[reg].v = v;
   41851:	b8 80 03 e0 fe       	mov    $0xfee00380,%eax
   41856:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
}
   4185c:	c3                   	ret

000000000004185d <reserved_physical_address(unsigned long)>:
bool reserved_physical_address(uintptr_t pa) {
   4185d:	f3 0f 1e fa          	endbr64
    return pa < PAGESIZE || (pa >= IOPHYSMEM && pa < EXTPHYSMEM);
   41861:	48 8d 87 00 00 f6 ff 	lea    -0xa0000(%rdi),%rax
   41868:	48 3d ff ff 05 00    	cmp    $0x5ffff,%rax
   4186e:	0f 96 c0             	setbe  %al
   41871:	48 81 ff ff 0f 00 00 	cmp    $0xfff,%rdi
   41878:	0f 96 c2             	setbe  %dl
   4187b:	09 d0                	or     %edx,%eax
}
   4187d:	c3                   	ret

000000000004187e <allocatable_physical_address(unsigned long)>:
bool allocatable_physical_address(uintptr_t pa) {
   4187e:	f3 0f 1e fa          	endbr64
   41882:	55                   	push   %rbp
   41883:	48 89 e5             	mov    %rsp,%rbp
   41886:	53                   	push   %rbx
   41887:	48 83 ec 08          	sub    $0x8,%rsp
   4188b:	48 89 fb             	mov    %rdi,%rbx
    return !reserved_physical_address(pa)
   4188e:	e8 ca ff ff ff       	call   4185d <reserved_physical_address(unsigned long)>
        && pa < MEMSIZE_PHYSICAL;
   41893:	84 c0                	test   %al,%al
   41895:	75 36                	jne    418cd <allocatable_physical_address(unsigned long)+0x4f>
        && (pa < KERNEL_START_ADDR
   41897:	48 81 fb ff ff 03 00 	cmp    $0x3ffff,%rbx
   4189e:	76 21                	jbe    418c1 <allocatable_physical_address(unsigned long)+0x43>
    return x - (x % multiple);
}
template <typename T>
inline constexpr T round_up(T x, unsigned multiple) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + multiple - 1, multiple);
   418a0:	ba 97 00 06 00       	mov    $0x60097,%edx
            || pa >= round_up((uintptr_t) &_kernel_end, PAGESIZE))
   418a5:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
   418ac:	48 39 d3             	cmp    %rdx,%rbx
   418af:	72 21                	jb     418d2 <allocatable_physical_address(unsigned long)+0x54>
            || pa >= KERNEL_STACK_TOP)
   418b1:	48 8d 93 00 10 f8 ff 	lea    -0x7f000(%rbx),%rdx
        && (pa < KERNEL_STACK_TOP - PAGESIZE
   418b8:	48 81 fa ff 0f 00 00 	cmp    $0xfff,%rdx
   418bf:	76 11                	jbe    418d2 <allocatable_physical_address(unsigned long)+0x54>
        && pa < MEMSIZE_PHYSICAL;
   418c1:	48 81 fb ff ff 1f 00 	cmp    $0x1fffff,%rbx
   418c8:	0f 96 c0             	setbe  %al
   418cb:	eb 05                	jmp    418d2 <allocatable_physical_address(unsigned long)+0x54>
   418cd:	b8 00 00 00 00       	mov    $0x0,%eax
}
   418d2:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
   418d6:	c9                   	leave
   418d7:	c3                   	ret

00000000000418d8 <init_process(proc*, int)>:
void init_process(proc* p, int flags) {
   418d8:	f3 0f 1e fa          	endbr64
   418dc:	55                   	push   %rbp
   418dd:	48 89 e5             	mov    %rsp,%rbp
   418e0:	41 54                	push   %r12
   418e2:	53                   	push   %rbx
   418e3:	48 89 fb             	mov    %rdi,%rbx
   418e6:	41 89 f4             	mov    %esi,%r12d
    memset(&p->regs, 0, sizeof(p->regs));
   418e9:	48 8d 7f 10          	lea    0x10(%rdi),%rdi
   418ed:	ba c0 00 00 00       	mov    $0xc0,%edx
   418f2:	be 00 00 00 00       	mov    $0x0,%esi
   418f7:	e8 8c 1b 00 00       	call   43488 <memset>
    p->regs.reg_cs = SEGSEL_APP_CODE | 3;
   418fc:	48 c7 83 b0 00 00 00 	movq   $0x1b,0xb0(%rbx)
   41903:	1b 00 00 00 
    p->regs.reg_fs = SEGSEL_APP_DATA | 3;
   41907:	48 c7 83 88 00 00 00 	movq   $0x23,0x88(%rbx)
   4190e:	23 00 00 00 
    p->regs.reg_gs = SEGSEL_APP_DATA | 3;
   41912:	48 c7 83 90 00 00 00 	movq   $0x23,0x90(%rbx)
   41919:	23 00 00 00 
    p->regs.reg_ss = SEGSEL_APP_DATA | 3;
   4191d:	48 c7 83 c8 00 00 00 	movq   $0x23,0xc8(%rbx)
   41924:	23 00 00 00 
    if (flags & PROCINIT_ALLOW_PROGRAMMED_IO) {
   41928:	44 89 e0             	mov    %r12d,%eax
   4192b:	83 e0 01             	and    $0x1,%eax
        p->regs.reg_rflags |= EFLAGS_IOPL_3;
   4192e:	83 f8 01             	cmp    $0x1,%eax
   41931:	48 19 c0             	sbb    %rax,%rax
   41934:	48 25 00 d0 ff ff    	and    $0xffffffffffffd000,%rax
   4193a:	48 05 00 32 00 00    	add    $0x3200,%rax
    if (flags & PROCINIT_DISABLE_INTERRUPTS) {
   41940:	41 f6 c4 02          	test   $0x2,%r12b
   41944:	75 09                	jne    4194f <init_process(proc*, int)+0x77>
   41946:	48 89 83 b8 00 00 00 	mov    %rax,0xb8(%rbx)
   4194d:	eb 0a                	jmp    41959 <init_process(proc*, int)+0x81>
        p->regs.reg_rflags &= ~EFLAGS_IF;
   4194f:	80 e4 fd             	and    $0xfd,%ah
   41952:	48 89 83 b8 00 00 00 	mov    %rax,0xb8(%rbx)
}
   41959:	5b                   	pop    %rbx
   4195a:	41 5c                	pop    %r12
   4195c:	5d                   	pop    %rbp
   4195d:	c3                   	ret

000000000004195e <console_show_cursor(int)>:
void console_show_cursor(int cpos) {
   4195e:	f3 0f 1e fa          	endbr64
        cpos = 0;
   41962:	81 ff d1 07 00 00    	cmp    $0x7d1,%edi
   41968:	b8 00 00 00 00       	mov    $0x0,%eax
   4196d:	0f 43 f8             	cmovae %eax,%edi
   41970:	be d4 03 00 00       	mov    $0x3d4,%esi
   41975:	b8 0e 00 00 00       	mov    $0xe,%eax
   4197a:	89 f2                	mov    %esi,%edx
   4197c:	ee                   	out    %al,(%dx)
    outb(0x3D5, cpos / 256);
   4197d:	8d 87 ff 00 00 00    	lea    0xff(%rdi),%eax
   41983:	85 ff                	test   %edi,%edi
   41985:	0f 49 c7             	cmovns %edi,%eax
   41988:	c1 f8 08             	sar    $0x8,%eax
   4198b:	b9 d5 03 00 00       	mov    $0x3d5,%ecx
   41990:	89 ca                	mov    %ecx,%edx
   41992:	ee                   	out    %al,(%dx)
   41993:	b8 0f 00 00 00       	mov    $0xf,%eax
   41998:	89 f2                	mov    %esi,%edx
   4199a:	ee                   	out    %al,(%dx)
    outb(0x3D5, cpos % 256);
   4199b:	89 fa                	mov    %edi,%edx
   4199d:	c1 fa 1f             	sar    $0x1f,%edx
   419a0:	c1 ea 18             	shr    $0x18,%edx
   419a3:	8d 04 17             	lea    (%rdi,%rdx,1),%eax
   419a6:	0f b6 c0             	movzbl %al,%eax
   419a9:	29 d0                	sub    %edx,%eax
   419ab:	89 ca                	mov    %ecx,%edx
   419ad:	ee                   	out    %al,(%dx)
}
   419ae:	c3                   	ret

00000000000419af <keyboard_readc()>:
int keyboard_readc() {
   419af:	f3 0f 1e fa          	endbr64
    asm volatile("inb %w1, %0" : "=a" (data) : "d" (port));
   419b3:	ba 64 00 00 00       	mov    $0x64,%edx
   419b8:	ec                   	in     (%dx),%al
    if ((inb(KEYBOARD_STATUSREG) & KEYBOARD_STATUS_READY) == 0) {
   419b9:	a8 01                	test   $0x1,%al
   419bb:	0f 84 1d 01 00 00    	je     41ade <keyboard_readc()+0x12f>
   419c1:	ba 60 00 00 00       	mov    $0x60,%edx
   419c6:	ec                   	in     (%dx),%al
    uint8_t escape = last_escape;
   419c7:	0f b6 15 3a d6 01 00 	movzbl 0x1d63a(%rip),%edx        # 5f008 <keyboard_readc()::last_escape>
    last_escape = 0;
   419ce:	c6 05 33 d6 01 00 00 	movb   $0x0,0x1d633(%rip)        # 5f008 <keyboard_readc()::last_escape>
    if (data == 0xE0) {         // mode shift
   419d5:	3c e0                	cmp    $0xe0,%al
   419d7:	74 2a                	je     41a03 <keyboard_readc()+0x54>
    } else if (data & 0x80) {   // key release: matters only for modifier keys
   419d9:	84 c0                	test   %al,%al
   419db:	78 33                	js     41a10 <keyboard_readc()+0x61>
    int ch = (unsigned char) keymap[data | escape];
   419dd:	09 c2                	or     %eax,%edx
   419df:	0f b6 d2             	movzbl %dl,%edx
   419e2:	0f b6 82 40 48 04 00 	movzbl 0x44840(%rdx),%eax
    if (ch >= 'a' && ch <= 'z') {
   419e9:	89 c1                	mov    %eax,%ecx
   419eb:	8d 50 9f             	lea    -0x61(%rax),%edx
   419ee:	83 fa 19             	cmp    $0x19,%edx
   419f1:	77 76                	ja     41a69 <keyboard_readc()+0xba>
        if (modifiers & MOD_CONTROL) {
   419f3:	0f b6 15 0f d6 01 00 	movzbl 0x1d60f(%rip),%edx        # 5f009 <keyboard_readc()::modifiers>
   419fa:	f6 c2 02             	test   $0x2,%dl
   419fd:	74 50                	je     41a4f <keyboard_readc()+0xa0>
            ch -= 0x60;
   419ff:	83 e8 60             	sub    $0x60,%eax
   41a02:	c3                   	ret
        last_escape = 0x80;
   41a03:	c6 05 fe d5 01 00 80 	movb   $0x80,0x1d5fe(%rip)        # 5f008 <keyboard_readc()::last_escape>
        return 0;
   41a0a:	b8 00 00 00 00       	mov    $0x0,%eax
   41a0f:	c3                   	ret
        int ch = keymap[(data & 0x7F) | escape];
   41a10:	83 e0 7f             	and    $0x7f,%eax
   41a13:	09 d0                	or     %edx,%eax
   41a15:	0f b6 c0             	movzbl %al,%eax
   41a18:	0f b6 88 40 48 04 00 	movzbl 0x44840(%rax),%ecx
        if (ch >= KEY_SHIFT && ch < KEY_CAPSLOCK) {
   41a1f:	0f b6 d1             	movzbl %cl,%edx
   41a22:	81 ea fa 00 00 00    	sub    $0xfa,%edx
        return 0;
   41a28:	b8 00 00 00 00       	mov    $0x0,%eax
        if (ch >= KEY_SHIFT && ch < KEY_CAPSLOCK) {
   41a2d:	83 fa 02             	cmp    $0x2,%edx
   41a30:	0f 87 ad 00 00 00    	ja     41ae3 <keyboard_readc()+0x134>
            modifiers &= ~(1 << (ch - KEY_SHIFT));
   41a36:	83 c1 06             	add    $0x6,%ecx
   41a39:	0f b6 05 c9 d5 01 00 	movzbl 0x1d5c9(%rip),%eax        # 5f009 <keyboard_readc()::modifiers>
   41a40:	0f b3 c8             	btr    %ecx,%eax
   41a43:	88 05 c0 d5 01 00    	mov    %al,0x1d5c0(%rip)        # 5f009 <keyboard_readc()::modifiers>
        return 0;
   41a49:	b8 00 00 00 00       	mov    $0x0,%eax
   41a4e:	c3                   	ret
        } else if (!(modifiers & MOD_SHIFT) != !(modifiers & MOD_CAPSLOCK)) {
   41a4f:	89 d1                	mov    %edx,%ecx
   41a51:	83 f1 01             	xor    $0x1,%ecx
   41a54:	83 e1 01             	and    $0x1,%ecx
   41a57:	c0 ea 03             	shr    $0x3,%dl
   41a5a:	83 f2 01             	xor    $0x1,%edx
   41a5d:	83 e2 01             	and    $0x1,%edx
            ch -= 0x20;
   41a60:	8d 70 e0             	lea    -0x20(%rax),%esi
   41a63:	38 d1                	cmp    %dl,%cl
   41a65:	0f 45 c6             	cmovne %esi,%eax
   41a68:	c3                   	ret
    } else if (ch >= KEY_CAPSLOCK) {
   41a69:	3d fc 00 00 00       	cmp    $0xfc,%eax
   41a6e:	7e 19                	jle    41a89 <keyboard_readc()+0xda>
        modifiers ^= 1 << (ch - KEY_SHIFT);
   41a70:	8d 88 06 ff ff ff    	lea    -0xfa(%rax),%ecx
   41a76:	ba 01 00 00 00       	mov    $0x1,%edx
   41a7b:	d3 e2                	shl    %cl,%edx
   41a7d:	30 15 86 d5 01 00    	xor    %dl,0x1d586(%rip)        # 5f009 <keyboard_readc()::modifiers>
        ch = 0;
   41a83:	b8 00 00 00 00       	mov    $0x0,%eax
   41a88:	c3                   	ret
    } else if (ch >= KEY_SHIFT) {
   41a89:	3d f9 00 00 00       	cmp    $0xf9,%eax
   41a8e:	7e 19                	jle    41aa9 <keyboard_readc()+0xfa>
        modifiers |= 1 << (ch - KEY_SHIFT);
   41a90:	8d 88 06 ff ff ff    	lea    -0xfa(%rax),%ecx
   41a96:	ba 01 00 00 00       	mov    $0x1,%edx
   41a9b:	d3 e2                	shl    %cl,%edx
   41a9d:	08 15 66 d5 01 00    	or     %dl,0x1d566(%rip)        # 5f009 <keyboard_readc()::modifiers>
        ch = 0;
   41aa3:	b8 00 00 00 00       	mov    $0x0,%eax
   41aa8:	c3                   	ret
    } else if (ch >= CKEY(0) && ch <= CKEY(21)) {
   41aa9:	83 c1 80             	add    $0xffffff80,%ecx
   41aac:	83 f9 15             	cmp    $0x15,%ecx
   41aaf:	77 18                	ja     41ac9 <keyboard_readc()+0x11a>
        ch = complex_keymap[ch - CKEY(0)].map[modifiers & 3];
   41ab1:	0f b6 15 51 d5 01 00 	movzbl 0x1d551(%rip),%edx        # 5f009 <keyboard_readc()::modifiers>
   41ab8:	83 e2 03             	and    $0x3,%edx
   41abb:	83 c0 80             	add    $0xffffff80,%eax
   41abe:	48 98                	cltq
   41ac0:	0f b6 84 82 e0 47 04 	movzbl 0x447e0(%rdx,%rax,4),%eax
   41ac7:	00 
   41ac8:	c3                   	ret
    } else if (ch < 0x80 && (modifiers & MOD_CONTROL)) {
   41ac9:	83 f8 7f             	cmp    $0x7f,%eax
   41acc:	7f 15                	jg     41ae3 <keyboard_readc()+0x134>
        ch = 0;
   41ace:	f6 05 34 d5 01 00 02 	testb  $0x2,0x1d534(%rip)        # 5f009 <keyboard_readc()::modifiers>
   41ad5:	ba 00 00 00 00       	mov    $0x0,%edx
   41ada:	0f 45 c2             	cmovne %edx,%eax
   41add:	c3                   	ret
        return -1;
   41ade:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   41ae3:	c3                   	ret

0000000000041ae4 <lookup_symbol(unsigned long, char const**, unsigned long*)>:
bool lookup_symbol(uintptr_t addr, const char** name, uintptr_t* start) {
   41ae4:	f3 0f 1e fa          	endbr64
   41ae8:	55                   	push   %rbp
   41ae9:	48 89 e5             	mov    %rsp,%rbp
   41aec:	41 55                	push   %r13
   41aee:	41 54                	push   %r12
   41af0:	53                   	push   %rbx
   41af1:	49 89 f9             	mov    %rdi,%r9
   41af4:	48 89 f3             	mov    %rsi,%rbx
   41af7:	49 89 d4             	mov    %rdx,%r12
    if (!kernel_pagetable[2].entry[SYMTAB_ADDR / 0x200000]) {
   41afa:	48 83 3d 3e a5 01 00 	cmpq   $0x0,0x1a53e(%rip)        # 5c040 <kernel_pagetable+0x2040>
   41b01:	00 
   41b02:	75 0b                	jne    41b0f <lookup_symbol(unsigned long, char const**, unsigned long*)+0x2b>
        kernel_pagetable[2].entry[SYMTAB_ADDR / 0x200000] =
   41b04:	48 c7 05 31 a5 01 00 	movq   $0x1000083,0x1a531(%rip)        # 5c040 <kernel_pagetable+0x2040>
   41b0b:	83 00 00 01 
    size_t r = symtab.nsym;
   41b0f:	4c 8b 1d 92 45 00 00 	mov    0x4592(%rip),%r11        # 460a8 <symtab+0x8>
        auto& sym = symtab.sym[m];
   41b16:	4c 8b 15 83 45 00 00 	mov    0x4583(%rip),%r10        # 460a0 <symtab>
    size_t r = symtab.nsym;
   41b1d:	4d 89 d8             	mov    %r11,%r8
    size_t l = 0;
   41b20:	bf 00 00 00 00       	mov    $0x0,%edi
    while (l < r) {
   41b25:	eb 17                	jmp    41b3e <lookup_symbol(unsigned long, char const**, unsigned long*)+0x5a>
                : m + 1 == symtab.nsym || addr < (&sym)[1].st_value)) {
   41b27:	4c 8d 68 01          	lea    0x1(%rax),%r13
                ? addr < sym.st_value + sym.st_size
   41b2b:	4d 39 dd             	cmp    %r11,%r13
   41b2e:	74 45                	je     41b75 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x91>
                : m + 1 == symtab.nsym || addr < (&sym)[1].st_value)) {
   41b30:	4c 3b 49 20          	cmp    0x20(%rcx),%r9
   41b34:	72 3f                	jb     41b75 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x91>
        } else if (symtab.sym[m].st_value < addr) {
   41b36:	4c 39 ce             	cmp    %r9,%rsi
   41b39:	72 6c                	jb     41ba7 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xc3>
    size_t l = 0;
   41b3b:	49 89 c0             	mov    %rax,%r8
    while (l < r) {
   41b3e:	4c 39 c7             	cmp    %r8,%rdi
   41b41:	73 6a                	jae    41bad <lookup_symbol(unsigned long, char const**, unsigned long*)+0xc9>
        size_t m = l + ((r - l) >> 1);
   41b43:	4c 89 c0             	mov    %r8,%rax
   41b46:	48 29 f8             	sub    %rdi,%rax
   41b49:	48 d1 e8             	shr    $1,%rax
   41b4c:	48 01 f8             	add    %rdi,%rax
        auto& sym = symtab.sym[m];
   41b4f:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   41b53:	48 c1 e2 03          	shl    $0x3,%rdx
   41b57:	49 8d 0c 12          	lea    (%r10,%rdx,1),%rcx
        if (sym.st_value <= addr
   41b5b:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   41b5f:	49 39 f1             	cmp    %rsi,%r9
   41b62:	72 d7                	jb     41b3b <lookup_symbol(unsigned long, char const**, unsigned long*)+0x57>
            && (sym.st_size != 0
   41b64:	4c 8b 69 10          	mov    0x10(%rcx),%r13
        if (sym.st_value <= addr
   41b68:	4d 85 ed             	test   %r13,%r13
   41b6b:	74 ba                	je     41b27 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x43>
                ? addr < sym.st_value + sym.st_size
   41b6d:	49 01 f5             	add    %rsi,%r13
            && (sym.st_size != 0
   41b70:	4d 39 e9             	cmp    %r13,%r9
   41b73:	73 c1                	jae    41b36 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x52>
            if (name) {
   41b75:	48 85 db             	test   %rbx,%rbx
   41b78:	74 0c                	je     41b86 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xa2>
                *name = symtab.strtab + symtab.sym[m].st_name;
   41b7a:	8b 01                	mov    (%rcx),%eax
   41b7c:	48 03 05 2d 45 00 00 	add    0x452d(%rip),%rax        # 460b0 <symtab+0x10>
   41b83:	48 89 03             	mov    %rax,(%rbx)
            return true;
   41b86:	b8 01 00 00 00       	mov    $0x1,%eax
            if (start) {
   41b8b:	4d 85 e4             	test   %r12,%r12
   41b8e:	74 22                	je     41bb2 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xce>
                *start = symtab.sym[m].st_value;
   41b90:	48 8b 05 09 45 00 00 	mov    0x4509(%rip),%rax        # 460a0 <symtab>
   41b97:	48 8b 44 10 08       	mov    0x8(%rax,%rdx,1),%rax
   41b9c:	49 89 04 24          	mov    %rax,(%r12)
            return true;
   41ba0:	b8 01 00 00 00       	mov    $0x1,%eax
   41ba5:	eb 0b                	jmp    41bb2 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xce>
            l = m + 1;
   41ba7:	48 8d 78 01          	lea    0x1(%rax),%rdi
   41bab:	eb 91                	jmp    41b3e <lookup_symbol(unsigned long, char const**, unsigned long*)+0x5a>
    return false;
   41bad:	b8 00 00 00 00       	mov    $0x0,%eax
}
   41bb2:	5b                   	pop    %rbx
   41bb3:	41 5c                	pop    %r12
   41bb5:	41 5d                	pop    %r13
   41bb7:	5d                   	pop    %rbp
   41bb8:	c3                   	ret

0000000000041bb9 <log_vprintf(char const*, __va_list_tag*)>:
void log_vprintf(const char* format, va_list val) {
   41bb9:	f3 0f 1e fa          	endbr64
   41bbd:	55                   	push   %rbp
   41bbe:	48 89 e5             	mov    %rsp,%rbp
   41bc1:	48 83 ec 10          	sub    $0x10,%rsp
   41bc5:	48 89 fa             	mov    %rdi,%rdx
   41bc8:	48 89 f1             	mov    %rsi,%rcx
    log_printer p;
   41bcb:	48 c7 45 f8 d0 47 04 	movq   $0x447d0,-0x8(%rbp)
   41bd2:	00 
    p.vprintf(0, format, val);
   41bd3:	be 00 00 00 00       	mov    $0x0,%esi
   41bd8:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
   41bdc:	e8 89 19 00 00       	call   4356a <printer::vprintf(int, char const*, __va_list_tag*)>
}
   41be1:	c9                   	leave
   41be2:	c3                   	ret

0000000000041be3 <log_printf(char const*, ...)>:
void log_printf(const char* format, ...) {
   41be3:	f3 0f 1e fa          	endbr64
   41be7:	55                   	push   %rbp
   41be8:	48 89 e5             	mov    %rsp,%rbp
   41beb:	48 83 ec 50          	sub    $0x50,%rsp
   41bef:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
   41bf3:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   41bf7:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   41bfb:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   41bff:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_start(val, format);
   41c03:	c7 45 b8 08 00 00 00 	movl   $0x8,-0x48(%rbp)
   41c0a:	48 8d 45 10          	lea    0x10(%rbp),%rax
   41c0e:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   41c12:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   41c16:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    log_vprintf(format, val);
   41c1a:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
   41c1e:	e8 96 ff ff ff       	call   41bb9 <log_vprintf(char const*, __va_list_tag*)>
}
   41c23:	c9                   	leave
   41c24:	c3                   	ret

0000000000041c25 <error_vprintf(int, int, char const*, __va_list_tag*)>:
int error_vprintf(int cpos, int color, const char* format, va_list val) {
   41c25:	f3 0f 1e fa          	endbr64
   41c29:	55                   	push   %rbp
   41c2a:	48 89 e5             	mov    %rsp,%rbp
   41c2d:	41 56                	push   %r14
   41c2f:	41 55                	push   %r13
   41c31:	41 54                	push   %r12
   41c33:	53                   	push   %rbx
   41c34:	48 83 ec 20          	sub    $0x20,%rsp
   41c38:	41 89 fd             	mov    %edi,%r13d
   41c3b:	41 89 f6             	mov    %esi,%r14d
   41c3e:	49 89 d4             	mov    %rdx,%r12
   41c41:	48 89 cb             	mov    %rcx,%rbx
    __builtin_va_copy(val2, val);
   41c44:	48 8b 01             	mov    (%rcx),%rax
   41c47:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   41c4b:	48 8b 41 08          	mov    0x8(%rcx),%rax
   41c4f:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   41c53:	48 8b 41 10          	mov    0x10(%rcx),%rax
   41c57:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    log_vprintf(format, val2);
   41c5b:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
   41c5f:	48 89 d7             	mov    %rdx,%rdi
   41c62:	e8 52 ff ff ff       	call   41bb9 <log_vprintf(char const*, __va_list_tag*)>
    return console_vprintf(cpos, color, format, val);
   41c67:	48 89 d9             	mov    %rbx,%rcx
   41c6a:	4c 89 e2             	mov    %r12,%rdx
   41c6d:	44 89 f6             	mov    %r14d,%esi
   41c70:	44 89 ef             	mov    %r13d,%edi
   41c73:	e8 ca 22 00 00       	call   43f42 <console_vprintf(int, int, char const*, __va_list_tag*)>
}
   41c78:	48 83 c4 20          	add    $0x20,%rsp
   41c7c:	5b                   	pop    %rbx
   41c7d:	41 5c                	pop    %r12
   41c7f:	41 5d                	pop    %r13
   41c81:	41 5e                	pop    %r14
   41c83:	5d                   	pop    %rbp
   41c84:	c3                   	ret

0000000000041c85 <error_printf(int, int, char const*, ...)>:
int error_printf(int cpos, int color, const char* format, ...) {
   41c85:	f3 0f 1e fa          	endbr64
   41c89:	55                   	push   %rbp
   41c8a:	48 89 e5             	mov    %rsp,%rbp
   41c8d:	48 83 ec 50          	sub    $0x50,%rsp
   41c91:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   41c95:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   41c99:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_start(val, format);
   41c9d:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
   41ca4:	48 8d 45 10          	lea    0x10(%rbp),%rax
   41ca8:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   41cac:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   41cb0:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = error_vprintf(cpos, color, format, val);
   41cb4:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
   41cb8:	e8 68 ff ff ff       	call   41c25 <error_vprintf(int, int, char const*, __va_list_tag*)>
}
   41cbd:	c9                   	leave
   41cbe:	c3                   	ret

0000000000041cbf <error_printf(char const*, ...)>:
void error_printf(const char* format, ...) {
   41cbf:	f3 0f 1e fa          	endbr64
   41cc3:	55                   	push   %rbp
   41cc4:	48 89 e5             	mov    %rsp,%rbp
   41cc7:	48 83 ec 50          	sub    $0x50,%rsp
   41ccb:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
   41ccf:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   41cd3:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   41cd7:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   41cdb:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_start(val, format);
   41cdf:	c7 45 b8 08 00 00 00 	movl   $0x8,-0x48(%rbp)
   41ce6:	48 8d 45 10          	lea    0x10(%rbp),%rax
   41cea:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   41cee:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   41cf2:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    error_vprintf(-1, COLOR_ERROR, format, val);
   41cf6:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
   41cfa:	48 89 fa             	mov    %rdi,%rdx
   41cfd:	be 00 c0 00 00       	mov    $0xc000,%esi
   41d02:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   41d07:	e8 19 ff ff ff       	call   41c25 <error_vprintf(int, int, char const*, __va_list_tag*)>
}
   41d0c:	c9                   	leave
   41d0d:	c3                   	ret

0000000000041d0e <assert_fail(char const*, int, char const*)>:
void assert_fail(const char* file, int line, const char* msg) {
   41d0e:	f3 0f 1e fa          	endbr64
   41d12:	55                   	push   %rbp
   41d13:	48 89 e5             	mov    %rsp,%rbp
   41d16:	41 57                	push   %r15
   41d18:	41 56                	push   %r14
   41d1a:	41 55                	push   %r13
   41d1c:	41 54                	push   %r12
   41d1e:	53                   	push   %rbx
   41d1f:	48 83 ec 18          	sub    $0x18,%rsp
   41d23:	48 89 d1             	mov    %rdx,%rcx
    cursorpos = CPOS(23, 0);
   41d26:	c7 05 cc 72 07 00 30 	movl   $0x730,0x772cc(%rip)        # b8ffc <cursorpos>
   41d2d:	07 00 00 
    error_printf("%s:%d: kernel assertion '%s' failed\n", file, line, msg);
   41d30:	89 f2                	mov    %esi,%edx
   41d32:	48 89 fe             	mov    %rdi,%rsi
   41d35:	bf f8 44 04 00       	mov    $0x444f8,%edi
   41d3a:	b0 00                	mov    $0x0,%al
   41d3c:	e8 7e ff ff ff       	call   41cbf <error_printf(char const*, ...)>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
   41d41:	48 89 e0             	mov    %rsp,%rax
   41d44:	48 89 c2             	mov    %rax,%rdx
   41d47:	4c 8d a8 ff 0f 00 00 	lea    0xfff(%rax),%r13
   41d4e:	49 81 e5 00 f0 ff ff 	and    $0xfffffffffffff000,%r13
    asm volatile("movq %%rbp, %0" : "=r" (x));
   41d55:	48 89 eb             	mov    %rbp,%rbx
    int frame = 1;
   41d58:	41 bc 01 00 00 00    	mov    $0x1,%r12d
        return rbp_ >= rsp_ && stack_top_ - rbp_ >= 16;
   41d5e:	48 39 d3             	cmp    %rdx,%rbx
   41d61:	72 63                	jb     41dc6 <assert_fail(char const*, int, char const*)+0xb8>
   41d63:	4c 89 e8             	mov    %r13,%rax
   41d66:	48 29 d8             	sub    %rbx,%rax
   41d69:	48 83 f8 0f          	cmp    $0xf,%rax
   41d6d:	76 57                	jbe    41dc6 <assert_fail(char const*, int, char const*)+0xb8>
        uintptr_t* rbpx = reinterpret_cast<uintptr_t*>(rbp_);
   41d6f:	49 89 df             	mov    %rbx,%r15
        return rbpx[1];
   41d72:	4c 8b 73 08          	mov    0x8(%rbx),%r14
        if (lookup_symbol(ret_rip, &name, nullptr)) {
   41d76:	ba 00 00 00 00       	mov    $0x0,%edx
   41d7b:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
   41d7f:	4c 89 f7             	mov    %r14,%rdi
   41d82:	e8 5d fd ff ff       	call   41ae4 <lookup_symbol(unsigned long, char const**, unsigned long*)>
   41d87:	84 c0                	test   %al,%al
   41d89:	74 22                	je     41dad <assert_fail(char const*, int, char const*)+0x9f>
            error_printf("  #%d  %p  <%s>\n", frame, ret_rip, name);
   41d8b:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
   41d8f:	4c 89 f2             	mov    %r14,%rdx
   41d92:	44 89 e6             	mov    %r12d,%esi
   41d95:	bf a9 41 04 00       	mov    $0x441a9,%edi
   41d9a:	b0 00                	mov    $0x0,%al
   41d9c:	e8 1e ff ff ff       	call   41cbf <error_printf(char const*, ...)>
        rsp_ = rbp_ + 16;
   41da1:	48 8d 53 10          	lea    0x10(%rbx),%rdx
        rbp_ = rbpx[0];
   41da5:	49 8b 1f             	mov    (%r15),%rbx
         bt.step(), ++frame) {
   41da8:	41 ff c4             	inc    %r12d
   41dab:	eb b1                	jmp    41d5e <assert_fail(char const*, int, char const*)+0x50>
        } else if (ret_rip) {
   41dad:	4d 85 f6             	test   %r14,%r14
   41db0:	74 ef                	je     41da1 <assert_fail(char const*, int, char const*)+0x93>
            error_printf("  #%d  %p\n", frame, ret_rip);
   41db2:	4c 89 f2             	mov    %r14,%rdx
   41db5:	44 89 e6             	mov    %r12d,%esi
   41db8:	bf bc 41 04 00       	mov    $0x441bc,%edi
   41dbd:	b0 00                	mov    $0x0,%al
   41dbf:	e8 fb fe ff ff       	call   41cbf <error_printf(char const*, ...)>
   41dc4:	eb db                	jmp    41da1 <assert_fail(char const*, int, char const*)+0x93>
        check_keyboard();
   41dc6:	e8 e9 07 00 00       	call   425b4 <check_keyboard()>
    while (true) {
   41dcb:	eb f9                	jmp    41dc6 <assert_fail(char const*, int, char const*)+0xb8>

0000000000041dcd <init_hardware()>:
void init_hardware() {
   41dcd:	f3 0f 1e fa          	endbr64
   41dd1:	55                   	push   %rbp
   41dd2:	48 89 e5             	mov    %rsp,%rbp
   41dd5:	53                   	push   %rbx
   41dd6:	48 83 ec 38          	sub    $0x38,%rsp
    stash_kernel_data(false);
   41dda:	bf 00 00 00 00       	mov    $0x0,%edi
   41ddf:	e8 f7 f9 ff ff       	call   417db <stash_kernel_data(bool)>
    kernel_gdt_segments[0] = 0;
   41de4:	48 c7 05 11 72 01 00 	movq   $0x0,0x17211(%rip)        # 59000 <kernel_gdt_segments>
   41deb:	00 00 00 00 
    *segment = type
   41def:	48 b8 00 00 00 00 00 	movabs $0x20980000000000,%rax
   41df6:	98 20 00 
   41df9:	48 89 05 08 72 01 00 	mov    %rax,0x17208(%rip)        # 59008 <kernel_gdt_segments+0x8>
   41e00:	48 b8 00 00 00 00 00 	movabs $0x920000000000,%rax
   41e07:	92 00 00 
   41e0a:	48 89 05 ff 71 01 00 	mov    %rax,0x171ff(%rip)        # 59010 <kernel_gdt_segments+0x10>
   41e11:	48 b8 00 00 00 00 00 	movabs $0x20f80000000000,%rax
   41e18:	f8 20 00 
   41e1b:	48 89 05 f6 71 01 00 	mov    %rax,0x171f6(%rip)        # 59018 <kernel_gdt_segments+0x18>
   41e22:	48 b8 00 00 00 00 00 	movabs $0xf20000000000,%rax
   41e29:	f2 00 00 
   41e2c:	48 89 05 ed 71 01 00 	mov    %rax,0x171ed(%rip)        # 59020 <kernel_gdt_segments+0x20>
    set_sys_segment(&kernel_gdt_segments[SEGSEL_TASKSTATE >> 3],
   41e33:	ba 20 f0 05 00       	mov    $0x5f020,%edx
    segment[0] = ((addr & 0x0000000000FFFFFFUL) << 16)
   41e38:	48 89 d0             	mov    %rdx,%rax
   41e3b:	48 c1 e0 10          	shl    $0x10,%rax
   41e3f:	48 b9 00 00 ff ff ff 	movabs $0xffffff0000,%rcx
   41e46:	00 00 00 
   41e49:	48 21 c8             	and    %rcx,%rax
        | ((addr & 0x00000000FF000000UL) << 32)
   41e4c:	48 89 d1             	mov    %rdx,%rcx
   41e4f:	48 c1 e1 20          	shl    $0x20,%rcx
   41e53:	48 be 00 00 00 00 00 	movabs $0xff00000000000000,%rsi
   41e5a:	00 00 ff 
   41e5d:	48 21 f1             	and    %rsi,%rcx
   41e60:	48 09 c8             	or     %rcx,%rax
        | X86SEG_P;                   // segment present
   41e63:	48 b9 67 00 00 00 00 	movabs $0x890000000067,%rcx
   41e6a:	89 00 00 
   41e6d:	48 09 c8             	or     %rcx,%rax
   41e70:	48 89 05 b1 71 01 00 	mov    %rax,0x171b1(%rip)        # 59028 <kernel_gdt_segments+0x28>
    segment[1] = addr >> 32;
   41e77:	48 c1 ea 20          	shr    $0x20,%rdx
   41e7b:	48 89 15 ae 71 01 00 	mov    %rdx,0x171ae(%rip)        # 59030 <kernel_gdt_segments+0x30>
    gdt.limit = (sizeof(uint64_t) * 3) - 1;
   41e82:	66 c7 45 c6 17 00    	movw   $0x17,-0x3a(%rbp)
    gdt.base = (uint64_t) kernel_gdt_segments;
   41e88:	48 c7 45 c8 00 90 05 	movq   $0x59000,-0x38(%rbp)
   41e8f:	00 
    asm volatile("lgdt %0" : : "m" (gdt.limit));
   41e90:	0f 01 55 c6          	lgdt   -0x3a(%rbp)
    memset(kernel_pagetable, 0, sizeof(kernel_pagetable));
   41e94:	ba 00 50 00 00       	mov    $0x5000,%edx
   41e99:	be 00 00 00 00       	mov    $0x0,%esi
   41e9e:	bf 00 a0 05 00       	mov    $0x5a000,%edi
   41ea3:	e8 e0 15 00 00       	call   43488 <memset>
        (x86_64_pageentry_t) &kernel_pagetable[1] | PTE_P | PTE_W | PTE_U;
   41ea8:	b8 00 b0 05 00       	mov    $0x5b000,%eax
   41ead:	48 83 c8 07          	or     $0x7,%rax
   41eb1:	48 89 05 48 81 01 00 	mov    %rax,0x18148(%rip)        # 5a000 <kernel_pagetable>
        (x86_64_pageentry_t) &kernel_pagetable[2] | PTE_P | PTE_W | PTE_U;
   41eb8:	b8 00 c0 05 00       	mov    $0x5c000,%eax
   41ebd:	48 83 c8 07          	or     $0x7,%rax
   41ec1:	48 89 05 38 91 01 00 	mov    %rax,0x19138(%rip)        # 5b000 <kernel_pagetable+0x1000>
        (x86_64_pageentry_t) &kernel_pagetable[3] | PTE_P | PTE_W | PTE_U;
   41ec8:	b8 00 d0 05 00       	mov    $0x5d000,%eax
   41ecd:	48 83 c8 07          	or     $0x7,%rax
   41ed1:	48 89 05 28 a1 01 00 	mov    %rax,0x1a128(%rip)        # 5c000 <kernel_pagetable+0x2000>
        (x86_64_pageentry_t) &kernel_pagetable[4] | PTE_P | PTE_W | PTE_U;
   41ed8:	b8 00 e0 05 00       	mov    $0x5e000,%eax
   41edd:	48 83 c8 07          	or     $0x7,%rax
   41ee1:	48 89 05 20 a1 01 00 	mov    %rax,0x1a120(%rip)        # 5c008 <kernel_pagetable+0x2008>
    kernel_pagetable[1].entry[1] =
   41ee8:	48 c7 05 15 91 01 00 	movq   $0x40000083,0x19115(%rip)        # 5b008 <kernel_pagetable+0x1008>
   41eef:	83 00 00 40 
    kernel_pagetable[1].entry[2] =
   41ef3:	b8 83 00 00 80       	mov    $0x80000083,%eax
   41ef8:	48 89 05 11 91 01 00 	mov    %rax,0x19111(%rip)        # 5b010 <kernel_pagetable+0x1010>
    kernel_pagetable[1].entry[3] =
   41eff:	48 8d 80 00 00 00 40 	lea    0x40000000(%rax),%rax
   41f06:	48 89 05 0b 91 01 00 	mov    %rax,0x1910b(%rip)        # 5b018 <kernel_pagetable+0x1018>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   41f0d:	48 c7 45 d0 00 a0 05 	movq   $0x5a000,-0x30(%rbp)
   41f14:	00 
   41f15:	48 c7 45 d8 00 a0 05 	movq   $0x5a000,-0x28(%rbp)
   41f1c:	00 
   41f1d:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   41f24:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   41f2b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   41f32:	00 
    real_find(va);
   41f33:	be 00 00 00 00       	mov    $0x0,%esi
   41f38:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   41f3c:	e8 77 f4 ff ff       	call   413b8 <vmiter::real_find(unsigned long)>
    return va_;
   41f41:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
         it.va() < MEMSIZE_PHYSICAL;
   41f45:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   41f4c:	76 72                	jbe    41fc0 <init_hardware()+0x1f3>
    asm volatile("movq %0, %%cr3" : : "r" (x) : "memory");
   41f4e:	b8 00 a0 05 00       	mov    $0x5a000,%eax
   41f53:	0f 22 d8             	mov    %rax,%cr3
    cursorpos = 3 * CONSOLE_COLUMNS;
   41f56:	c7 05 9c 70 07 00 f0 	movl   $0xf0,0x7709c(%rip)        # b8ffc <cursorpos>
   41f5d:	00 00 00 
   41f60:	b9 c0 04 05 00       	mov    $0x504c0,%ecx
    for (int i = 0; i < 256; ++i) {
   41f65:	be 00 00 00 00       	mov    $0x0,%esi
        | ((addr & 0x00000000FFFF0000UL) << 32);
   41f6a:	49 b9 00 00 00 00 00 	movabs $0x600000000000,%r9
   41f71:	60 00 00 
   41f74:	49 b8 00 00 00 00 00 	movabs $0xffff000000000000,%r8
   41f7b:	00 ff ff 
   41f7e:	48 bf 00 00 08 00 00 	movabs $0x8e0000080000,%rdi
   41f85:	8e 00 00 
   41f88:	e9 b2 00 00 00       	jmp    4203f <init_hardware()+0x272>
    int r = try_map(pa, perm);
   41f8d:	ba 07 00 00 00       	mov    $0x7,%edx
   41f92:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   41f96:	e8 1f f5 ff ff       	call   414ba <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   41f9b:	85 c0                	test   %eax,%eax
   41f9d:	75 28                	jne    41fc7 <init_hardware()+0x1fa>
    return find(va_ + delta);
   41f9f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   41fa3:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   41faa:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   41fae:	e8 05 f4 ff ff       	call   413b8 <vmiter::real_find(unsigned long)>
    return va_;
   41fb3:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
         it.va() < MEMSIZE_PHYSICAL;
   41fb7:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   41fbe:	77 8e                	ja     41f4e <init_hardware()+0x181>
        if (it.va() != 0) {
   41fc0:	48 85 f6             	test   %rsi,%rsi
   41fc3:	74 da                	je     41f9f <init_hardware()+0x1d2>
   41fc5:	eb c6                	jmp    41f8d <init_hardware()+0x1c0>
    assert(r == 0);
   41fc7:	ba 96 40 04 00       	mov    $0x44096,%edx
   41fcc:	be b0 00 00 00       	mov    $0xb0,%esi
   41fd1:	bf 9d 40 04 00       	mov    $0x4409d,%edi
   41fd6:	e8 33 fd ff ff       	call   41d0e <assert_fail(char const*, int, char const*)>
    assert(cpuid(1).edx & (1 << 9));
   41fdb:	ba c7 41 04 00       	mov    $0x441c7,%edx
   41fe0:	be b8 00 00 00       	mov    $0xb8,%esi
   41fe5:	bf df 41 04 00       	mov    $0x441df,%edi
   41fea:	e8 1f fd ff ff       	call   41d0e <assert_fail(char const*, int, char const*)>
    assert(apic_base & IA32_APIC_BASE_ENABLED);
   41fef:	ba 20 45 04 00       	mov    $0x44520,%edx
   41ff4:	be ba 00 00 00       	mov    $0xba,%esi
   41ff9:	bf df 41 04 00       	mov    $0x441df,%edi
   41ffe:	e8 0b fd ff ff       	call   41d0e <assert_fail(char const*, int, char const*)>
    assert((apic_base & 0xFFFFFFFFF000) == lapicstate::lapic_pa);
   42003:	ba 48 45 04 00       	mov    $0x44548,%edx
   42008:	be bb 00 00 00       	mov    $0xbb,%esi
   4200d:	bf df 41 04 00       	mov    $0x441df,%edi
   42012:	e8 f7 fc ff ff       	call   41d0e <assert_fail(char const*, int, char const*)>
    gate->gd_low = (addr & 0x000000000000FFFFUL)
   42017:	0f b7 c2             	movzwl %dx,%eax
        | ((addr & 0x00000000FFFF0000UL) << 32);
   4201a:	4c 09 c8             	or     %r9,%rax
   4201d:	49 89 d2             	mov    %rdx,%r10
   42020:	49 c1 e2 20          	shl    $0x20,%r10
   42024:	4d 21 c2             	and    %r8,%r10
   42027:	4c 09 d0             	or     %r10,%rax
   4202a:	48 09 f8             	or     %rdi,%rax
   4202d:	48 89 01             	mov    %rax,(%rcx)
    gate->gd_high = addr >> 32;
   42030:	48 c1 ea 20          	shr    $0x20,%rdx
   42034:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    for (int i = 0; i < 256; ++i) {
   42038:	83 c6 01             	add    $0x1,%esi
   4203b:	48 83 c1 10          	add    $0x10,%rcx
        uintptr_t addr = interrupt_descriptors[i].gd_low;
   4203f:	48 8b 11             	mov    (%rcx),%rdx
        set_gate(&interrupt_descriptors[i], addr,
   42042:	83 fe 03             	cmp    $0x3,%esi
   42045:	74 d0                	je     42017 <init_hardware()+0x24a>
        | ((addr & 0x00000000FFFF0000UL) << 32);
   42047:	48 89 d0             	mov    %rdx,%rax
   4204a:	48 c1 e0 20          	shl    $0x20,%rax
   4204e:	4c 21 c0             	and    %r8,%rax
    gate->gd_low = (addr & 0x000000000000FFFFUL)
   42051:	44 0f b7 d2          	movzwl %dx,%r10d
        | ((addr & 0x00000000FFFF0000UL) << 32);
   42055:	4c 09 d0             	or     %r10,%rax
   42058:	48 09 f8             	or     %rdi,%rax
   4205b:	48 89 01             	mov    %rax,(%rcx)
    gate->gd_high = addr >> 32;
   4205e:	48 c1 ea 20          	shr    $0x20,%rdx
   42062:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    for (int i = 0; i < 256; ++i) {
   42066:	83 c6 01             	add    $0x1,%esi
   42069:	48 83 c1 10          	add    $0x10,%rcx
   4206d:	81 fe 00 01 00 00    	cmp    $0x100,%esi
   42073:	75 ca                	jne    4203f <init_hardware()+0x272>
    uint32_t eax, ebx, ecx, edx;
} x86_64_cpuid_t;

__always_inline x86_64_cpuid_t cpuid(uint32_t leaf) {
    x86_64_cpuid_t ret;
    asm volatile("cpuid"
   42075:	b8 01 00 00 00       	mov    $0x1,%eax
   4207a:	0f a2                	cpuid
    assert(cpuid(1).edx & (1 << 9));
   4207c:	f6 c6 02             	test   $0x2,%dh
   4207f:	0f 84 56 ff ff ff    	je     41fdb <init_hardware()+0x20e>
    return ret;
}

__always_inline uint64_t rdmsr(uint32_t msr) {
    uint64_t low, high;
    asm volatile("rdmsr" : "=a" (low), "=d" (high) : "c" (msr));
   42085:	b9 1b 00 00 00       	mov    $0x1b,%ecx
   4208a:	0f 32                	rdmsr
    return low | (high << 32);
   4208c:	48 c1 e2 20          	shl    $0x20,%rdx
   42090:	48 09 c2             	or     %rax,%rdx
    assert(apic_base & IA32_APIC_BASE_ENABLED);
   42093:	f6 c4 08             	test   $0x8,%ah
   42096:	0f 84 53 ff ff ff    	je     41fef <init_hardware()+0x222>
    assert((apic_base & 0xFFFFFFFFF000) == lapicstate::lapic_pa);
   4209c:	48 b8 00 f0 ff ff ff 	movabs $0xfffffffff000,%rax
   420a3:	ff 00 00 
   420a6:	48 21 c2             	and    %rax,%rdx
   420a9:	b8 00 00 e0 fe       	mov    $0xfee00000,%eax
   420ae:	48 39 c2             	cmp    %rax,%rdx
   420b1:	0f 85 4c ff ff ff    	jne    42003 <init_hardware()+0x236>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
   420b7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   420bc:	ba 21 00 00 00       	mov    $0x21,%edx
   420c1:	ee                   	out    %al,(%dx)
   420c2:	ba a1 00 00 00       	mov    $0xa1,%edx
   420c7:	ee                   	out    %al,(%dx)
    for (auto fp = __init_array_start; fp != __init_array_end; ++fp) {
   420c8:	b8 90 50 04 00       	mov    $0x45090,%eax
   420cd:	48 3d 90 50 04 00    	cmp    $0x45090,%rax
   420d3:	74 12                	je     420e7 <init_hardware()+0x31a>
   420d5:	48 89 c3             	mov    %rax,%rbx
        (*fp)();
   420d8:	ff 13                	call   *(%rbx)
    for (auto fp = __init_array_start; fp != __init_array_end; ++fp) {
   420da:	48 83 c3 08          	add    $0x8,%rbx
   420de:	48 81 fb 90 50 04 00 	cmp    $0x45090,%rbx
   420e5:	75 f1                	jne    420d8 <init_hardware()+0x30b>
    memset(&kernel_taskstate, 0, sizeof(kernel_taskstate));
   420e7:	ba 68 00 00 00       	mov    $0x68,%edx
   420ec:	be 00 00 00 00       	mov    $0x0,%esi
   420f1:	bf 20 f0 05 00       	mov    $0x5f020,%edi
   420f6:	e8 8d 13 00 00       	call   43488 <memset>
    kernel_taskstate.ts_rsp[0] = KERNEL_STACK_TOP;
   420fb:	48 c7 05 1e cf 01 00 	movq   $0x80000,0x1cf1e(%rip)        # 5f024 <kernel_taskstate+0x4>
   42102:	00 00 08 00 
    gdt.limit = sizeof(kernel_gdt_segments) - 1;
   42106:	66 c7 45 c6 37 00    	movw   $0x37,-0x3a(%rbp)
    gdt.base = (uint64_t) kernel_gdt_segments;
   4210c:	48 c7 45 c8 00 90 05 	movq   $0x59000,-0x38(%rbp)
   42113:	00 
    idt.limit = sizeof(interrupt_descriptors) - 1;
   42114:	66 c7 45 d6 ff 0f    	movw   $0xfff,-0x2a(%rbp)
    idt.base = (uint64_t) interrupt_descriptors;
   4211a:	48 c7 45 d8 c0 04 05 	movq   $0x504c0,-0x28(%rbp)
   42121:	00 
    asm volatile("lgdt %0; ltr %1; lidt %2"
   42122:	b8 28 00 00 00       	mov    $0x28,%eax
   42127:	0f 01 55 c6          	lgdt   -0x3a(%rbp)
   4212b:	0f 00 d8             	ltr    %eax
   4212e:	0f 01 5d d6          	lidt   -0x2a(%rbp)
    asm volatile("movw %%ax, %%fs; movw %%ax, %%gs"
   42132:	b8 10 00 00 00       	mov    $0x10,%eax
   42137:	8e e0                	mov    %eax,%fs
   42139:	8e e8                	mov    %eax,%gs
    asm volatile("movq %%cr0, %0" : "=r" (x));
   4213b:	0f 20 c0             	mov    %cr0,%rax
    wrcr0(cr0);
   4213e:	0d 23 00 05 80       	or     $0x80050023,%eax
    asm volatile("movq %0, %%cr0" : : "r" (x));
   42143:	0f 22 c0             	mov    %rax,%cr0
}
__always_inline void wrmsr(uint32_t msr, uint64_t x) {
    asm volatile("wrmsr" : : "c" (msr), "a" ((uint32_t) x), "d" (x >> 32));
   42146:	b9 81 00 00 c0       	mov    $0xc0000081,%ecx
   4214b:	b8 00 00 00 00       	mov    $0x0,%eax
   42150:	ba 08 00 18 00       	mov    $0x180008,%edx
   42155:	0f 30                	wrmsr
    wrmsr(MSR_IA32_LSTAR, reinterpret_cast<uint64_t>(syscall_entry));
   42157:	b8 d6 0a 04 00       	mov    $0x40ad6,%eax
   4215c:	48 89 c2             	mov    %rax,%rdx
   4215f:	48 c1 ea 20          	shr    $0x20,%rdx
   42163:	b9 82 00 00 c0       	mov    $0xc0000082,%ecx
   42168:	0f 30                	wrmsr
   4216a:	b9 84 00 00 c0       	mov    $0xc0000084,%ecx
   4216f:	b8 00 77 04 00       	mov    $0x47700,%eax
   42174:	ba 00 00 00 00       	mov    $0x0,%edx
   42179:	0f 30                	wrmsr
    return reg_[reg].v;
   4217b:	b8 00 00 e0 fe       	mov    $0xfee00000,%eax
   42180:	8b 90 f0 00 00 00    	mov    0xf0(%rax),%edx
    write(reg_svr, (read(reg_svr) & ~0xFF) | 0x100 | vector);
   42186:	81 e2 00 fe ff ff    	and    $0xfffffe00,%edx
   4218c:	81 ca 3f 01 00 00    	or     $0x13f,%edx
    reg_[reg].v = v;
   42192:	89 90 f0 00 00 00    	mov    %edx,0xf0(%rax)
   42198:	c7 80 e0 03 00 00 0b 	movl   $0xb,0x3e0(%rax)
   4219f:	00 00 00 
   421a2:	c7 80 20 03 00 00 20 	movl   $0x20020,0x320(%rax)
   421a9:	00 02 00 
   421ac:	c7 80 80 03 00 00 00 	movl   $0x0,0x380(%rax)
   421b3:	00 00 00 
   421b6:	c7 80 50 03 00 00 00 	movl   $0x10000,0x350(%rax)
   421bd:	00 01 00 
   421c0:	c7 80 60 03 00 00 00 	movl   $0x10000,0x360(%rax)
   421c7:	00 01 00 
   421ca:	c7 80 70 03 00 00 33 	movl   $0x33,0x370(%rax)
   421d1:	00 00 00 
   421d4:	c7 80 80 02 00 00 00 	movl   $0x0,0x280(%rax)
   421db:	00 00 00 
    return reg_[reg].v;
   421de:	8b 90 80 02 00 00    	mov    0x280(%rax),%edx
    reg_[reg].v = v;
   421e4:	c7 80 b0 00 00 00 00 	movl   $0x0,0xb0(%rax)
   421eb:	00 00 00 
}
   421ee:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
   421f2:	c9                   	leave
   421f3:	c3                   	ret

00000000000421f4 <check_pagetable(x86_64_pagetable*)>:
void check_pagetable(x86_64_pagetable* pagetable) {
   421f4:	f3 0f 1e fa          	endbr64
   421f8:	55                   	push   %rbp
   421f9:	48 89 e5             	mov    %rsp,%rbp
   421fc:	53                   	push   %rbx
   421fd:	48 83 ec 28          	sub    $0x28,%rsp
    assert(((uintptr_t) pagetable & PAGEOFFMASK) == 0); // must be page aligned
   42201:	f7 c7 ff 0f 00 00    	test   $0xfff,%edi
   42207:	0f 85 74 01 00 00    	jne    42381 <check_pagetable(x86_64_pagetable*)+0x18d>
   4220d:	48 89 fb             	mov    %rdi,%rbx
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   42210:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
   42214:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   42218:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   4221f:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   42226:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   4222d:	00 
    real_find(va);
   4222e:	be 72 0a 04 00       	mov    $0x40a72,%esi
   42233:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42237:	e8 7c f1 ff ff       	call   413b8 <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   4223c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   42240:	48 8b 08             	mov    (%rax),%rcx
   42243:	f6 c1 01             	test   $0x1,%cl
   42246:	0f 84 5b 01 00 00    	je     423a7 <check_pagetable(x86_64_pagetable*)+0x1b3>
        if (level_ > 0) {
   4224c:	8b 45 e0             	mov    -0x20(%rbp),%eax
            pa &= ~0x1000UL;
   4224f:	48 ba 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rdx
   42256:	ff 0f 00 
   42259:	48 21 ca             	and    %rcx,%rdx
        if (level_ > 0) {
   4225c:	85 c0                	test   %eax,%eax
   4225e:	0f 8e 31 01 00 00    	jle    42395 <check_pagetable(x86_64_pagetable*)+0x1a1>
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   42264:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   42268:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   4226f:	48 d3 e0             	shl    %cl,%rax
   42272:	48 f7 d0             	not    %rax
   42275:	48 23 45 e8          	and    -0x18(%rbp),%rax
   42279:	48 01 d0             	add    %rdx,%rax
    assert(vmiter(pagetable, (uintptr_t) exception_entry).pa()
   4227c:	ba 72 0a 04 00       	mov    $0x40a72,%edx
   42281:	48 39 c2             	cmp    %rax,%rdx
   42284:	0f 85 1d 01 00 00    	jne    423a7 <check_pagetable(x86_64_pagetable*)+0x1b3>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   4228a:	48 c7 45 d0 00 a0 05 	movq   $0x5a000,-0x30(%rbp)
   42291:	00 
   42292:	48 c7 45 d8 00 a0 05 	movq   $0x5a000,-0x28(%rbp)
   42299:	00 
   4229a:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   422a1:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   422a8:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   422af:	00 
    real_find(va);
   422b0:	48 89 de             	mov    %rbx,%rsi
   422b3:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   422b7:	e8 fc f0 ff ff       	call   413b8 <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   422bc:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   422c0:	48 8b 08             	mov    (%rax),%rcx
   422c3:	f6 c1 01             	test   $0x1,%cl
   422c6:	0f 84 01 01 00 00    	je     423cd <check_pagetable(x86_64_pagetable*)+0x1d9>
        if (level_ > 0) {
   422cc:	8b 45 e0             	mov    -0x20(%rbp),%eax
            pa &= ~0x1000UL;
   422cf:	48 ba 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rdx
   422d6:	ff 0f 00 
   422d9:	48 21 ca             	and    %rcx,%rdx
        if (level_ > 0) {
   422dc:	85 c0                	test   %eax,%eax
   422de:	0f 8e d7 00 00 00    	jle    423bb <check_pagetable(x86_64_pagetable*)+0x1c7>
   422e4:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   422e8:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   422ef:	48 d3 e0             	shl    %cl,%rax
   422f2:	48 f7 d0             	not    %rax
   422f5:	48 23 45 e8          	and    -0x18(%rbp),%rax
   422f9:	48 01 d0             	add    %rdx,%rax
    assert(vmiter(kernel_pagetable, (uintptr_t) pagetable).pa()
   422fc:	48 39 c3             	cmp    %rax,%rbx
   422ff:	0f 85 c8 00 00 00    	jne    423cd <check_pagetable(x86_64_pagetable*)+0x1d9>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   42305:	48 89 5d d0          	mov    %rbx,-0x30(%rbp)
   42309:	48 89 5d d8          	mov    %rbx,-0x28(%rbp)
   4230d:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   42314:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   4231b:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   42322:	00 
    real_find(va);
   42323:	be 00 a0 05 00       	mov    $0x5a000,%esi
   42328:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   4232c:	e8 87 f0 ff ff       	call   413b8 <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   42331:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   42335:	48 8b 08             	mov    (%rax),%rcx
   42338:	f6 c1 01             	test   $0x1,%cl
   4233b:	0f 84 b2 00 00 00    	je     423f3 <check_pagetable(x86_64_pagetable*)+0x1ff>
        if (level_ > 0) {
   42341:	8b 45 e0             	mov    -0x20(%rbp),%eax
            pa &= ~0x1000UL;
   42344:	48 ba 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rdx
   4234b:	ff 0f 00 
   4234e:	48 21 ca             	and    %rcx,%rdx
        if (level_ > 0) {
   42351:	85 c0                	test   %eax,%eax
   42353:	0f 8e 88 00 00 00    	jle    423e1 <check_pagetable(x86_64_pagetable*)+0x1ed>
   42359:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   4235d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   42364:	48 d3 e0             	shl    %cl,%rax
   42367:	48 f7 d0             	not    %rax
   4236a:	48 23 45 e8          	and    -0x18(%rbp),%rax
   4236e:	48 01 d0             	add    %rdx,%rax
    assert(vmiter(pagetable, (uintptr_t) kernel_pagetable).pa()
   42371:	ba 00 a0 05 00       	mov    $0x5a000,%edx
   42376:	48 39 c2             	cmp    %rax,%rdx
   42379:	75 78                	jne    423f3 <check_pagetable(x86_64_pagetable*)+0x1ff>
}
   4237b:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
   4237f:	c9                   	leave
   42380:	c3                   	ret
    assert(((uintptr_t) pagetable & PAGEOFFMASK) == 0); // must be page aligned
   42381:	ba 80 45 04 00       	mov    $0x44580,%edx
   42386:	be 18 01 00 00       	mov    $0x118,%esi
   4238b:	bf df 41 04 00       	mov    $0x441df,%edi
   42390:	e8 79 f9 ff ff       	call   41d0e <assert_fail(char const*, int, char const*)>
        uintptr_t pa = *pep_ & PTE_PAMASK;
   42395:	48 ba 00 f0 ff ff ff 	movabs $0xffffffffff000,%rdx
   4239c:	ff 0f 00 
   4239f:	48 21 ca             	and    %rcx,%rdx
   423a2:	e9 bd fe ff ff       	jmp    42264 <check_pagetable(x86_64_pagetable*)+0x70>
    assert(vmiter(pagetable, (uintptr_t) exception_entry).pa()
   423a7:	ba b0 45 04 00       	mov    $0x445b0,%edx
   423ac:	be 19 01 00 00       	mov    $0x119,%esi
   423b1:	bf df 41 04 00       	mov    $0x441df,%edi
   423b6:	e8 53 f9 ff ff       	call   41d0e <assert_fail(char const*, int, char const*)>
   423bb:	48 ba 00 f0 ff ff ff 	movabs $0xffffffffff000,%rdx
   423c2:	ff 0f 00 
   423c5:	48 21 ca             	and    %rcx,%rdx
   423c8:	e9 17 ff ff ff       	jmp    422e4 <check_pagetable(x86_64_pagetable*)+0xf0>
    assert(vmiter(kernel_pagetable, (uintptr_t) pagetable).pa()
   423cd:	ba 08 46 04 00       	mov    $0x44608,%edx
   423d2:	be 1b 01 00 00       	mov    $0x11b,%esi
   423d7:	bf df 41 04 00       	mov    $0x441df,%edi
   423dc:	e8 2d f9 ff ff       	call   41d0e <assert_fail(char const*, int, char const*)>
   423e1:	48 ba 00 f0 ff ff ff 	movabs $0xffffffffff000,%rdx
   423e8:	ff 0f 00 
   423eb:	48 21 ca             	and    %rcx,%rdx
   423ee:	e9 66 ff ff ff       	jmp    42359 <check_pagetable(x86_64_pagetable*)+0x165>
    assert(vmiter(pagetable, (uintptr_t) kernel_pagetable).pa()
   423f3:	ba 58 46 04 00       	mov    $0x44658,%edx
   423f8:	be 1d 01 00 00       	mov    $0x11d,%esi
   423fd:	bf df 41 04 00       	mov    $0x441df,%edi
   42402:	e8 07 f9 ff ff       	call   41d0e <assert_fail(char const*, int, char const*)>
   42407:	90                   	nop

0000000000042408 <pcistate::next(int) const>:
int pcistate::next(int addr) const {
   42408:	f3 0f 1e fa          	endbr64
   4240c:	55                   	push   %rbp
   4240d:	48 89 e5             	mov    %rsp,%rbp
    }
    return addr;
}

inline uint32_t pcistate::readl(int addr) const {
    assert(addr >= 0 && !(addr & 3));
   42410:	89 f0                	mov    %esi,%eax
   42412:	83 c0 0c             	add    $0xc,%eax
   42415:	78 23                	js     4243a <pcistate::next(int) const+0x32>
   42417:	a8 03                	test   $0x3,%al
   42419:	75 1f                	jne    4243a <pcistate::next(int) const+0x32>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   4241b:	0d 00 00 00 80       	or     $0x80000000,%eax
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42420:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   42425:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42426:	ba fc 0c 00 00       	mov    $0xcfc,%edx
   4242b:	ed                   	in     (%dx),%eax
   4242c:	89 c2                	mov    %eax,%edx
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   4242e:	bf f8 0c 00 00       	mov    $0xcf8,%edi
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42433:	b9 fc 0c 00 00       	mov    $0xcfc,%ecx
   42438:	eb 51                	jmp    4248b <pcistate::next(int) const+0x83>
    assert(addr >= 0 && !(addr & 3));
   4243a:	ba 0f 42 04 00       	mov    $0x4420f,%edx
   4243f:	be 57 00 00 00       	mov    $0x57,%esi
   42444:	bf 06 42 04 00       	mov    $0x44206,%edi
   42449:	e8 c0 f8 ff ff       	call   41d0e <assert_fail(char const*, int, char const*)>
    assert(addr >= 0 && addr < 0x1000000);
   4244e:	ba 28 42 04 00       	mov    $0x44228,%edx
   42453:	be 4a 00 00 00       	mov    $0x4a,%esi
   42458:	bf 06 42 04 00       	mov    $0x44206,%edi
   4245d:	e8 ac f8 ff ff       	call   41d0e <assert_fail(char const*, int, char const*)>
            addr += make_addr(0, 0, 1);
   42462:	81 c6 00 01 00 00    	add    $0x100,%esi
        if (addr >= addr_end) {
   42468:	81 fe ff ff 07 00    	cmp    $0x7ffff,%esi
   4246e:	7f 58                	jg     424c8 <pcistate::next(int) const+0xc0>
        x = readl(addr + config_lthb);
   42470:	8d 46 0c             	lea    0xc(%rsi),%eax
    assert(addr >= 0 && !(addr & 3));
   42473:	40 f6 c6 03          	test   $0x3,%sil
   42477:	75 37                	jne    424b0 <pcistate::next(int) const+0xa8>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   42479:	0d 00 00 00 80       	or     $0x80000000,%eax
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   4247e:	89 fa                	mov    %edi,%edx
   42480:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42481:	89 ca                	mov    %ecx,%edx
   42483:	ed                   	in     (%dx),%eax
   42484:	89 c2                	mov    %eax,%edx
        if (x != uint32_t(-1)) {
   42486:	83 f8 ff             	cmp    $0xffffffff,%eax
   42489:	75 39                	jne    424c4 <pcistate::next(int) const+0xbc>
    assert(addr >= 0 && addr < 0x1000000);
   4248b:	81 fe ff ff ff 00    	cmp    $0xffffff,%esi
   42491:	77 bb                	ja     4244e <pcistate::next(int) const+0x46>
            && (x == uint32_t(-1) || !(x & 0x800000))) {
   42493:	f7 c6 00 07 00 00    	test   $0x700,%esi
   42499:	75 c7                	jne    42462 <pcistate::next(int) const+0x5a>
   4249b:	83 fa ff             	cmp    $0xffffffff,%edx
   4249e:	74 08                	je     424a8 <pcistate::next(int) const+0xa0>
   424a0:	f7 c2 00 00 80 00    	test   $0x800000,%edx
   424a6:	75 ba                	jne    42462 <pcistate::next(int) const+0x5a>
            addr += make_addr(0, 1, 0);
   424a8:	81 c6 00 08 00 00    	add    $0x800,%esi
   424ae:	eb b8                	jmp    42468 <pcistate::next(int) const+0x60>
    assert(addr >= 0 && !(addr & 3));
   424b0:	ba 0f 42 04 00       	mov    $0x4420f,%edx
   424b5:	be 57 00 00 00       	mov    $0x57,%esi
   424ba:	bf 06 42 04 00       	mov    $0x44206,%edi
   424bf:	e8 4a f8 ff ff       	call   41d0e <assert_fail(char const*, int, char const*)>
            return addr;
   424c4:	89 f0                	mov    %esi,%eax
   424c6:	eb 05                	jmp    424cd <pcistate::next(int) const+0xc5>
            return -1;
   424c8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   424cd:	5d                   	pop    %rbp
   424ce:	c3                   	ret

00000000000424cf <poweroff()>:
void poweroff() {
   424cf:	f3 0f 1e fa          	endbr64
   424d3:	55                   	push   %rbp
   424d4:	48 89 e5             	mov    %rsp,%rbp
   424d7:	53                   	push   %rbx
   424d8:	48 83 ec 08          	sub    $0x8,%rsp
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   424dc:	b8 00 00 00 80       	mov    $0x80000000,%eax
   424e1:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   424e6:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   424e7:	ba fc 0c 00 00       	mov    $0xcfc,%edx
   424ec:	ed                   	in     (%dx),%eax
    while (addr >= 0 && !predicate(addr)) {
   424ed:	3d 86 80 13 71       	cmp    $0x71138086,%eax
   424f2:	0f 84 b5 00 00 00    	je     425ad <poweroff()+0xde>
   424f8:	3d 86 80 18 29       	cmp    $0x29188086,%eax
   424fd:	0f 84 aa 00 00 00    	je     425ad <poweroff()+0xde>
   42503:	be 00 00 00 00       	mov    $0x0,%esi
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42508:	bb f8 0c 00 00       	mov    $0xcf8,%ebx
        addr = next(addr);
   4250d:	bf 00 f0 05 00       	mov    $0x5f000,%edi
   42512:	e8 f1 fe ff ff       	call   42408 <pcistate::next(int) const>
   42517:	89 c6                	mov    %eax,%esi
    while (addr >= 0 && !predicate(addr)) {
   42519:	85 c0                	test   %eax,%eax
   4251b:	78 4d                	js     4256a <poweroff()+0x9b>
    assert(addr >= 0 && !(addr & 3));
   4251d:	40 f6 c6 03          	test   $0x3,%sil
   42521:	75 62                	jne    42585 <poweroff()+0xb6>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   42523:	89 f0                	mov    %esi,%eax
   42525:	0d 00 00 00 80       	or     $0x80000000,%eax
   4252a:	89 da                	mov    %ebx,%edx
   4252c:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   4252d:	ba fc 0c 00 00       	mov    $0xcfc,%edx
   42532:	ed                   	in     (%dx),%eax
    while (addr >= 0 && !predicate(addr)) {
   42533:	3d 86 80 13 71       	cmp    $0x71138086,%eax
   42538:	74 07                	je     42541 <poweroff()+0x72>
   4253a:	3d 86 80 18 29       	cmp    $0x29188086,%eax
   4253f:	75 cc                	jne    4250d <poweroff()+0x3e>
        int pm_io_base = pci.readl(addr + 0x40) & 0xFFC0;
   42541:	8d 46 40             	lea    0x40(%rsi),%eax
    assert(addr >= 0 && !(addr & 3));
   42544:	40 f6 c6 03          	test   $0x3,%sil
   42548:	75 4f                	jne    42599 <poweroff()+0xca>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   4254a:	0d 00 00 00 80       	or     $0x80000000,%eax
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   4254f:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   42554:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42555:	ba fc 0c 00 00       	mov    $0xcfc,%edx
   4255a:	ed                   	in     (%dx),%eax
   4255b:	25 c0 ff 00 00       	and    $0xffc0,%eax
        outw(pm_io_base + 4, 0x2000);
   42560:	8d 50 04             	lea    0x4(%rax),%edx
    asm volatile("outw %0, %w1" : : "a" (data), "d" (port));
   42563:	b8 00 20 00 00       	mov    $0x2000,%eax
   42568:	66 ef                	out    %ax,(%dx)
    console_printf(CPOS(24, 0), 0xC000, "Cannot power off!\n");
   4256a:	ba 46 42 04 00       	mov    $0x44246,%edx
   4256f:	be 00 c0 00 00       	mov    $0xc000,%esi
   42574:	bf 80 07 00 00       	mov    $0x780,%edi
   42579:	b8 00 00 00 00       	mov    $0x0,%eax
   4257e:	e8 28 1a 00 00       	call   43fab <console_printf(int, int, char const*, ...)>
    while (true) {
   42583:	eb fe                	jmp    42583 <poweroff()+0xb4>
    assert(addr >= 0 && !(addr & 3));
   42585:	ba 0f 42 04 00       	mov    $0x4420f,%edx
   4258a:	be 57 00 00 00       	mov    $0x57,%esi
   4258f:	bf 06 42 04 00       	mov    $0x44206,%edi
   42594:	e8 75 f7 ff ff       	call   41d0e <assert_fail(char const*, int, char const*)>
   42599:	ba 0f 42 04 00       	mov    $0x4420f,%edx
   4259e:	be 57 00 00 00       	mov    $0x57,%esi
   425a3:	bf 06 42 04 00       	mov    $0x44206,%edi
   425a8:	e8 61 f7 ff ff       	call   41d0e <assert_fail(char const*, int, char const*)>
        int pm_io_base = pci.readl(addr + 0x40) & 0xFFC0;
   425ad:	b8 40 00 00 00       	mov    $0x40,%eax
   425b2:	eb 96                	jmp    4254a <poweroff()+0x7b>

00000000000425b4 <check_keyboard()>:
int check_keyboard() {
   425b4:	f3 0f 1e fa          	endbr64
   425b8:	55                   	push   %rbp
   425b9:	48 89 e5             	mov    %rsp,%rbp
   425bc:	41 54                	push   %r12
   425be:	53                   	push   %rbx
   425bf:	48 83 ec 20          	sub    $0x20,%rsp
    int c = keyboard_readc();
   425c3:	e8 e7 f3 ff ff       	call   419af <keyboard_readc()>
   425c8:	41 89 c4             	mov    %eax,%r12d
    if (c == 'a' || c == 'f' || c == 'e') {
   425cb:	8d 40 9b             	lea    -0x65(%rax),%eax
   425ce:	83 f8 01             	cmp    $0x1,%eax
   425d1:	76 1b                	jbe    425ee <check_keyboard()+0x3a>
   425d3:	41 83 fc 61          	cmp    $0x61,%r12d
   425d7:	74 15                	je     425ee <check_keyboard()+0x3a>
    } else if (c == 0x03 || c == 'q') {
   425d9:	41 83 fc 03          	cmp    $0x3,%r12d
   425dd:	74 0a                	je     425e9 <check_keyboard()+0x35>
   425df:	41 83 fc 71          	cmp    $0x71,%r12d
   425e3:	0f 85 cc 00 00 00    	jne    426b5 <check_keyboard()+0x101>
        poweroff();
   425e9:	e8 e1 fe ff ff       	call   424cf <poweroff()>
   425ee:	b8 80 03 e0 fe       	mov    $0xfee00380,%eax
   425f3:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
        memset(pt, 0, PAGESIZE * 2);
   425f9:	ba 00 20 00 00       	mov    $0x2000,%edx
   425fe:	be 00 00 00 00       	mov    $0x0,%esi
   42603:	bf 00 10 00 00       	mov    $0x1000,%edi
   42608:	e8 7b 0e 00 00       	call   43488 <memset>
        pt[0].entry[0] = 0x2000 | PTE_P | PTE_W;
   4260d:	48 c7 04 25 00 10 00 	movq   $0x2003,0x1000
   42614:	00 03 20 00 00 
        pt[1].entry[0] = PTE_P | PTE_W | PTE_PS;
   42619:	48 c7 04 25 00 20 00 	movq   $0x83,0x2000
   42620:	00 83 00 00 00 
    asm volatile("movq %0, %%cr3" : : "r" (x) : "memory");
   42625:	b8 00 10 00 00       	mov    $0x1000,%eax
   4262a:	0f 22 d8             	mov    %rax,%cr3
        multiboot_info[0] = 4;
   4262d:	c7 45 dc 04 00 00 00 	movl   $0x4,-0x24(%rbp)
            argument = "allocators";
   42634:	b8 59 42 04 00       	mov    $0x44259,%eax
        if (c == 'a') {
   42639:	41 83 fc 61          	cmp    $0x61,%r12d
   4263d:	74 12                	je     42651 <check_keyboard()+0x9d>
        const char* argument = "fork";
   4263f:	41 83 fc 65          	cmp    $0x65,%r12d
   42643:	b8 69 42 04 00       	mov    $0x44269,%eax
   42648:	ba 64 42 04 00       	mov    $0x44264,%edx
   4264d:	48 0f 45 c2          	cmovne %rdx,%rax
        assert(argument_ptr < 0x100000000L);
   42651:	48 89 c1             	mov    %rax,%rcx
   42654:	48 c1 e9 20          	shr    $0x20,%rcx
   42658:	75 67                	jne    426c1 <check_keyboard()+0x10d>
        multiboot_info[4] = (uint32_t) argument_ptr;
   4265a:	89 45 ec             	mov    %eax,-0x14(%rbp)
        stash_kernel_data(true);
   4265d:	bf 01 00 00 00       	mov    $0x1,%edi
   42662:	e8 74 f1 ff ff       	call   417db <stash_kernel_data(bool)>
        uintptr_t zero_size = (uintptr_t) &_kernel_end - (uintptr_t) &_edata;
   42667:	bb 98 f0 05 00       	mov    $0x5f098,%ebx
   4266c:	48 81 eb c0 14 05 00 	sub    $0x514c0,%rbx
        uintptr_t data_size = (uintptr_t) &_edata - (uintptr_t) &_data_start;
   42673:	ba c0 14 05 00       	mov    $0x514c0,%edx
   42678:	48 81 ea 00 60 04 00 	sub    $0x46000,%rdx
        uint8_t* data_stash = (uint8_t*) (SYMTAB_ADDR - data_size);
   4267f:	be 00 60 04 01       	mov    $0x1046000,%esi
   42684:	48 81 ee c0 14 05 00 	sub    $0x514c0,%rsi
        memcpy(&_data_start, data_stash, data_size);
   4268b:	bf 00 60 04 00       	mov    $0x46000,%edi
   42690:	e8 82 0d 00 00       	call   43417 <memcpy>
        memset(&_edata, 0, zero_size);
   42695:	48 89 da             	mov    %rbx,%rdx
   42698:	be 00 00 00 00       	mov    $0x0,%esi
   4269d:	bf c0 14 05 00       	mov    $0x514c0,%edi
   426a2:	e8 e1 0d 00 00       	call   43488 <memset>
        asm volatile("movl $0x2BADB002, %%eax; jmp kernel_entry"
   426a7:	48 8d 5d dc          	lea    -0x24(%rbp),%rbx
   426ab:	b8 02 b0 ad 2b       	mov    $0x2badb002,%eax
   426b0:	e9 4b d9 ff ff       	jmp    40000 <_kernel_start>
}
   426b5:	44 89 e0             	mov    %r12d,%eax
   426b8:	48 83 c4 20          	add    $0x20,%rsp
   426bc:	5b                   	pop    %rbx
   426bd:	41 5c                	pop    %r12
   426bf:	5d                   	pop    %rbp
   426c0:	c3                   	ret
        assert(argument_ptr < 0x100000000L);
   426c1:	ba 72 42 04 00       	mov    $0x44272,%edx
   426c6:	be f8 02 00 00       	mov    $0x2f8,%esi
   426cb:	bf df 41 04 00       	mov    $0x441df,%edi
   426d0:	e8 39 f6 ff ff       	call   41d0e <assert_fail(char const*, int, char const*)>

00000000000426d5 <panic(char const*, ...)>:
void panic(const char* format, ...) {
   426d5:	f3 0f 1e fa          	endbr64
   426d9:	55                   	push   %rbp
   426da:	48 89 e5             	mov    %rsp,%rbp
   426dd:	53                   	push   %rbx
   426de:	48 83 ec 58          	sub    $0x58,%rsp
   426e2:	48 89 75 c8          	mov    %rsi,-0x38(%rbp)
   426e6:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
   426ea:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
   426ee:	4c 89 45 e0          	mov    %r8,-0x20(%rbp)
   426f2:	4c 89 4d e8          	mov    %r9,-0x18(%rbp)
    va_start(val, format);
   426f6:	c7 45 a8 08 00 00 00 	movl   $0x8,-0x58(%rbp)
   426fd:	48 8d 45 10          	lea    0x10(%rbp),%rax
   42701:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   42705:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
   42709:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    panicking = true;
   4270d:	c6 05 f4 08 01 00 01 	movb   $0x1,0x108f4(%rip)        # 53008 <panicking>
    cursorpos = CPOS(24, 80);
   42714:	c7 05 de 68 07 00 d0 	movl   $0x7d0,0x768de(%rip)        # b8ffc <cursorpos>
   4271b:	07 00 00 
    if (format) {
   4271e:	48 85 ff             	test   %rdi,%rdi
   42721:	74 5e                	je     42781 <panic(char const*, ...)+0xac>
   42723:	48 89 fb             	mov    %rdi,%rbx
        error_printf(-1, COLOR_ERROR, "PANIC: ");
   42726:	ba 8e 42 04 00       	mov    $0x4428e,%edx
   4272b:	be 00 c0 00 00       	mov    $0xc000,%esi
   42730:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   42735:	b0 00                	mov    $0x0,%al
   42737:	e8 49 f5 ff ff       	call   41c85 <error_printf(int, int, char const*, ...)>
        error_vprintf(-1, COLOR_ERROR, format, val);
   4273c:	48 8d 4d a8          	lea    -0x58(%rbp),%rcx
   42740:	48 89 da             	mov    %rbx,%rdx
   42743:	be 00 c0 00 00       	mov    $0xc000,%esi
   42748:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   4274d:	e8 d3 f4 ff ff       	call   41c25 <error_vprintf(int, int, char const*, __va_list_tag*)>
        if (CCOL(cursorpos)) {
   42752:	8b 05 a4 68 07 00    	mov    0x768a4(%rip),%eax        # b8ffc <cursorpos>
   42758:	b9 50 00 00 00       	mov    $0x50,%ecx
   4275d:	99                   	cltd
   4275e:	f7 f9                	idiv   %ecx
   42760:	85 d2                	test   %edx,%edx
   42762:	74 16                	je     4277a <panic(char const*, ...)+0xa5>
            error_printf(-1, COLOR_ERROR, "\n");
   42764:	ba 6a 43 04 00       	mov    $0x4436a,%edx
   42769:	be 00 c0 00 00       	mov    $0xc000,%esi
   4276e:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   42773:	b0 00                	mov    $0x0,%al
   42775:	e8 0b f5 ff ff       	call   41c85 <error_printf(int, int, char const*, ...)>
        check_keyboard();
   4277a:	e8 35 fe ff ff       	call   425b4 <check_keyboard()>
    while (true) {
   4277f:	eb f9                	jmp    4277a <panic(char const*, ...)+0xa5>
        error_printf(-1, COLOR_ERROR, "PANIC");
   42781:	ba 96 42 04 00       	mov    $0x44296,%edx
   42786:	be 00 c0 00 00       	mov    $0xc000,%esi
   4278b:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   42790:	b0 00                	mov    $0x0,%al
   42792:	e8 ee f4 ff ff       	call   41c85 <error_printf(int, int, char const*, ...)>
        log_printf("\n");
   42797:	bf 6a 43 04 00       	mov    $0x4436a,%edi
   4279c:	b0 00                	mov    $0x0,%al
   4279e:	e8 40 f4 ff ff       	call   41be3 <log_printf(char const*, ...)>
[[noreturn]] void fail() {
   427a3:	eb d5                	jmp    4277a <panic(char const*, ...)+0xa5>
   427a5:	90                   	nop

00000000000427a6 <program_loader::program_number(char const*)>:
int program_loader::program_number(const char* program_name) {
   427a6:	f3 0f 1e fa          	endbr64
   427aa:	55                   	push   %rbp
   427ab:	48 89 e5             	mov    %rsp,%rbp
   427ae:	41 54                	push   %r12
   427b0:	53                   	push   %rbx
   427b1:	49 89 fc             	mov    %rdi,%r12
    for (size_t i = 0; i != sizeof(ramimages) / sizeof(ramimages[0]); ++i) {
   427b4:	bb 00 00 00 00       	mov    $0x0,%ebx
        if (strcmp(program_name, ramimages[i].name) == 0) {
   427b9:	48 8d 04 5b          	lea    (%rbx,%rbx,2),%rax
   427bd:	48 8b 34 c5 00 60 04 	mov    0x46000(,%rax,8),%rsi
   427c4:	00 
   427c5:	4c 89 e7             	mov    %r12,%rdi
   427c8:	e8 1f 0d 00 00       	call   434ec <strcmp>
   427cd:	85 c0                	test   %eax,%eax
   427cf:	74 14                	je     427e5 <program_loader::program_number(char const*)+0x3f>
    for (size_t i = 0; i != sizeof(ramimages) / sizeof(ramimages[0]); ++i) {
   427d1:	48 83 c3 01          	add    $0x1,%rbx
   427d5:	48 83 fb 06          	cmp    $0x6,%rbx
   427d9:	75 de                	jne    427b9 <program_loader::program_number(char const*)+0x13>
    return -1;
   427db:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   427e0:	5b                   	pop    %rbx
   427e1:	41 5c                	pop    %r12
   427e3:	5d                   	pop    %rbp
   427e4:	c3                   	ret
            return i;
   427e5:	89 d8                	mov    %ebx,%eax
   427e7:	eb f7                	jmp    427e0 <program_loader::program_number(char const*)+0x3a>
   427e9:	90                   	nop

00000000000427ea <program_loader::fix()>:
void program_loader::fix() {
   427ea:	f3 0f 1e fa          	endbr64
    while (ph_ && ph_ != endph_ && ph_->p_type != ELF_PTYPE_LOAD) {
   427ee:	48 8b 47 08          	mov    0x8(%rdi),%rax
   427f2:	48 85 c0             	test   %rax,%rax
   427f5:	74 19                	je     42810 <program_loader::fix()+0x26>
   427f7:	48 8b 57 10          	mov    0x10(%rdi),%rdx
   427fb:	eb 04                	jmp    42801 <program_loader::fix()+0x17>
        ++ph_;
   427fd:	48 89 47 08          	mov    %rax,0x8(%rdi)
    while (ph_ && ph_ != endph_ && ph_->p_type != ELF_PTYPE_LOAD) {
   42801:	48 39 c2             	cmp    %rax,%rdx
   42804:	74 0a                	je     42810 <program_loader::fix()+0x26>
   42806:	48 83 c0 38          	add    $0x38,%rax
   4280a:	83 78 c8 01          	cmpl   $0x1,-0x38(%rax)
   4280e:	75 ed                	jne    427fd <program_loader::fix()+0x13>
}
   42810:	c3                   	ret
   42811:	90                   	nop

0000000000042812 <program_loader::va() const>:
uintptr_t program_loader::va() const {
   42812:	f3 0f 1e fa          	endbr64
    return ph_ != endph_ ? ph_->p_va : 0;
   42816:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   4281a:	b8 00 00 00 00       	mov    $0x0,%eax
   4281f:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
   42823:	74 04                	je     42829 <program_loader::va() const+0x17>
   42825:	48 8b 42 10          	mov    0x10(%rdx),%rax
}
   42829:	c3                   	ret

000000000004282a <program_loader::size() const>:
size_t program_loader::size() const {
   4282a:	f3 0f 1e fa          	endbr64
    return ph_ != endph_ ? ph_->p_memsz : 0;
   4282e:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   42832:	b8 00 00 00 00       	mov    $0x0,%eax
   42837:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
   4283b:	74 04                	je     42841 <program_loader::size() const+0x17>
   4283d:	48 8b 42 28          	mov    0x28(%rdx),%rax
}
   42841:	c3                   	ret

0000000000042842 <program_loader::data() const>:
const char* program_loader::data() const {
   42842:	f3 0f 1e fa          	endbr64
    return ph_ != endph_ ? (const char*) elf_ + ph_->p_offset : nullptr;
   42846:	48 8b 47 08          	mov    0x8(%rdi),%rax
   4284a:	48 3b 47 10          	cmp    0x10(%rdi),%rax
   4284e:	74 08                	je     42858 <program_loader::data() const+0x16>
   42850:	48 8b 40 08          	mov    0x8(%rax),%rax
   42854:	48 03 07             	add    (%rdi),%rax
   42857:	c3                   	ret
   42858:	b8 00 00 00 00       	mov    $0x0,%eax
}
   4285d:	c3                   	ret

000000000004285e <program_loader::data_size() const>:
size_t program_loader::data_size() const {
   4285e:	f3 0f 1e fa          	endbr64
    return ph_ != endph_ ? ph_->p_filesz : 0;
   42862:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   42866:	b8 00 00 00 00       	mov    $0x0,%eax
   4286b:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
   4286f:	74 04                	je     42875 <program_loader::data_size() const+0x17>
   42871:	48 8b 42 20          	mov    0x20(%rdx),%rax
}
   42875:	c3                   	ret

0000000000042876 <program_loader::present() const>:
bool program_loader::present() const {
   42876:	f3 0f 1e fa          	endbr64
    return ph_ != endph_;
   4287a:	48 8b 47 10          	mov    0x10(%rdi),%rax
   4287e:	48 39 47 08          	cmp    %rax,0x8(%rdi)
   42882:	0f 95 c0             	setne  %al
}
   42885:	c3                   	ret

0000000000042886 <program_loader::entry() const>:
uintptr_t program_loader::entry() const {
   42886:	f3 0f 1e fa          	endbr64
    return elf_ ? elf_->e_entry : 0;
   4288a:	48 8b 17             	mov    (%rdi),%rdx
   4288d:	b8 00 00 00 00       	mov    $0x0,%eax
   42892:	48 85 d2             	test   %rdx,%rdx
   42895:	74 04                	je     4289b <program_loader::entry() const+0x15>
   42897:	48 8b 42 18          	mov    0x18(%rdx),%rax
}
   4289b:	c3                   	ret

000000000004289c <program_loader::operator++()>:
void program_loader::operator++() {
   4289c:	f3 0f 1e fa          	endbr64
    if (ph_ != endph_) {
   428a0:	48 8b 47 08          	mov    0x8(%rdi),%rax
   428a4:	48 3b 47 10          	cmp    0x10(%rdi),%rax
   428a8:	74 13                	je     428bd <program_loader::operator++()+0x21>
void program_loader::operator++() {
   428aa:	55                   	push   %rbp
   428ab:	48 89 e5             	mov    %rsp,%rbp
        ++ph_;
   428ae:	48 83 c0 38          	add    $0x38,%rax
   428b2:	48 89 47 08          	mov    %rax,0x8(%rdi)
        fix();
   428b6:	e8 2f ff ff ff       	call   427ea <program_loader::fix()>
}
   428bb:	5d                   	pop    %rbp
   428bc:	c3                   	ret
   428bd:	c3                   	ret

00000000000428be <program_loader::reset()>:
void program_loader::reset() {
   428be:	f3 0f 1e fa          	endbr64
    if (elf_) {
   428c2:	48 8b 07             	mov    (%rdi),%rax
   428c5:	48 85 c0             	test   %rax,%rax
   428c8:	74 49                	je     42913 <program_loader::reset()+0x55>
void program_loader::reset() {
   428ca:	55                   	push   %rbp
   428cb:	48 89 e5             	mov    %rsp,%rbp
        assert(elf_->e_magic == ELF_MAGIC);
   428ce:	81 38 7f 45 4c 46    	cmpl   $0x464c457f,(%rax)
   428d4:	75 29                	jne    428ff <program_loader::reset()+0x41>
        ph_ = (elf_program*) ((uint8_t*) elf_ + elf_->e_phoff);
   428d6:	48 89 c2             	mov    %rax,%rdx
   428d9:	48 03 50 20          	add    0x20(%rax),%rdx
   428dd:	48 89 57 08          	mov    %rdx,0x8(%rdi)
        endph_ = ph_ + elf_->e_phnum;
   428e1:	0f b7 48 38          	movzwl 0x38(%rax),%ecx
   428e5:	48 8d 04 cd 00 00 00 	lea    0x0(,%rcx,8),%rax
   428ec:	00 
   428ed:	48 29 c8             	sub    %rcx,%rax
   428f0:	48 8d 04 c2          	lea    (%rdx,%rax,8),%rax
   428f4:	48 89 47 10          	mov    %rax,0x10(%rdi)
        fix();
   428f8:	e8 ed fe ff ff       	call   427ea <program_loader::fix()>
}
   428fd:	5d                   	pop    %rbp
   428fe:	c3                   	ret
        assert(elf_->e_magic == ELF_MAGIC);
   428ff:	ba 9c 42 04 00       	mov    $0x4429c,%edx
   42904:	be 99 03 00 00       	mov    $0x399,%esi
   42909:	bf df 41 04 00       	mov    $0x441df,%edi
   4290e:	e8 fb f3 ff ff       	call   41d0e <assert_fail(char const*, int, char const*)>
        ph_ = endph_ = nullptr;
   42913:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
   4291a:	00 
   4291b:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
   42922:	00 
   42923:	c3                   	ret

0000000000042924 <program_loader::program_loader(int)>:
program_loader::program_loader(int program_number) {
   42924:	f3 0f 1e fa          	endbr64
   42928:	55                   	push   %rbp
   42929:	48 89 e5             	mov    %rsp,%rbp
    elf_ = nullptr;
   4292c:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    if (program_number >= 0
   42933:	83 fe 05             	cmp    $0x5,%esi
   42936:	77 12                	ja     4294a <program_loader::program_loader(int)+0x26>
        elf_ = (elf_header*) ramimages[program_number].begin;
   42938:	48 63 f6             	movslq %esi,%rsi
   4293b:	48 8d 04 76          	lea    (%rsi,%rsi,2),%rax
   4293f:	48 8b 04 c5 08 60 04 	mov    0x46008(,%rax,8),%rax
   42946:	00 
   42947:	48 89 07             	mov    %rax,(%rdi)
    reset();
   4294a:	e8 6f ff ff ff       	call   428be <program_loader::reset()>
}
   4294f:	5d                   	pop    %rbp
   42950:	c3                   	ret
   42951:	90                   	nop

0000000000042952 <program_loader::program_loader(char const*)>:
program_loader::program_loader(const char* program_name)
   42952:	f3 0f 1e fa          	endbr64
   42956:	55                   	push   %rbp
   42957:	48 89 e5             	mov    %rsp,%rbp
   4295a:	53                   	push   %rbx
   4295b:	48 83 ec 08          	sub    $0x8,%rsp
   4295f:	48 89 fb             	mov    %rdi,%rbx
   42962:	48 89 f7             	mov    %rsi,%rdi
    : program_loader(program_number(program_name)) {
   42965:	e8 3c fe ff ff       	call   427a6 <program_loader::program_number(char const*)>
   4296a:	89 c6                	mov    %eax,%esi
   4296c:	48 89 df             	mov    %rbx,%rdi
   4296f:	e8 b0 ff ff ff       	call   42924 <program_loader::program_loader(int)>
}
   42974:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
   42978:	c9                   	leave
   42979:	c3                   	ret

000000000004297a <__cxa_guard_acquire>:
int __cxa_guard_acquire(long long* arg) {
   4297a:	f3 0f 1e fa          	endbr64
	return __atomic_load_n(&_M_i, int(__m));
   4297e:	0f b6 17             	movzbl (%rdi),%edx
        return 0;
   42981:	b8 00 00 00 00       	mov    $0x0,%eax
    if (guard->load(std::memory_order_relaxed) == 2) {
   42986:	80 fa 02             	cmp    $0x2,%dl
   42989:	74 22                	je     429ad <__cxa_guard_acquire+0x33>

      _GLIBCXX_ALWAYS_INLINE __int_type
      exchange(__int_type __i,
	       memory_order __m = memory_order_seq_cst) noexcept
      {
	return __atomic_exchange_n(&_M_i, __i, int(__m));
   4298b:	ba 01 00 00 00       	mov    $0x1,%edx
   42990:	89 d0                	mov    %edx,%eax
   42992:	86 07                	xchg   %al,(%rdi)
        if (old_value == 2) {
   42994:	3c 02                	cmp    $0x2,%al
   42996:	74 08                	je     429a0 <__cxa_guard_acquire+0x26>
        } else if (old_value == 1) {
   42998:	3c 01                	cmp    $0x1,%al
   4299a:	75 0c                	jne    429a8 <__cxa_guard_acquire+0x2e>
    asm volatile("rdtsc" : "=a" (low), "=d" (high));
    return low | (high << 32);
}

__always_inline void pause() {
    asm volatile("pause" : : : "memory");
   4299c:	f3 90                	pause
}
   4299e:	eb f0                	jmp    42990 <__cxa_guard_acquire+0x16>
   429a0:	86 07                	xchg   %al,(%rdi)
            return 0;
   429a2:	b8 00 00 00 00       	mov    $0x0,%eax
   429a7:	c3                   	ret
            return 1;
   429a8:	b8 01 00 00 00       	mov    $0x1,%eax
}
   429ad:	c3                   	ret

00000000000429ae <__cxa_guard_release>:
void __cxa_guard_release(long long* arg) {
   429ae:	f3 0f 1e fa          	endbr64
	__atomic_store_n(&_M_i, __i, int(__m));
   429b2:	b8 02 00 00 00       	mov    $0x2,%eax
   429b7:	86 07                	xchg   %al,(%rdi)
}
   429b9:	c3                   	ret

00000000000429ba <in_alloc_region(unsigned long)>:
// k-memviewer.cc
//
//    The `memusage` class tracks memory usage by walking page tables,
//    looks for errors, and prints the memory map to the console.

bool in_alloc_region(uintptr_t pa) {
   429ba:	f3 0f 1e fa          	endbr64
    // true if we're within the heap region of a process
    //   first address of heap   bottom of stack
    //                     |                 |
    return (   (pa >= 0x103000 && pa < 0x13f000)
   429be:	48 81 e7 ff ff fb ff 	and    $0xfffffffffffbffff,%rdi
   429c5:	48 8d 97 00 d0 ef ff 	lea    -0x103000(%rdi),%rdx
            || (pa >= 0x143000 && pa < 0x17f000)
            || (pa >= 0x183000 && pa < 0x1bf000)
            || (pa >= 0x1c3000 && pa < 0x1ff000));
   429cc:	b8 01 00 00 00       	mov    $0x1,%eax
   429d1:	48 81 fa ff bf 03 00 	cmp    $0x3bfff,%rdx
   429d8:	76 11                	jbe    429eb <in_alloc_region(unsigned long)+0x31>
            || (pa >= 0x183000 && pa < 0x1bf000)
   429da:	48 81 ef 00 30 18 00 	sub    $0x183000,%rdi
   429e1:	48 81 ff ff bf 03 00 	cmp    $0x3bfff,%rdi
   429e8:	0f 96 c0             	setbe  %al
}
   429eb:	c3                   	ret

00000000000429ec <memusage::refresh()>:

// memusage::refresh()
//    Calculate the current physical usage map, using the current process
//    table.

void memusage::refresh() {
   429ec:	f3 0f 1e fa          	endbr64
   429f0:	55                   	push   %rbp
   429f1:	48 89 e5             	mov    %rsp,%rbp
   429f4:	41 57                	push   %r15
   429f6:	41 56                	push   %r14
   429f8:	41 55                	push   %r13
   429fa:	41 54                	push   %r12
   429fc:	53                   	push   %rbx
   429fd:	48 83 ec 48          	sub    $0x48,%rsp
   42a01:	49 89 fd             	mov    %rdi,%r13
    if (!v_) {
   42a04:	48 83 3f 00          	cmpq   $0x0,(%rdi)
   42a08:	74 48                	je     42a52 <memusage::refresh()+0x66>
        v_ = reinterpret_cast<unsigned*>(kalloc(PAGESIZE));
        assert(v_ != nullptr);
    }

    memset(v_, 0, (maxpa / PAGESIZE) * sizeof(*v_));
   42a0a:	49 8b 7d 00          	mov    0x0(%r13),%rdi
   42a0e:	ba 00 10 00 00       	mov    $0x1000,%edx
   42a13:	be 00 00 00 00       	mov    $0x0,%esi
   42a18:	e8 6b 0a 00 00       	call   43488 <memset>
inline int vmiter::try_map(void* kp, int perm) {
    return try_map((uintptr_t) kp, perm);
}

inline ptiter::ptiter(x86_64_pagetable* pt, uintptr_t va)
    : pt_(pt) {
   42a1d:	48 c7 45 b0 00 a0 05 	movq   $0x5a000,-0x50(%rbp)
   42a24:	00 
    go(va);
   42a25:	be 00 00 00 00       	mov    $0x0,%esi
   42a2a:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42a2e:	e8 0b ed ff ff       	call   4173e <ptiter::go(unsigned long)>

    // mark kernel page tables
    for (ptiter it(kernel_pagetable); it.active(); it.next()) {
   42a33:	48 b8 ff ff ff ff ff 	movabs $0xffffffffffff,%rax
   42a3a:	ff 00 00 
   42a3d:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
   42a41:	72 6d                	jb     42ab0 <memusage::refresh()+0xc4>
}
inline void ptiter::next() {
    down(true);
}
inline uintptr_t ptiter::pa() const {
    return *pep_ & PTE_PAMASK;
   42a43:	49 bc 00 f0 ff ff ff 	movabs $0xffffffffff000,%r12
   42a4a:	ff 0f 00 
   42a4d:	48 89 c3             	mov    %rax,%rbx
   42a50:	eb 3b                	jmp    42a8d <memusage::refresh()+0xa1>
        v_ = reinterpret_cast<unsigned*>(kalloc(PAGESIZE));
   42a52:	bf 00 10 00 00       	mov    $0x1000,%edi
   42a57:	e8 e5 e2 ff ff       	call   40d41 <kalloc(unsigned long)>
   42a5c:	49 89 45 00          	mov    %rax,0x0(%r13)
        assert(v_ != nullptr);
   42a60:	48 85 c0             	test   %rax,%rax
   42a63:	75 a5                	jne    42a0a <memusage::refresh()+0x1e>
   42a65:	ba b7 42 04 00       	mov    $0x442b7,%edx
   42a6a:	be 52 00 00 00       	mov    $0x52,%esi
   42a6f:	bf c5 42 04 00       	mov    $0x442c5,%edi
   42a74:	e8 95 f2 ff ff       	call   41d0e <assert_fail(char const*, int, char const*)>
    down(true);
   42a79:	be 01 00 00 00       	mov    $0x1,%esi
   42a7e:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42a82:	e8 c3 eb ff ff       	call   4164a <ptiter::down(bool)>
    for (ptiter it(kernel_pagetable); it.active(); it.next()) {
   42a87:	48 3b 5d c8          	cmp    -0x38(%rbp),%rbx
   42a8b:	72 23                	jb     42ab0 <memusage::refresh()+0xc4>
    return *pep_ & PTE_PAMASK;
   42a8d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   42a91:	4c 89 e1             	mov    %r12,%rcx
   42a94:	48 23 08             	and    (%rax),%rcx
   42a97:	48 89 c8             	mov    %rcx,%rax
        if (pa < maxpa) {
   42a9a:	48 81 f9 ff ff 3f 00 	cmp    $0x3fffff,%rcx
   42aa1:	77 d6                	ja     42a79 <memusage::refresh()+0x8d>
            v_[pa / PAGESIZE] |= flags;
   42aa3:	48 c1 e8 0a          	shr    $0xa,%rax
   42aa7:	49 03 45 00          	add    0x0(%r13),%rax
   42aab:	83 08 01             	orl    $0x1,(%rax)
   42aae:	eb c9                	jmp    42a79 <memusage::refresh()+0x8d>
        mark(it.pa(), f_kernel);
    }
    mark((uintptr_t) kernel_pagetable, f_kernel);
   42ab0:	b8 00 a0 05 00       	mov    $0x5a000,%eax
        if (pa < maxpa) {
   42ab5:	48 3d ff ff 3f 00    	cmp    $0x3fffff,%rax
   42abb:	77 0c                	ja     42ac9 <memusage::refresh()+0xdd>
            v_[pa / PAGESIZE] |= flags;
   42abd:	48 c1 e8 0c          	shr    $0xc,%rax
   42ac1:	49 8b 55 00          	mov    0x0(%r13),%rdx
   42ac5:	83 0c 82 01          	orl    $0x1,(%rdx,%rax,4)

    // mark pages accessible from each process's page table
    bool any = false;
    for (int pid = 1; pid < NPROC; ++pid) {
   42ac9:	bb f0 22 05 00       	mov    $0x522f0,%ebx
void memusage::refresh() {
   42ace:	41 bc 00 00 00 00    	mov    $0x0,%r12d
   42ad4:	be 00 00 00 00       	mov    $0x0,%esi
        if (p->state != P_FREE
            && p->pagetable
            && p->pagetable != kernel_pagetable) {
            any = true;

            for (ptiter it(p); it.active(); it.next()) {
   42ad9:	49 bf ff ff ff ff ff 	movabs $0xffffffffffff,%r15
   42ae0:	ff 00 00 
                mark(it.pa(), f_kernel | f_process(pid));
            }
            mark((uintptr_t) p->pagetable, f_kernel | f_process(pid));

            for (vmiter it(p); it.low(); ) {
   42ae3:	49 be ff ff ff ff ff 	movabs $0x7fffffffffff,%r14
   42aea:	7f 00 00 
   42aed:	e9 a2 01 00 00       	jmp    42c94 <memusage::refresh()+0x2a8>
    down(true);
   42af2:	be 01 00 00 00       	mov    $0x1,%esi
   42af7:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42afb:	e8 4a eb ff ff       	call   4164a <ptiter::down(bool)>
            for (ptiter it(p); it.active(); it.next()) {
   42b00:	4c 3b 7d c8          	cmp    -0x38(%rbp),%r15
   42b04:	72 31                	jb     42b37 <memusage::refresh()+0x14b>
    return *pep_ & PTE_PAMASK;
   42b06:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   42b0a:	48 b9 00 f0 ff ff ff 	movabs $0xffffffffff000,%rcx
   42b11:	ff 0f 00 
   42b14:	48 23 08             	and    (%rax),%rcx
   42b17:	48 89 c8             	mov    %rcx,%rax
        if (pa < maxpa) {
   42b1a:	48 81 f9 ff ff 3f 00 	cmp    $0x3fffff,%rcx
   42b21:	77 cf                	ja     42af2 <memusage::refresh()+0x106>
            v_[pa / PAGESIZE] |= flags;
   42b23:	48 c1 e8 0a          	shr    $0xa,%rax
   42b27:	49 03 45 00          	add    0x0(%r13),%rax
   42b2b:	8b 55 9c             	mov    -0x64(%rbp),%edx
   42b2e:	0b 10                	or     (%rax),%edx
   42b30:	83 ca 01             	or     $0x1,%edx
   42b33:	89 10                	mov    %edx,(%rax)
   42b35:	eb bb                	jmp    42af2 <memusage::refresh()+0x106>
            return 2U << pid;
   42b37:	b8 02 00 00 00       	mov    $0x2,%eax
   42b3c:	0f b6 4d 98          	movzbl -0x68(%rbp),%ecx
   42b40:	d3 e0                	shl    %cl,%eax
   42b42:	83 7d ac 1d          	cmpl   $0x1d,-0x54(%rbp)
   42b46:	ba 00 00 00 00       	mov    $0x0,%edx
   42b4b:	0f 43 c2             	cmovae %edx,%eax
            mark((uintptr_t) p->pagetable, f_kernel | f_process(pid));
   42b4e:	48 8b 7d a0          	mov    -0x60(%rbp),%rdi
   42b52:	48 8b 17             	mov    (%rdi),%rdx
        if (pa < maxpa) {
   42b55:	48 81 fa ff ff 3f 00 	cmp    $0x3fffff,%rdx
   42b5c:	77 13                	ja     42b71 <memusage::refresh()+0x185>
            v_[pa / PAGESIZE] |= flags;
   42b5e:	48 c1 ea 0c          	shr    $0xc,%rdx
   42b62:	49 8b 4d 00          	mov    0x0(%r13),%rcx
   42b66:	48 8d 14 91          	lea    (%rcx,%rdx,4),%rdx
   42b6a:	0b 02                	or     (%rdx),%eax
   42b6c:	83 c8 01             	or     $0x1,%eax
   42b6f:	89 02                	mov    %eax,(%rdx)
    : vmiter(p->pagetable, va) {
   42b71:	48 8b 45 a0          	mov    -0x60(%rbp),%rax
   42b75:	48 8b 00             	mov    (%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   42b78:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   42b7c:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   42b80:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   42b87:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   42b8e:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   42b95:	00 
    real_find(va);
   42b96:	be 00 00 00 00       	mov    $0x0,%esi
   42b9b:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42b9f:	e8 14 e8 ff ff       	call   413b8 <vmiter::real_find(unsigned long)>
    return va_ <= VA_LOWMAX;
   42ba4:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
            for (vmiter it(p); it.low(); ) {
   42ba8:	49 39 fe             	cmp    %rdi,%r14
   42bab:	0f 82 d2 00 00 00    	jb     42c83 <memusage::refresh()+0x297>
            return 2U << pid;
   42bb1:	b8 02 00 00 00       	mov    $0x2,%eax
   42bb6:	0f b6 4d 98          	movzbl -0x68(%rbp),%ecx
   42bba:	d3 e0                	shl    %cl,%eax
   42bbc:	83 7d ac 1c          	cmpl   $0x1c,-0x54(%rbp)
   42bc0:	ba 00 00 00 00       	mov    $0x0,%edx
   42bc5:	0f 46 d0             	cmovbe %eax,%edx
   42bc8:	89 55 ac             	mov    %edx,-0x54(%rbp)
   42bcb:	eb 2c                	jmp    42bf9 <memusage::refresh()+0x20d>
            v_[pa / PAGESIZE] |= flags;
   42bcd:	48 c1 e8 0c          	shr    $0xc,%rax
   42bd1:	49 8b 55 00          	mov    0x0(%r13),%rdx
   42bd5:	48 8d 14 82          	lea    (%rdx,%rax,4),%rdx
   42bd9:	8b 45 ac             	mov    -0x54(%rbp),%eax
   42bdc:	0b 02                	or     (%rdx),%eax
   42bde:	83 c8 02             	or     $0x2,%eax
   42be1:	89 02                	mov    %eax,(%rdx)
                if (it.user()) {
                    mark(it.pa(), f_user | f_process(pid));
                    it.next();
   42be3:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42be7:	e8 7e e8 ff ff       	call   4146a <vmiter::next()>
   42bec:	48 8b 7d c8          	mov    -0x38(%rbp),%rdi
            for (vmiter it(p); it.low(); ) {
   42bf0:	49 39 fe             	cmp    %rdi,%r14
   42bf3:	0f 82 8a 00 00 00    	jb     42c83 <memusage::refresh()+0x297>
    return (*pep_ & perm_ & p) == p;
   42bf9:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   42bfd:	48 8b 10             	mov    (%rax),%rdx
   42c00:	48 63 45 c4          	movslq -0x3c(%rbp),%rax
   42c04:	48 21 d0             	and    %rdx,%rax
                if (it.user()) {
   42c07:	48 f7 d0             	not    %rax
   42c0a:	a8 05                	test   $0x5,%al
   42c0c:	75 4d                	jne    42c5b <memusage::refresh()+0x26f>
    if (*pep_ & PTE_P) {
   42c0e:	f6 c2 01             	test   $0x1,%dl
   42c11:	74 d0                	je     42be3 <memusage::refresh()+0x1f7>
        if (level_ > 0) {
   42c13:	8b 45 c0             	mov    -0x40(%rbp),%eax
        uintptr_t pa = *pep_ & PTE_PAMASK;
   42c16:	48 be 00 f0 ff ff ff 	movabs $0xffffffffff000,%rsi
   42c1d:	ff 0f 00 
   42c20:	48 21 d6             	and    %rdx,%rsi
   42c23:	48 b9 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rcx
   42c2a:	ff 0f 00 
   42c2d:	48 21 ca             	and    %rcx,%rdx
   42c30:	85 c0                	test   %eax,%eax
   42c32:	48 0f 4f f2          	cmovg  %rdx,%rsi
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   42c36:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   42c3a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   42c41:	48 d3 e0             	shl    %cl,%rax
   42c44:	48 f7 d0             	not    %rax
   42c47:	48 21 f8             	and    %rdi,%rax
   42c4a:	48 01 f0             	add    %rsi,%rax
        if (pa < maxpa) {
   42c4d:	48 3d ff ff 3f 00    	cmp    $0x3fffff,%rax
   42c53:	0f 86 74 ff ff ff    	jbe    42bcd <memusage::refresh()+0x1e1>
   42c59:	eb 88                	jmp    42be3 <memusage::refresh()+0x1f7>
   42c5b:	8b 45 c0             	mov    -0x40(%rbp),%eax
   42c5e:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   42c62:	be 01 00 00 00       	mov    $0x1,%esi
   42c67:	48 d3 e6             	shl    %cl,%rsi
   42c6a:	48 83 ee 01          	sub    $0x1,%rsi
    return (va_ | pageoffmask(level_)) + 1;
   42c6e:	48 09 fe             	or     %rdi,%rsi
   42c71:	48 83 c6 01          	add    $0x1,%rsi
    real_find(last_va());
   42c75:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42c79:	e8 3a e7 ff ff       	call   413b8 <vmiter::real_find(unsigned long)>
}
   42c7e:	e9 69 ff ff ff       	jmp    42bec <memusage::refresh()+0x200>
            any = true;
   42c83:	0f b6 75 ab          	movzbl -0x55(%rbp),%esi
    for (int pid = 1; pid < NPROC; ++pid) {
   42c87:	48 81 c3 d0 00 00 00 	add    $0xd0,%rbx
   42c8e:	41 83 fc 0f          	cmp    $0xf,%r12d
   42c92:	74 69                	je     42cfd <memusage::refresh()+0x311>
   42c94:	44 89 65 ac          	mov    %r12d,-0x54(%rbp)
   42c98:	41 83 c4 01          	add    $0x1,%r12d
        if (p->state != P_FREE
   42c9c:	48 89 5d a0          	mov    %rbx,-0x60(%rbp)
   42ca0:	83 7b 0c 00          	cmpl   $0x0,0xc(%rbx)
   42ca4:	74 e1                	je     42c87 <memusage::refresh()+0x29b>
            && p->pagetable
   42ca6:	48 8b 03             	mov    (%rbx),%rax
            && p->pagetable != kernel_pagetable) {
   42ca9:	48 3d 00 a0 05 00    	cmp    $0x5a000,%rax
   42caf:	0f 95 c1             	setne  %cl
            && p->pagetable
   42cb2:	48 85 c0             	test   %rax,%rax
   42cb5:	0f 95 c2             	setne  %dl
            && p->pagetable != kernel_pagetable) {
   42cb8:	20 d1                	and    %dl,%cl
   42cba:	88 4d ab             	mov    %cl,-0x55(%rbp)
   42cbd:	74 c8                	je     42c87 <memusage::refresh()+0x29b>
   42cbf:	44 89 65 98          	mov    %r12d,-0x68(%rbp)
    : pt_(pt) {
   42cc3:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    go(va);
   42cc7:	be 00 00 00 00       	mov    $0x0,%esi
   42ccc:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42cd0:	e8 69 ea ff ff       	call   4173e <ptiter::go(unsigned long)>
            for (ptiter it(p); it.active(); it.next()) {
   42cd5:	4c 3b 7d c8          	cmp    -0x38(%rbp),%r15
   42cd9:	0f 82 58 fe ff ff    	jb     42b37 <memusage::refresh()+0x14b>
            return 2U << pid;
   42cdf:	b8 02 00 00 00       	mov    $0x2,%eax
   42ce4:	44 89 e1             	mov    %r12d,%ecx
   42ce7:	d3 e0                	shl    %cl,%eax
   42ce9:	83 7d ac 1c          	cmpl   $0x1c,-0x54(%rbp)
   42ced:	ba 00 00 00 00       	mov    $0x0,%edx
   42cf2:	0f 46 d0             	cmovbe %eax,%edx
   42cf5:	89 55 9c             	mov    %edx,-0x64(%rbp)
   42cf8:	e9 09 fe ff ff       	jmp    42b06 <memusage::refresh()+0x11a>
            }
        }
    }

    // if no different process page tables, use physical address instead
    if (!any) {
   42cfd:	40 84 f6             	test   %sil,%sil
   42d00:	74 1f                	je     42d21 <memusage::refresh()+0x335>
        }
    }

    // mark my own memory
    if (any) {
        mark((uintptr_t) v_, f_kernel);
   42d02:	49 8b 45 00          	mov    0x0(%r13),%rax
        if (pa < maxpa) {
   42d06:	48 3d ff ff 3f 00    	cmp    $0x3fffff,%rax
   42d0c:	0f 86 43 01 00 00    	jbe    42e55 <memusage::refresh()+0x469>
    }
}
   42d12:	48 83 c4 48          	add    $0x48,%rsp
   42d16:	5b                   	pop    %rbx
   42d17:	41 5c                	pop    %r12
   42d19:	41 5d                	pop    %r13
   42d1b:	41 5e                	pop    %r14
   42d1d:	41 5f                	pop    %r15
   42d1f:	5d                   	pop    %rbp
   42d20:	c3                   	ret
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   42d21:	48 c7 45 b0 00 a0 05 	movq   $0x5a000,-0x50(%rbp)
   42d28:	00 
   42d29:	48 c7 45 b8 00 a0 05 	movq   $0x5a000,-0x48(%rbp)
   42d30:	00 
   42d31:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   42d38:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   42d3f:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   42d46:	00 
    real_find(va);
   42d47:	be 00 00 00 00       	mov    $0x0,%esi
   42d4c:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42d50:	e8 63 e6 ff ff       	call   413b8 <vmiter::real_find(unsigned long)>
    return va_ <= VA_LOWMAX;
   42d55:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
        for (vmiter it(kernel_pagetable); it.low(); ) {
   42d59:	48 89 d0             	mov    %rdx,%rax
   42d5c:	48 c1 e8 2f          	shr    $0x2f,%rax
   42d60:	75 b0                	jne    42d12 <memusage::refresh()+0x326>
   42d62:	41 bc 01 00 00 00    	mov    $0x1,%r12d
            pa &= ~0x1000UL;
   42d68:	49 be 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r14
   42d6f:	ff 0f 00 
        uintptr_t pa = *pep_ & PTE_PAMASK;
   42d72:	49 bf 00 f0 ff ff ff 	movabs $0xffffffffff000,%r15
   42d79:	ff 0f 00 
   42d7c:	48 bb ff ff ff ff ff 	movabs $0x7fffffffffff,%rbx
   42d83:	7f 00 00 
   42d86:	eb 2e                	jmp    42db6 <memusage::refresh()+0x3ca>
   42d88:	8b 45 c0             	mov    -0x40(%rbp),%eax
   42d8b:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   42d8f:	4c 89 e6             	mov    %r12,%rsi
   42d92:	48 d3 e6             	shl    %cl,%rsi
   42d95:	48 83 ee 01          	sub    $0x1,%rsi
    return (va_ | pageoffmask(level_)) + 1;
   42d99:	48 09 d6             	or     %rdx,%rsi
   42d9c:	48 83 c6 01          	add    $0x1,%rsi
    real_find(last_va());
   42da0:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42da4:	e8 0f e6 ff ff       	call   413b8 <vmiter::real_find(unsigned long)>
    return va_ <= VA_LOWMAX;
   42da9:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
   42dad:	48 39 d3             	cmp    %rdx,%rbx
   42db0:	0f 82 5c ff ff ff    	jb     42d12 <memusage::refresh()+0x326>
    return (*pep_ & perm_ & p) == p;
   42db6:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   42dba:	48 8b 08             	mov    (%rax),%rcx
   42dbd:	48 63 45 c4          	movslq -0x3c(%rbp),%rax
   42dc1:	48 21 c8             	and    %rcx,%rax
                && pages[it.pa() / PAGESIZE].used()) {
   42dc4:	48 f7 d0             	not    %rax
   42dc7:	a8 05                	test   $0x5,%al
   42dc9:	75 bd                	jne    42d88 <memusage::refresh()+0x39c>
    if (*pep_ & PTE_P) {
   42dcb:	f6 c1 01             	test   $0x1,%cl
   42dce:	74 b8                	je     42d88 <memusage::refresh()+0x39c>
        if (level_ > 0) {
   42dd0:	8b 45 c0             	mov    -0x40(%rbp),%eax
            pa &= ~0x1000UL;
   42dd3:	48 89 cf             	mov    %rcx,%rdi
   42dd6:	4c 21 f7             	and    %r14,%rdi
        uintptr_t pa = *pep_ & PTE_PAMASK;
   42dd9:	48 89 ce             	mov    %rcx,%rsi
   42ddc:	4c 21 fe             	and    %r15,%rsi
   42ddf:	85 c0                	test   %eax,%eax
   42de1:	48 0f 4f f7          	cmovg  %rdi,%rsi
   42de5:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   42de9:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   42df0:	48 d3 e0             	shl    %cl,%rax
   42df3:	48 f7 d0             	not    %rax
   42df6:	48 21 d0             	and    %rdx,%rax
   42df9:	48 01 f0             	add    %rsi,%rax
                && it.pa() < MEMSIZE_PHYSICAL
   42dfc:	48 3d ff ff 1f 00    	cmp    $0x1fffff,%rax
   42e02:	77 84                	ja     42d88 <memusage::refresh()+0x39c>
                && pages[it.pa() / PAGESIZE].used()) {
   42e04:	48 89 c6             	mov    %rax,%rsi
   42e07:	48 c1 ee 0c          	shr    $0xc,%rsi
   42e0b:	80 be 00 20 05 00 00 	cmpb   $0x0,0x52000(%rsi)
   42e12:	0f 84 70 ff ff ff    	je     42d88 <memusage::refresh()+0x39c>
                unsigned owner = (it.pa() - PROC_START_ADDR) / 0x40000;
   42e18:	48 2d 00 00 10 00    	sub    $0x100000,%rax
   42e1e:	48 c1 e8 12          	shr    $0x12,%rax
        } else if (pid >= 1) {
   42e22:	83 f8 1c             	cmp    $0x1c,%eax
   42e25:	76 22                	jbe    42e49 <memusage::refresh()+0x45d>
            return 0;
   42e27:	b8 00 00 00 00       	mov    $0x0,%eax
            v_[pa / PAGESIZE] |= flags;
   42e2c:	49 8b 55 00          	mov    0x0(%r13),%rdx
   42e30:	48 8d 14 b2          	lea    (%rdx,%rsi,4),%rdx
   42e34:	0b 02                	or     (%rdx),%eax
   42e36:	83 c8 02             	or     $0x2,%eax
   42e39:	89 02                	mov    %eax,(%rdx)
                it.next();
   42e3b:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42e3f:	e8 26 e6 ff ff       	call   4146a <vmiter::next()>
   42e44:	e9 60 ff ff ff       	jmp    42da9 <memusage::refresh()+0x3bd>
                mark(it.pa(), f_user | f_process(owner + 1));
   42e49:	8d 48 01             	lea    0x1(%rax),%ecx
            return 2U << pid;
   42e4c:	b8 02 00 00 00       	mov    $0x2,%eax
   42e51:	d3 e0                	shl    %cl,%eax
   42e53:	eb d7                	jmp    42e2c <memusage::refresh()+0x440>
            v_[pa / PAGESIZE] |= flags;
   42e55:	48 89 c2             	mov    %rax,%rdx
   42e58:	48 c1 ea 0c          	shr    $0xc,%rdx
   42e5c:	83 0c 90 01          	orl    $0x1,(%rax,%rdx,4)
}
   42e60:	e9 ad fe ff ff       	jmp    42d12 <memusage::refresh()+0x326>
   42e65:	90                   	nop

0000000000042e66 <memusage::page_error(unsigned long, char const*, int) const>:

void memusage::page_error(uintptr_t pa, const char* desc, int pid) const {
   42e66:	f3 0f 1e fa          	endbr64
   42e6a:	55                   	push   %rbp
   42e6b:	48 89 e5             	mov    %rsp,%rbp
   42e6e:	41 56                	push   %r14
   42e70:	41 55                	push   %r13
   42e72:	41 54                	push   %r12
   42e74:	53                   	push   %rbx
   42e75:	49 89 f5             	mov    %rsi,%r13
   42e78:	49 89 d6             	mov    %rdx,%r14
   42e7b:	89 cb                	mov    %ecx,%ebx
    const char* fmt = pid >= 0
        ? "PAGE TABLE ERROR: %lx: %s (pid %d)\n"
   42e7d:	85 c9                	test   %ecx,%ecx
   42e7f:	41 bc d4 42 04 00    	mov    $0x442d4,%r12d
   42e85:	b8 e0 46 04 00       	mov    $0x446e0,%eax
   42e8a:	4c 0f 49 e0          	cmovns %rax,%r12
        : "PAGE TABLE ERROR: %lx: %s\n";
    error_printf(CPOS(22, 0), COLOR_ERROR, fmt, pa, desc, pid);
   42e8e:	41 89 c9             	mov    %ecx,%r9d
   42e91:	49 89 d0             	mov    %rdx,%r8
   42e94:	48 89 f1             	mov    %rsi,%rcx
   42e97:	4c 89 e2             	mov    %r12,%rdx
   42e9a:	be 00 c0 00 00       	mov    $0xc000,%esi
   42e9f:	bf e0 06 00 00       	mov    $0x6e0,%edi
   42ea4:	b8 00 00 00 00       	mov    $0x0,%eax
   42ea9:	e8 d7 ed ff ff       	call   41c85 <error_printf(int, int, char const*, ...)>
    log_printf(fmt, pa, desc, pid);
   42eae:	89 d9                	mov    %ebx,%ecx
   42eb0:	4c 89 f2             	mov    %r14,%rdx
   42eb3:	4c 89 ee             	mov    %r13,%rsi
   42eb6:	4c 89 e7             	mov    %r12,%rdi
   42eb9:	b8 00 00 00 00       	mov    $0x0,%eax
   42ebe:	e8 20 ed ff ff       	call   41be3 <log_printf(char const*, ...)>
}
   42ec3:	5b                   	pop    %rbx
   42ec4:	41 5c                	pop    %r12
   42ec6:	41 5d                	pop    %r13
   42ec8:	41 5e                	pop    %r14
   42eca:	5d                   	pop    %rbp
   42ecb:	c3                   	ret

0000000000042ecc <memusage::symbol_at(unsigned long) const>:

uint16_t memusage::symbol_at(uintptr_t pa) const {
   42ecc:	f3 0f 1e fa          	endbr64
   42ed0:	55                   	push   %rbp
   42ed1:	48 89 e5             	mov    %rsp,%rbp
   42ed4:	41 57                	push   %r15
   42ed6:	41 56                	push   %r14
   42ed8:	41 55                	push   %r13
   42eda:	41 54                	push   %r12
   42edc:	53                   	push   %rbx
   42edd:	48 83 ec 08          	sub    $0x8,%rsp
   42ee1:	49 89 fd             	mov    %rdi,%r13
   42ee4:	48 89 f3             	mov    %rsi,%rbx
    bool is_reserved = reserved_physical_address(pa);
   42ee7:	48 89 f7             	mov    %rsi,%rdi
   42eea:	e8 6e e9 ff ff       	call   4185d <reserved_physical_address(unsigned long)>
   42eef:	41 89 c4             	mov    %eax,%r12d
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   42ef2:	84 c0                	test   %al,%al
   42ef4:	74 3f                	je     42f35 <memusage::symbol_at(unsigned long) const+0x69>

    if (pa >= maxpa) {
        if (is_kernel) {
            return 'K' | 0x4000;
        } else if (is_reserved) {
            return '?' | 0x4000;
   42ef6:	b8 3f 40 00 00       	mov    $0x403f,%eax
    if (pa >= maxpa) {
   42efb:	48 81 fb ff ff 3f 00 	cmp    $0x3fffff,%rbx
   42f02:	77 57                	ja     42f5b <memusage::symbol_at(unsigned long) const+0x8f>
        } else {
            return '?' | 0xF000;
        }
    }

    auto v = v_[pa / PAGESIZE];
   42f04:	48 89 da             	mov    %rbx,%rdx
   42f07:	48 c1 ea 0c          	shr    $0xc,%rdx
   42f0b:	49 8b 45 00          	mov    0x0(%r13),%rax
   42f0f:	44 8b 34 90          	mov    (%rax,%rdx,4),%r14d
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   42f13:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   42f18:	48 39 c3             	cmp    %rax,%rbx
   42f1b:	72 4d                	jb     42f6a <memusage::symbol_at(unsigned long) const+0x9e>
   42f1d:	ba 00 00 00 00       	mov    $0x0,%edx
   42f22:	48 8d 88 00 10 00 00 	lea    0x1000(%rax),%rcx
        return 'C' | 0x0700;
   42f29:	b8 43 07 00 00       	mov    $0x743,%eax
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   42f2e:	48 39 cb             	cmp    %rcx,%rbx
   42f31:	73 3c                	jae    42f6f <memusage::symbol_at(unsigned long) const+0xa3>
   42f33:	eb 26                	jmp    42f5b <memusage::symbol_at(unsigned long) const+0x8f>
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   42f35:	48 89 df             	mov    %rbx,%rdi
   42f38:	e8 41 e9 ff ff       	call   4187e <allocatable_physical_address(unsigned long)>
   42f3d:	83 f0 01             	xor    $0x1,%eax
   42f40:	89 c2                	mov    %eax,%edx
    if (pa >= maxpa) {
   42f42:	48 81 fb ff ff 3f 00 	cmp    $0x3fffff,%rbx
   42f49:	0f 86 d3 01 00 00    	jbe    43122 <memusage::symbol_at(unsigned long) const+0x256>
            return '?' | 0xF000;
   42f4f:	3c 01                	cmp    $0x1,%al
   42f51:	19 c0                	sbb    %eax,%eax
   42f53:	66 25 f4 af          	and    $0xaff4,%ax
   42f57:	66 05 4b 40          	add    $0x404b,%ax
                ch |= names[pid];
            }
            return ch;
        }
    }
}
   42f5b:	48 83 c4 08          	add    $0x8,%rsp
   42f5f:	5b                   	pop    %rbx
   42f60:	41 5c                	pop    %r12
   42f62:	41 5d                	pop    %r13
   42f64:	41 5e                	pop    %r14
   42f66:	41 5f                	pop    %r15
   42f68:	5d                   	pop    %rbp
   42f69:	c3                   	ret
   42f6a:	ba 00 00 00 00       	mov    $0x0,%edx
    } else if (is_reserved && v > (f_kernel | f_user)) {
   42f6f:	41 83 fe 03          	cmp    $0x3,%r14d
   42f73:	0f 97 c1             	seta   %cl
   42f76:	76 09                	jbe    42f81 <memusage::symbol_at(unsigned long) const+0xb5>
   42f78:	45 84 e4             	test   %r12b,%r12b
   42f7b:	0f 85 d6 00 00 00    	jne    43057 <memusage::symbol_at(unsigned long) const+0x18b>
        return 'R' | 0x0700;
   42f81:	b8 52 07 00 00       	mov    $0x752,%eax
    } else if (is_reserved) {
   42f86:	45 84 e4             	test   %r12b,%r12b
   42f89:	75 d0                	jne    42f5b <memusage::symbol_at(unsigned long) const+0x8f>
    } else if (is_kernel && v > (f_kernel | f_user)) {
   42f8b:	84 c9                	test   %cl,%cl
   42f8d:	74 08                	je     42f97 <memusage::symbol_at(unsigned long) const+0xcb>
   42f8f:	84 d2                	test   %dl,%dl
   42f91:	0f 85 e8 00 00 00    	jne    4307f <memusage::symbol_at(unsigned long) const+0x1b3>
        return 'K' | 0x0D00;
   42f97:	b8 4b 0d 00 00       	mov    $0xd4b,%eax
    } else if (is_kernel) {
   42f9c:	84 d2                	test   %dl,%dl
   42f9e:	75 bb                	jne    42f5b <memusage::symbol_at(unsigned long) const+0x8f>
        return ' ' | 0x0700;
   42fa0:	b8 20 07 00 00       	mov    $0x720,%eax
    } else if (pa >= MEMSIZE_PHYSICAL) {
   42fa5:	48 81 fb ff ff 1f 00 	cmp    $0x1fffff,%rbx
   42fac:	77 ad                	ja     42f5b <memusage::symbol_at(unsigned long) const+0x8f>
            return '.' | 0x0700;
   42fae:	b8 2e 07 00 00       	mov    $0x72e,%eax
        if (v == 0) {
   42fb3:	45 85 f6             	test   %r14d,%r14d
   42fb6:	74 a3                	je     42f5b <memusage::symbol_at(unsigned long) const+0x8f>
        } else if (v == f_kernel) {
   42fb8:	41 83 fe 01          	cmp    $0x1,%r14d
   42fbc:	0f 84 4c 01 00 00    	je     4310e <memusage::symbol_at(unsigned long) const+0x242>
        } else if (v == f_user) {
   42fc2:	41 83 fe 02          	cmp    $0x2,%r14d
   42fc6:	0f 84 4c 01 00 00    	je     43118 <memusage::symbol_at(unsigned long) const+0x24c>
        } else if ((v & f_kernel) && (v & f_user)) {
   42fcc:	44 89 f0             	mov    %r14d,%eax
   42fcf:	f7 d0                	not    %eax
   42fd1:	a8 03                	test   $0x3,%al
   42fd3:	0f 84 d3 00 00 00    	je     430ac <memusage::symbol_at(unsigned long) const+0x1e0>
        return lsb(v >> 2);
   42fd9:	45 89 f7             	mov    %r14d,%r15d
   42fdc:	41 c1 ef 02          	shr    $0x2,%r15d
//    Returns 0 if `x == 0`.
inline constexpr int lsb(int x) {
    return __builtin_ffs(x);
}
inline constexpr int lsb(unsigned x) {
    return __builtin_ffs(x);
   42fe0:	45 0f bc ef          	bsf    %r15d,%r13d
   42fe4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   42fe9:	44 0f 44 e8          	cmove  %eax,%r13d
   42fed:	41 83 c5 01          	add    $0x1,%r13d
            uint16_t ch = colors[pid % 5] << 8;
   42ff1:	49 63 c5             	movslq %r13d,%rax
   42ff4:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
   42ffb:	48 c1 f8 21          	sar    $0x21,%rax
   42fff:	44 89 ea             	mov    %r13d,%edx
   43002:	c1 fa 1f             	sar    $0x1f,%edx
   43005:	29 d0                	sub    %edx,%eax
   43007:	8d 14 80             	lea    (%rax,%rax,4),%edx
   4300a:	44 89 e8             	mov    %r13d,%eax
   4300d:	29 d0                	sub    %edx,%eax
   4300f:	48 98                	cltq
   43011:	44 0f b6 a0 61 49 04 	movzbl 0x44961(%rax),%r12d
   43018:	00 
   43019:	41 c1 e4 08          	shl    $0x8,%r12d
            if (in_alloc_region(pa)) {
   4301d:	48 89 df             	mov    %rbx,%rdi
   43020:	e8 95 f9 ff ff       	call   429ba <in_alloc_region(unsigned long)>
   43025:	84 c0                	test   %al,%al
   43027:	74 0c                	je     43035 <memusage::symbol_at(unsigned long) const+0x169>
                    ch = 0xF << 8;
   43029:	83 3b 00             	cmpl   $0x0,(%rbx)
   4302c:	b8 00 0f 00 00       	mov    $0xf00,%eax
   43031:	44 0f 44 e0          	cmove  %eax,%r12d
        } else if (pid >= 1) {
   43035:	45 85 ff             	test   %r15d,%r15d
   43038:	0f 84 9b 00 00 00    	je     430d9 <memusage::symbol_at(unsigned long) const+0x20d>
   4303e:	41 83 fd 1d          	cmp    $0x1d,%r13d
   43042:	0f 8f 91 00 00 00    	jg     430d9 <memusage::symbol_at(unsigned long) const+0x20d>
            return 2U << pid;
   43048:	ba 02 00 00 00       	mov    $0x2,%edx
   4304d:	44 89 e9             	mov    %r13d,%ecx
   43050:	d3 e2                	shl    %cl,%edx
   43052:	e9 87 00 00 00       	jmp    430de <memusage::symbol_at(unsigned long) const+0x212>
        return lsb(v >> 2);
   43057:	41 c1 ee 02          	shr    $0x2,%r14d
   4305b:	31 c9                	xor    %ecx,%ecx
   4305d:	f3 41 0f bc ce       	tzcnt  %r14d,%ecx
   43062:	83 c1 01             	add    $0x1,%ecx
        page_error(pa, "reserved page mapped for user", marked_pid(v));
   43065:	ba ef 42 04 00       	mov    $0x442ef,%edx
   4306a:	48 89 de             	mov    %rbx,%rsi
   4306d:	4c 89 ef             	mov    %r13,%rdi
   43070:	e8 f1 fd ff ff       	call   42e66 <memusage::page_error(unsigned long, char const*, int) const>
        return 'R' | 0x0C00;
   43075:	b8 52 0c 00 00       	mov    $0xc52,%eax
   4307a:	e9 dc fe ff ff       	jmp    42f5b <memusage::symbol_at(unsigned long) const+0x8f>
        return lsb(v >> 2);
   4307f:	41 c1 ee 02          	shr    $0x2,%r14d
   43083:	41 0f bc ce          	bsf    %r14d,%ecx
   43087:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   4308c:	0f 44 c8             	cmove  %eax,%ecx
   4308f:	83 c1 01             	add    $0x1,%ecx
        page_error(pa, "kernel data page mapped for user", marked_pid(v));
   43092:	ba 08 47 04 00       	mov    $0x44708,%edx
   43097:	48 89 de             	mov    %rbx,%rsi
   4309a:	4c 89 ef             	mov    %r13,%rdi
   4309d:	e8 c4 fd ff ff       	call   42e66 <memusage::page_error(unsigned long, char const*, int) const>
        return 'K' | 0xCD00;
   430a2:	b8 4b cd ff ff       	mov    $0xffffcd4b,%eax
   430a7:	e9 af fe ff ff       	jmp    42f5b <memusage::symbol_at(unsigned long) const+0x8f>
        return lsb(v >> 2);
   430ac:	41 c1 ee 02          	shr    $0x2,%r14d
   430b0:	41 0f bc ce          	bsf    %r14d,%ecx
   430b4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   430b9:	0f 44 c8             	cmove  %eax,%ecx
   430bc:	83 c1 01             	add    $0x1,%ecx
            page_error(pa, "kernel allocated page mapped for user",
   430bf:	ba 30 47 04 00       	mov    $0x44730,%edx
   430c4:	48 89 de             	mov    %rbx,%rsi
   430c7:	4c 89 ef             	mov    %r13,%rdi
   430ca:	e8 97 fd ff ff       	call   42e66 <memusage::page_error(unsigned long, char const*, int) const>
            return '*' | 0xF400;
   430cf:	b8 2a f4 ff ff       	mov    $0xfffff42a,%eax
   430d4:	e9 82 fe ff ff       	jmp    42f5b <memusage::symbol_at(unsigned long) const+0x8f>
            return 0;
   430d9:	ba 00 00 00 00       	mov    $0x0,%edx
            if (v > (f_process(pid) | f_kernel | f_user)) {
   430de:	83 ca 03             	or     $0x3,%edx
                ch = 0x0F00 | 'S';
   430e1:	b8 53 0f 00 00       	mov    $0xf53,%eax
            if (v > (f_process(pid) | f_kernel | f_user)) {
   430e6:	44 39 f2             	cmp    %r14d,%edx
   430e9:	0f 82 6c fe ff ff    	jb     42f5b <memusage::symbol_at(unsigned long) const+0x8f>
            if (v & f_kernel) {
   430ef:	44 89 f0             	mov    %r14d,%eax
   430f2:	83 e0 01             	and    $0x1,%eax
   430f5:	c1 e0 0e             	shl    $0xe,%eax
                ch |= names[pid];
   430f8:	4d 63 ed             	movslq %r13d,%r13
   430fb:	66 41 0f be 95 40 49 	movsbw 0x44940(%r13),%dx
   43102:	04 00 
   43104:	09 d0                	or     %edx,%eax
   43106:	44 09 e0             	or     %r12d,%eax
   43109:	e9 4d fe ff ff       	jmp    42f5b <memusage::symbol_at(unsigned long) const+0x8f>
            return 'K' | 0x0D00;
   4310e:	b8 4b 0d 00 00       	mov    $0xd4b,%eax
   43113:	e9 43 fe ff ff       	jmp    42f5b <memusage::symbol_at(unsigned long) const+0x8f>
            return '.' | 0x0700;
   43118:	b8 2e 07 00 00       	mov    $0x72e,%eax
   4311d:	e9 39 fe ff ff       	jmp    42f5b <memusage::symbol_at(unsigned long) const+0x8f>
    auto v = v_[pa / PAGESIZE];
   43122:	48 89 d9             	mov    %rbx,%rcx
   43125:	48 c1 e9 0c          	shr    $0xc,%rcx
   43129:	49 8b 45 00          	mov    0x0(%r13),%rax
   4312d:	44 8b 34 88          	mov    (%rax,%rcx,4),%r14d
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   43131:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   43136:	48 39 c3             	cmp    %rax,%rbx
   43139:	0f 83 e3 fd ff ff    	jae    42f22 <memusage::symbol_at(unsigned long) const+0x56>
    } else if (is_reserved && v > (f_kernel | f_user)) {
   4313f:	41 83 fe 03          	cmp    $0x3,%r14d
   43143:	0f 97 c1             	seta   %cl
   43146:	e9 40 fe ff ff       	jmp    42f8b <memusage::symbol_at(unsigned long) const+0xbf>

000000000004314b <console_memviewer(proc*, int)>:
        console[CPOS(11 + pn/64, 12 + pn%64)] = ch;
    }
}


void console_memviewer(proc* vmp, int show_virtual) {
   4314b:	f3 0f 1e fa          	endbr64
   4314f:	55                   	push   %rbp
   43150:	48 89 e5             	mov    %rsp,%rbp
   43153:	41 57                	push   %r15
   43155:	41 56                	push   %r14
   43157:	41 55                	push   %r13
   43159:	41 54                	push   %r12
   4315b:	53                   	push   %rbx
   4315c:	48 83 ec 28          	sub    $0x28,%rsp
    // Process 0 must never be used.
    assert(ptable[0].state == P_FREE);
   43160:	8b 1d c6 f0 00 00    	mov    0xf0c6(%rip),%ebx        # 5222c <ptable+0xc>
   43166:	85 db                	test   %ebx,%ebx
   43168:	75 3f                	jne    431a9 <console_memviewer(proc*, int)+0x5e>
   4316a:	49 89 fd             	mov    %rdi,%r13
   4316d:	41 89 f6             	mov    %esi,%r14d

    // track physical memory
    static memusage mu;
   43170:	0f b6 05 11 bf 01 00 	movzbl 0x1bf11(%rip),%eax        # 5f088 <guard variable for console_memviewer(proc*, int)::mu>
   43177:	84 c0                	test   %al,%al
   43179:	74 42                	je     431bd <console_memviewer(proc*, int)+0x72>
    mu.refresh();
   4317b:	bf 90 f0 05 00       	mov    $0x5f090,%edi
   43180:	e8 67 f8 ff ff       	call   429ec <memusage::refresh()>

    // print physical memory
    console_printf(CPOS(0, 32), 0x0F00, "PHYSICAL MEMORY\n");
   43185:	ba 27 43 04 00       	mov    $0x44327,%edx
   4318a:	be 00 0f 00 00       	mov    $0xf00,%esi
   4318f:	bf 20 00 00 00       	mov    $0x20,%edi
   43194:	b8 00 00 00 00       	mov    $0x0,%eax
   43199:	e8 0d 0e 00 00       	call   43fab <console_printf(int, int, char const*, ...)>
   4319e:	41 bc 00 00 00 00    	mov    $0x0,%r12d
   431a4:	e9 8b 00 00 00       	jmp    43234 <console_memviewer(proc*, int)+0xe9>
    assert(ptable[0].state == P_FREE);
   431a9:	ba 0d 43 04 00       	mov    $0x4430d,%edx
   431ae:	be f6 00 00 00       	mov    $0xf6,%esi
   431b3:	bf c5 42 04 00       	mov    $0x442c5,%edi
   431b8:	e8 51 eb ff ff       	call   41d0e <assert_fail(char const*, int, char const*)>
    static memusage mu;
   431bd:	bf 88 f0 05 00       	mov    $0x5f088,%edi
   431c2:	e8 b3 f7 ff ff       	call   4297a <__cxa_guard_acquire>
   431c7:	85 c0                	test   %eax,%eax
   431c9:	74 b0                	je     4317b <console_memviewer(proc*, int)+0x30>
        : v_(nullptr) {
   431cb:	48 c7 05 ba be 01 00 	movq   $0x0,0x1beba(%rip)        # 5f090 <console_memviewer(proc*, int)::mu>
   431d2:	00 00 00 00 
    static memusage mu;
   431d6:	bf 88 f0 05 00       	mov    $0x5f088,%edi
   431db:	e8 ce f7 ff ff       	call   429ae <__cxa_guard_release>
   431e0:	eb 99                	jmp    4317b <console_memviewer(proc*, int)+0x30>

    for (int pn = 0; pn * PAGESIZE < memusage::max_view_pa; ++pn) {
        if (pn % 64 == 0) {
            console_printf(CPOS(1 + pn/64, 3), 0x0F00, "0x%06X ", pn << 12);
        }
        console[CPOS(1 + pn/64, 12 + pn%64)] = mu.symbol_at(pn * PAGESIZE);
   431e2:	8d 43 3f             	lea    0x3f(%rbx),%eax
   431e5:	85 db                	test   %ebx,%ebx
   431e7:	0f 49 c3             	cmovns %ebx,%eax
   431ea:	c1 f8 06             	sar    $0x6,%eax
   431ed:	8d 4c 80 05          	lea    0x5(%rax,%rax,4),%ecx
   431f1:	c1 e1 04             	shl    $0x4,%ecx
   431f4:	89 da                	mov    %ebx,%edx
   431f6:	c1 fa 1f             	sar    $0x1f,%edx
   431f9:	c1 ea 1a             	shr    $0x1a,%edx
   431fc:	8d 04 13             	lea    (%rbx,%rdx,1),%eax
   431ff:	83 e0 3f             	and    $0x3f,%eax
   43202:	29 d0                	sub    %edx,%eax
   43204:	44 8d 7c 01 0c       	lea    0xc(%rcx,%rax,1),%r15d
   43209:	4c 89 e6             	mov    %r12,%rsi
   4320c:	bf 90 f0 05 00       	mov    $0x5f090,%edi
   43211:	e8 b6 fc ff ff       	call   42ecc <memusage::symbol_at(unsigned long) const>
   43216:	4d 63 ff             	movslq %r15d,%r15
   43219:	66 43 89 84 3f 00 80 	mov    %ax,0xb8000(%r15,%r15,1)
   43220:	0b 00 
    for (int pn = 0; pn * PAGESIZE < memusage::max_view_pa; ++pn) {
   43222:	83 c3 01             	add    $0x1,%ebx
   43225:	49 81 c4 00 10 00 00 	add    $0x1000,%r12
   4322c:	81 fb 00 02 00 00    	cmp    $0x200,%ebx
   43232:	74 36                	je     4326a <console_memviewer(proc*, int)+0x11f>
        if (pn % 64 == 0) {
   43234:	f6 c3 3f             	test   $0x3f,%bl
   43237:	75 a9                	jne    431e2 <console_memviewer(proc*, int)+0x97>
            console_printf(CPOS(1 + pn/64, 3), 0x0F00, "0x%06X ", pn << 12);
   43239:	8d 43 3f             	lea    0x3f(%rbx),%eax
   4323c:	85 db                	test   %ebx,%ebx
   4323e:	0f 49 c3             	cmovns %ebx,%eax
   43241:	c1 f8 06             	sar    $0x6,%eax
   43244:	8d 7c 80 05          	lea    0x5(%rax,%rax,4),%edi
   43248:	c1 e7 04             	shl    $0x4,%edi
   4324b:	83 c7 03             	add    $0x3,%edi
   4324e:	44 89 e1             	mov    %r12d,%ecx
   43251:	ba 38 43 04 00       	mov    $0x44338,%edx
   43256:	be 00 0f 00 00       	mov    $0xf00,%esi
   4325b:	b8 00 00 00 00       	mov    $0x0,%eax
   43260:	e8 46 0d 00 00       	call   43fab <console_printf(int, int, char const*, ...)>
   43265:	e9 78 ff ff ff       	jmp    431e2 <console_memviewer(proc*, int)+0x97>
    }

    // print virtual memory
    if (vmp && vmp->pagetable && show_virtual) {
   4326a:	4d 85 ed             	test   %r13,%r13
   4326d:	74 0c                	je     4327b <console_memviewer(proc*, int)+0x130>
   4326f:	49 83 7d 00 00       	cmpq   $0x0,0x0(%r13)
   43274:	74 05                	je     4327b <console_memviewer(proc*, int)+0x130>
   43276:	45 85 f6             	test   %r14d,%r14d
   43279:	75 28                	jne    432a3 <console_memviewer(proc*, int)+0x158>
        console_memviewer_virtual(mu, vmp);
    } else {
        console_printf(CPOS(10, 0), 0x0F00, "\n\n\n\n\n\n\n\n\n\n\n\n\n");
   4327b:	ba 5e 43 04 00       	mov    $0x4435e,%edx
   43280:	be 00 0f 00 00       	mov    $0xf00,%esi
   43285:	bf 20 03 00 00       	mov    $0x320,%edi
   4328a:	b8 00 00 00 00       	mov    $0x0,%eax
   4328f:	e8 17 0d 00 00       	call   43fab <console_printf(int, int, char const*, ...)>
    }
}
   43294:	48 83 c4 28          	add    $0x28,%rsp
   43298:	5b                   	pop    %rbx
   43299:	41 5c                	pop    %r12
   4329b:	41 5d                	pop    %r13
   4329d:	41 5e                	pop    %r14
   4329f:	41 5f                	pop    %r15
   432a1:	5d                   	pop    %rbp
   432a2:	c3                   	ret
    console_printf(CPOS(10, 26), 0x0F00,
   432a3:	41 8b 4d 08          	mov    0x8(%r13),%ecx
   432a7:	ba 40 43 04 00       	mov    $0x44340,%edx
   432ac:	be 00 0f 00 00       	mov    $0xf00,%esi
   432b1:	bf 3a 03 00 00       	mov    $0x33a,%edi
   432b6:	b8 00 00 00 00       	mov    $0x0,%eax
   432bb:	e8 eb 0c 00 00       	call   43fab <console_printf(int, int, char const*, ...)>
    : vmiter(p->pagetable, va) {
   432c0:	49 8b 45 00          	mov    0x0(%r13),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   432c4:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   432c8:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   432cc:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   432d3:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   432da:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   432e1:	00 
    real_find(va);
   432e2:	be 00 00 00 00       	mov    $0x0,%esi
   432e7:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   432eb:	e8 c8 e0 ff ff       	call   413b8 <vmiter::real_find(unsigned long)>
    return va_;
   432f0:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
         it.va() < memusage::max_view_va;
   432f4:	48 81 fb ff ff 2f 00 	cmp    $0x2fffff,%rbx
   432fb:	77 97                	ja     43294 <console_memviewer(proc*, int)+0x149>
            pa &= ~0x1000UL;
   432fd:	49 bd 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r13
   43304:	ff 0f 00 
   43307:	e9 ad 00 00 00       	jmp    433b9 <console_memviewer(proc*, int)+0x26e>
            console_printf(CPOS(11 + pn / 64, 3), 0x0F00,
   4330c:	48 89 d8             	mov    %rbx,%rax
   4330f:	48 c1 e8 12          	shr    $0x12,%rax
   43313:	8d 3c 80             	lea    (%rax,%rax,4),%edi
   43316:	c1 e7 04             	shl    $0x4,%edi
   43319:	81 c7 73 03 00 00    	add    $0x373,%edi
   4331f:	48 89 d9             	mov    %rbx,%rcx
   43322:	ba 38 43 04 00       	mov    $0x44338,%edx
   43327:	be 00 0f 00 00       	mov    $0xf00,%esi
   4332c:	b8 00 00 00 00       	mov    $0x0,%eax
   43331:	e8 75 0c 00 00       	call   43fab <console_printf(int, int, char const*, ...)>
   43336:	e9 8f 00 00 00       	jmp    433ca <console_memviewer(proc*, int)+0x27f>
   4333b:	8d 4c d2 0c          	lea    0xc(%rdx,%rdx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   4333f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   43346:	48 d3 e0             	shl    %cl,%rax
   43349:	48 89 c6             	mov    %rax,%rsi
   4334c:	48 f7 d6             	not    %rsi
   4334f:	48 23 75 c8          	and    -0x38(%rbp),%rsi
   43353:	48 01 fe             	add    %rdi,%rsi
            ch = mu.symbol_at(it.pa());
   43356:	bf 90 f0 05 00       	mov    $0x5f090,%edi
   4335b:	e8 6c fb ff ff       	call   42ecc <memusage::symbol_at(unsigned long) const>
   43360:	89 c2                	mov    %eax,%edx
    return (*pep_ & perm_ & p) == p;
   43362:	48 63 45 c4          	movslq -0x3c(%rbp),%rax
   43366:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
   4336a:	48 23 01             	and    (%rcx),%rax
            if (it.user()) { // switch foreground & background colors
   4336d:	48 f7 d0             	not    %rax
   43370:	a8 05                	test   $0x5,%al
   43372:	0f 84 85 00 00 00    	je     433fd <console_memviewer(proc*, int)+0x2b2>
        console[CPOS(11 + pn/64, 12 + pn%64)] = ch;
   43378:	48 c1 eb 12          	shr    $0x12,%rbx
   4337c:	48 8d 04 9b          	lea    (%rbx,%rbx,4),%rax
   43380:	48 c1 e0 04          	shl    $0x4,%rax
   43384:	49 8d 84 04 7c 03 00 	lea    0x37c(%r12,%rax,1),%rax
   4338b:	00 
   4338c:	66 89 94 00 00 80 0b 	mov    %dx,0xb8000(%rax,%rax,1)
   43393:	00 
    return find(va_ + delta);
   43394:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   43398:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   4339f:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   433a3:	e8 10 e0 ff ff       	call   413b8 <vmiter::real_find(unsigned long)>
    return va_;
   433a8:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
         it.va() < memusage::max_view_va;
   433ac:	48 81 fb ff ff 2f 00 	cmp    $0x2fffff,%rbx
   433b3:	0f 87 db fe ff ff    	ja     43294 <console_memviewer(proc*, int)+0x149>
        unsigned long pn = it.va() / PAGESIZE;
   433b9:	49 89 dc             	mov    %rbx,%r12
   433bc:	49 c1 ec 0c          	shr    $0xc,%r12
        if (pn % 64 == 0) {
   433c0:	41 83 e4 3f          	and    $0x3f,%r12d
   433c4:	0f 84 42 ff ff ff    	je     4330c <console_memviewer(proc*, int)+0x1c1>
    return (*pep_ & PTE_P) != 0;
   433ca:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   433ce:	48 8b 00             	mov    (%rax),%rax
            ch = ' ';
   433d1:	ba 20 00 00 00       	mov    $0x20,%edx
        if (!it.present()) {
   433d6:	a8 01                	test   $0x1,%al
   433d8:	74 9e                	je     43378 <console_memviewer(proc*, int)+0x22d>
        if (level_ > 0) {
   433da:	8b 55 c0             	mov    -0x40(%rbp),%edx
            pa &= ~0x1000UL;
   433dd:	48 89 c7             	mov    %rax,%rdi
   433e0:	4c 21 ef             	and    %r13,%rdi
        if (level_ > 0) {
   433e3:	85 d2                	test   %edx,%edx
   433e5:	0f 8f 50 ff ff ff    	jg     4333b <console_memviewer(proc*, int)+0x1f0>
        uintptr_t pa = *pep_ & PTE_PAMASK;
   433eb:	48 bf 00 f0 ff ff ff 	movabs $0xffffffffff000,%rdi
   433f2:	ff 0f 00 
   433f5:	48 21 c7             	and    %rax,%rdi
   433f8:	e9 3e ff ff ff       	jmp    4333b <console_memviewer(proc*, int)+0x1f0>
                uint16_t z = (ch & 0x0F00) ^ ((ch & 0xF000) >> 4);
   433fd:	89 d0                	mov    %edx,%eax
   433ff:	66 c1 e8 04          	shr    $0x4,%ax
   43403:	31 d0                	xor    %edx,%eax
   43405:	66 25 00 0f          	and    $0xf00,%ax
   43409:	89 c1                	mov    %eax,%ecx
   4340b:	c1 e1 04             	shl    $0x4,%ecx
   4340e:	01 c8                	add    %ecx,%eax
                ch ^= z | (z << 4);
   43410:	31 c2                	xor    %eax,%edx
   43412:	e9 61 ff ff ff       	jmp    43378 <console_memviewer(proc*, int)+0x22d>

0000000000043417 <memcpy>:

// memcpy, memmove, memset, memcmp, memchr, strlen, strnlen, strcpy, strcmp,
// strncmp, strchr, strtoul, strtol
//    We must provide our own implementations.

void* memcpy(void* dst, const void* src, size_t n) {
   43417:	f3 0f 1e fa          	endbr64
   4341b:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    for (char* d = (char*) dst; n > 0; --n, ++s, ++d) {
   4341e:	48 85 d2             	test   %rdx,%rdx
   43421:	74 17                	je     4343a <memcpy+0x23>
   43423:	b9 00 00 00 00       	mov    $0x0,%ecx
        *d = *s;
   43428:	44 0f b6 04 0e       	movzbl (%rsi,%rcx,1),%r8d
   4342d:	44 88 04 08          	mov    %r8b,(%rax,%rcx,1)
    for (char* d = (char*) dst; n > 0; --n, ++s, ++d) {
   43431:	48 83 c1 01          	add    $0x1,%rcx
   43435:	48 39 d1             	cmp    %rdx,%rcx
   43438:	75 ee                	jne    43428 <memcpy+0x11>
    }
    return dst;
}
   4343a:	c3                   	ret

000000000004343b <memmove>:

void* memmove(void* dst, const void* src, size_t n) {
   4343b:	f3 0f 1e fa          	endbr64
   4343f:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
   43442:	48 39 fe             	cmp    %rdi,%rsi
   43445:	72 1d                	jb     43464 <memmove+0x29>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
   43447:	b9 00 00 00 00       	mov    $0x0,%ecx
   4344c:	48 85 d2             	test   %rdx,%rdx
   4344f:	74 12                	je     43463 <memmove+0x28>
            *d++ = *s++;
   43451:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
   43455:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
   43459:	48 83 c1 01          	add    $0x1,%rcx
   4345d:	48 39 ca             	cmp    %rcx,%rdx
   43460:	75 ef                	jne    43451 <memmove+0x16>
        }
    }
    return dst;
}
   43462:	c3                   	ret
   43463:	c3                   	ret
    if (s < d && s + n > d) {
   43464:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
   43468:	48 39 cf             	cmp    %rcx,%rdi
   4346b:	73 da                	jae    43447 <memmove+0xc>
        while (n-- > 0) {
   4346d:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
   43471:	48 85 d2             	test   %rdx,%rdx
   43474:	74 ec                	je     43462 <memmove+0x27>
            *--d = *--s;
   43476:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
   4347a:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
   4347d:	48 83 e9 01          	sub    $0x1,%rcx
   43481:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
   43485:	75 ef                	jne    43476 <memmove+0x3b>
   43487:	c3                   	ret

0000000000043488 <memset>:

void* memset(void* v, int c, size_t n) {
   43488:	f3 0f 1e fa          	endbr64
   4348c:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
   4348f:	48 85 d2             	test   %rdx,%rdx
   43492:	74 12                	je     434a6 <memset+0x1e>
   43494:	48 01 fa             	add    %rdi,%rdx
   43497:	48 89 f9             	mov    %rdi,%rcx
        *p = c;
   4349a:	40 88 31             	mov    %sil,(%rcx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
   4349d:	48 83 c1 01          	add    $0x1,%rcx
   434a1:	48 39 ca             	cmp    %rcx,%rdx
   434a4:	75 f4                	jne    4349a <memset+0x12>
    }
    return v;
}
   434a6:	c3                   	ret

00000000000434a7 <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
   434a7:	f3 0f 1e fa          	endbr64
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
   434ab:	80 3f 00             	cmpb   $0x0,(%rdi)
   434ae:	74 10                	je     434c0 <strlen+0x19>
   434b0:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
   434b5:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
   434b9:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
   434bd:	75 f6                	jne    434b5 <strlen+0xe>
   434bf:	c3                   	ret
   434c0:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
   434c5:	c3                   	ret

00000000000434c6 <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
   434c6:	f3 0f 1e fa          	endbr64
   434ca:	48 89 f0             	mov    %rsi,%rax
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
   434cd:	ba 00 00 00 00       	mov    $0x0,%edx
   434d2:	48 85 f6             	test   %rsi,%rsi
   434d5:	74 10                	je     434e7 <strnlen+0x21>
   434d7:	80 3c 17 00          	cmpb   $0x0,(%rdi,%rdx,1)
   434db:	74 0b                	je     434e8 <strnlen+0x22>
        ++n;
   434dd:	48 83 c2 01          	add    $0x1,%rdx
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
   434e1:	48 39 d0             	cmp    %rdx,%rax
   434e4:	75 f1                	jne    434d7 <strnlen+0x11>
   434e6:	c3                   	ret
   434e7:	c3                   	ret
   434e8:	48 89 d0             	mov    %rdx,%rax
    }
    return n;
}
   434eb:	c3                   	ret

00000000000434ec <strcmp>:
        *d++ = *src++;
    } while (d[-1]);
    return dst;
}

int strcmp(const char* a, const char* b) {
   434ec:	f3 0f 1e fa          	endbr64
    while (true) {
        unsigned char ac = *a, bc = *b;
   434f0:	0f b6 17             	movzbl (%rdi),%edx
   434f3:	0f b6 0e             	movzbl (%rsi),%ecx
        if (ac == 0 || bc == 0 || ac != bc) {
   434f6:	84 d2                	test   %dl,%dl
   434f8:	0f 94 c0             	sete   %al
   434fb:	38 ca                	cmp    %cl,%dl
   434fd:	41 0f 95 c0          	setne  %r8b
   43501:	44 08 c0             	or     %r8b,%al
   43504:	75 2a                	jne    43530 <strcmp+0x44>
   43506:	b8 01 00 00 00       	mov    $0x1,%eax
   4350b:	84 c9                	test   %cl,%cl
   4350d:	74 21                	je     43530 <strcmp+0x44>
        unsigned char ac = *a, bc = *b;
   4350f:	0f b6 14 07          	movzbl (%rdi,%rax,1),%edx
   43513:	0f b6 0c 06          	movzbl (%rsi,%rax,1),%ecx
        if (ac == 0 || bc == 0 || ac != bc) {
   43517:	48 83 c0 01          	add    $0x1,%rax
   4351b:	84 d2                	test   %dl,%dl
   4351d:	41 0f 94 c0          	sete   %r8b
   43521:	84 c9                	test   %cl,%cl
   43523:	41 0f 94 c1          	sete   %r9b
   43527:	45 08 c8             	or     %r9b,%r8b
   4352a:	75 04                	jne    43530 <strcmp+0x44>
   4352c:	38 ca                	cmp    %cl,%dl
   4352e:	74 df                	je     4350f <strcmp+0x23>
            return (ac > bc) - (ac < bc);
   43530:	38 d1                	cmp    %dl,%cl
   43532:	0f 92 c0             	setb   %al
   43535:	0f b6 c0             	movzbl %al,%eax
   43538:	38 ca                	cmp    %cl,%dl
   4353a:	83 d8 00             	sbb    $0x0,%eax
        }
        ++a, ++b;
    }
}
   4353d:	c3                   	ret

000000000004353e <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
   4353e:	f3 0f 1e fa          	endbr64
    while (*s && *s != (char) c) {
   43542:	0f b6 07             	movzbl (%rdi),%eax
   43545:	84 c0                	test   %al,%al
   43547:	74 10                	je     43559 <strchr+0x1b>
   43549:	40 38 f0             	cmp    %sil,%al
   4354c:	74 18                	je     43566 <strchr+0x28>
        ++s;
   4354e:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
   43552:	0f b6 07             	movzbl (%rdi),%eax
   43555:	84 c0                	test   %al,%al
   43557:	75 f0                	jne    43549 <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
   43559:	40 84 f6             	test   %sil,%sil
   4355c:	b8 00 00 00 00       	mov    $0x0,%eax
   43561:	48 0f 44 c7          	cmove  %rdi,%rax
    } else {
        return nullptr;
    }
}
   43565:	c3                   	ret
        return (char*) s;
   43566:	48 89 f8             	mov    %rdi,%rax
   43569:	c3                   	ret

000000000004356a <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
   4356a:	f3 0f 1e fa          	endbr64
   4356e:	55                   	push   %rbp
   4356f:	48 89 e5             	mov    %rsp,%rbp
   43572:	41 57                	push   %r15
   43574:	41 56                	push   %r14
   43576:	41 55                	push   %r13
   43578:	41 54                	push   %r12
   4357a:	53                   	push   %rbx
   4357b:	48 83 ec 58          	sub    $0x58,%rsp
   4357f:	49 89 ff             	mov    %rdi,%r15
   43582:	41 89 f5             	mov    %esi,%r13d
   43585:	49 89 d4             	mov    %rdx,%r12
   43588:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
   4358c:	0f b6 3a             	movzbl (%rdx),%edi
   4358f:	40 84 ff             	test   %dil,%dil
   43592:	0f 85 4f 06 00 00    	jne    43be7 <printer::vprintf(int, char const*, __va_list_tag*)+0x67d>
        }
        for (; width > 0; --width) {
            putc(' ', color);
        }
    }
}
   43598:	48 83 c4 58          	add    $0x58,%rsp
   4359c:	5b                   	pop    %rbx
   4359d:	41 5c                	pop    %r12
   4359f:	41 5d                	pop    %r13
   435a1:	41 5e                	pop    %r14
   435a3:	41 5f                	pop    %r15
   435a5:	5d                   	pop    %rbp
   435a6:	c3                   	ret
        for (++format; *format; ++format) {
   435a7:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
   435ac:	45 0f b6 64 24 01    	movzbl 0x1(%r12),%r12d
   435b2:	45 84 e4             	test   %r12b,%r12b
   435b5:	0f 84 14 01 00 00    	je     436cf <printer::vprintf(int, char const*, __va_list_tag*)+0x165>
        int flags = 0;
   435bb:	41 be 00 00 00 00    	mov    $0x0,%r14d
   435c1:	40 88 7d a8          	mov    %dil,-0x58(%rbp)
            const char* flagc = strchr(flag_chars, *format);
   435c5:	41 0f be f4          	movsbl %r12b,%esi
   435c9:	bf 30 50 04 00       	mov    $0x45030,%edi
   435ce:	e8 6b ff ff ff       	call   4353e <strchr>
   435d3:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
   435d6:	48 85 c0             	test   %rax,%rax
   435d9:	74 78                	je     43653 <printer::vprintf(int, char const*, __va_list_tag*)+0xe9>
                flags |= 1 << (flagc - flag_chars);
   435db:	48 81 e9 30 50 04 00 	sub    $0x45030,%rcx
   435e2:	b8 01 00 00 00       	mov    $0x1,%eax
   435e7:	d3 e0                	shl    %cl,%eax
   435e9:	41 09 c6             	or     %eax,%r14d
        for (++format; *format; ++format) {
   435ec:	48 83 c3 01          	add    $0x1,%rbx
   435f0:	44 0f b6 23          	movzbl (%rbx),%r12d
   435f4:	45 84 e4             	test   %r12b,%r12b
   435f7:	75 cc                	jne    435c5 <printer::vprintf(int, char const*, __va_list_tag*)+0x5b>
        int width = -1;
   435f9:	0f b6 7d a8          	movzbl -0x58(%rbp),%edi
   435fd:	44 89 75 a4          	mov    %r14d,-0x5c(%rbp)
   43601:	41 be ff ff ff ff    	mov    $0xffffffff,%r14d
        int precision = -1;
   43607:	c7 45 a0 ff ff ff ff 	movl   $0xffffffff,-0x60(%rbp)
        if (*format == '.') {
   4360e:	80 3b 2e             	cmpb   $0x2e,(%rbx)
   43611:	0f 84 e0 00 00 00    	je     436f7 <printer::vprintf(int, char const*, __va_list_tag*)+0x18d>
        switch (*format) {
   43617:	0f b6 03             	movzbl (%rbx),%eax
   4361a:	3c 6c                	cmp    $0x6c,%al
   4361c:	0f 84 7b 01 00 00    	je     4379d <printer::vprintf(int, char const*, __va_list_tag*)+0x233>
   43622:	0f 8f 56 01 00 00    	jg     4377e <printer::vprintf(int, char const*, __va_list_tag*)+0x214>
   43628:	3c 68                	cmp    $0x68,%al
   4362a:	0f 85 90 01 00 00    	jne    437c0 <printer::vprintf(int, char const*, __va_list_tag*)+0x256>
            ++format;
   43630:	48 8d 43 01          	lea    0x1(%rbx),%rax
   43634:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
        switch (*format) {
   43638:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
   4363c:	8d 50 bd             	lea    -0x43(%rax),%edx
   4363f:	80 fa 35             	cmp    $0x35,%dl
   43642:	0f 87 58 06 00 00    	ja     43ca0 <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
   43648:	0f b6 d2             	movzbl %dl,%edx
   4364b:	3e ff 24 d5 70 49 04 	notrack jmp *0x44970(,%rdx,8)
   43652:	00 
        if (*format >= '1' && *format <= '9') {
   43653:	0f b6 7d a8          	movzbl -0x58(%rbp),%edi
   43657:	44 89 75 a4          	mov    %r14d,-0x5c(%rbp)
   4365b:	41 8d 44 24 cf       	lea    -0x31(%r12),%eax
   43660:	3c 08                	cmp    $0x8,%al
   43662:	77 31                	ja     43695 <printer::vprintf(int, char const*, __va_list_tag*)+0x12b>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
   43664:	0f b6 03             	movzbl (%rbx),%eax
   43667:	8d 50 d0             	lea    -0x30(%rax),%edx
   4366a:	80 fa 09             	cmp    $0x9,%dl
   4366d:	77 72                	ja     436e1 <printer::vprintf(int, char const*, __va_list_tag*)+0x177>
   4366f:	41 be 00 00 00 00    	mov    $0x0,%r14d
                width = 10 * width + *format++ - '0';
   43675:	48 83 c3 01          	add    $0x1,%rbx
   43679:	43 8d 14 b6          	lea    (%r14,%r14,4),%edx
   4367d:	0f be c0             	movsbl %al,%eax
   43680:	44 8d 74 50 d0       	lea    -0x30(%rax,%rdx,2),%r14d
            for (width = 0; *format >= '0' && *format <= '9'; ) {
   43685:	0f b6 03             	movzbl (%rbx),%eax
   43688:	8d 50 d0             	lea    -0x30(%rax),%edx
   4368b:	80 fa 09             	cmp    $0x9,%dl
   4368e:	76 e5                	jbe    43675 <printer::vprintf(int, char const*, __va_list_tag*)+0x10b>
   43690:	e9 72 ff ff ff       	jmp    43607 <printer::vprintf(int, char const*, __va_list_tag*)+0x9d>
        } else if (*format == '*') {
   43695:	41 80 fc 2a          	cmp    $0x2a,%r12b
   43699:	75 51                	jne    436ec <printer::vprintf(int, char const*, __va_list_tag*)+0x182>
            width = va_arg(val, int);
   4369b:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   4369f:	8b 01                	mov    (%rcx),%eax
   436a1:	83 f8 2f             	cmp    $0x2f,%eax
   436a4:	77 17                	ja     436bd <printer::vprintf(int, char const*, __va_list_tag*)+0x153>
   436a6:	89 c2                	mov    %eax,%edx
   436a8:	48 03 51 10          	add    0x10(%rcx),%rdx
   436ac:	83 c0 08             	add    $0x8,%eax
   436af:	89 01                	mov    %eax,(%rcx)
   436b1:	44 8b 32             	mov    (%rdx),%r14d
            ++format;
   436b4:	48 83 c3 01          	add    $0x1,%rbx
   436b8:	e9 4a ff ff ff       	jmp    43607 <printer::vprintf(int, char const*, __va_list_tag*)+0x9d>
            width = va_arg(val, int);
   436bd:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   436c1:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   436c5:	48 8d 42 08          	lea    0x8(%rdx),%rax
   436c9:	48 89 41 08          	mov    %rax,0x8(%rcx)
   436cd:	eb e2                	jmp    436b1 <printer::vprintf(int, char const*, __va_list_tag*)+0x147>
        int flags = 0;
   436cf:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
        int width = -1;
   436d6:	41 be ff ff ff ff    	mov    $0xffffffff,%r14d
   436dc:	e9 26 ff ff ff       	jmp    43607 <printer::vprintf(int, char const*, __va_list_tag*)+0x9d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
   436e1:	41 be 00 00 00 00    	mov    $0x0,%r14d
   436e7:	e9 1b ff ff ff       	jmp    43607 <printer::vprintf(int, char const*, __va_list_tag*)+0x9d>
        int width = -1;
   436ec:	41 be ff ff ff ff    	mov    $0xffffffff,%r14d
   436f2:	e9 10 ff ff ff       	jmp    43607 <printer::vprintf(int, char const*, __va_list_tag*)+0x9d>
            ++format;
   436f7:	48 8d 53 01          	lea    0x1(%rbx),%rdx
            if (*format >= '0' && *format <= '9') {
   436fb:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
   436ff:	8d 48 d0             	lea    -0x30(%rax),%ecx
   43702:	80 f9 09             	cmp    $0x9,%cl
   43705:	76 13                	jbe    4371a <printer::vprintf(int, char const*, __va_list_tag*)+0x1b0>
            } else if (*format == '*') {
   43707:	3c 2a                	cmp    $0x2a,%al
   43709:	74 33                	je     4373e <printer::vprintf(int, char const*, __va_list_tag*)+0x1d4>
            ++format;
   4370b:	48 89 d3             	mov    %rdx,%rbx
                precision = 0;
   4370e:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%rbp)
   43715:	e9 fd fe ff ff       	jmp    43617 <printer::vprintf(int, char const*, __va_list_tag*)+0xad>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
   4371a:	b9 00 00 00 00       	mov    $0x0,%ecx
                    precision = 10 * precision + *format++ - '0';
   4371f:	48 83 c2 01          	add    $0x1,%rdx
   43723:	8d 0c 89             	lea    (%rcx,%rcx,4),%ecx
   43726:	0f be c0             	movsbl %al,%eax
   43729:	8d 4c 48 d0          	lea    -0x30(%rax,%rcx,2),%ecx
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
   4372d:	0f b6 02             	movzbl (%rdx),%eax
   43730:	8d 70 d0             	lea    -0x30(%rax),%esi
   43733:	40 80 fe 09          	cmp    $0x9,%sil
   43737:	76 e6                	jbe    4371f <printer::vprintf(int, char const*, __va_list_tag*)+0x1b5>
   43739:	48 89 d3             	mov    %rdx,%rbx
   4373c:	eb 1c                	jmp    4375a <printer::vprintf(int, char const*, __va_list_tag*)+0x1f0>
                precision = va_arg(val, int);
   4373e:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43742:	8b 01                	mov    (%rcx),%eax
   43744:	83 f8 2f             	cmp    $0x2f,%eax
   43747:	77 23                	ja     4376c <printer::vprintf(int, char const*, __va_list_tag*)+0x202>
   43749:	89 c2                	mov    %eax,%edx
   4374b:	48 03 51 10          	add    0x10(%rcx),%rdx
   4374f:	83 c0 08             	add    $0x8,%eax
   43752:	89 01                	mov    %eax,(%rcx)
   43754:	8b 0a                	mov    (%rdx),%ecx
                ++format;
   43756:	48 83 c3 02          	add    $0x2,%rbx
            if (precision < 0) {
   4375a:	85 c9                	test   %ecx,%ecx
   4375c:	b8 00 00 00 00       	mov    $0x0,%eax
   43761:	0f 49 c1             	cmovns %ecx,%eax
   43764:	89 45 a0             	mov    %eax,-0x60(%rbp)
   43767:	e9 ab fe ff ff       	jmp    43617 <printer::vprintf(int, char const*, __va_list_tag*)+0xad>
                precision = va_arg(val, int);
   4376c:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43770:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   43774:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43778:	48 89 41 08          	mov    %rax,0x8(%rcx)
   4377c:	eb d6                	jmp    43754 <printer::vprintf(int, char const*, __va_list_tag*)+0x1ea>
        switch (*format) {
   4377e:	3c 74                	cmp    $0x74,%al
   43780:	74 1b                	je     4379d <printer::vprintf(int, char const*, __va_list_tag*)+0x233>
   43782:	3c 7a                	cmp    $0x7a,%al
   43784:	74 17                	je     4379d <printer::vprintf(int, char const*, __va_list_tag*)+0x233>
        switch (*format) {
   43786:	8d 50 bd             	lea    -0x43(%rax),%edx
   43789:	80 fa 35             	cmp    $0x35,%dl
   4378c:	0f 87 e4 05 00 00    	ja     43d76 <printer::vprintf(int, char const*, __va_list_tag*)+0x80c>
   43792:	0f b6 d2             	movzbl %dl,%edx
   43795:	3e ff 24 d5 20 4b 04 	notrack jmp *0x44b20(,%rdx,8)
   4379c:	00 
            ++format;
   4379d:	48 8d 43 01          	lea    0x1(%rbx),%rax
   437a1:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
        switch (*format) {
   437a5:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
   437a9:	8d 50 bd             	lea    -0x43(%rax),%edx
   437ac:	80 fa 35             	cmp    $0x35,%dl
   437af:	0f 87 eb 04 00 00    	ja     43ca0 <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
   437b5:	0f b6 d2             	movzbl %dl,%edx
   437b8:	3e ff 24 d5 d0 4c 04 	notrack jmp *0x44cd0(,%rdx,8)
   437bf:	00 
   437c0:	8d 50 bd             	lea    -0x43(%rax),%edx
   437c3:	80 fa 35             	cmp    $0x35,%dl
   437c6:	0f 87 d0 04 00 00    	ja     43c9c <printer::vprintf(int, char const*, __va_list_tag*)+0x732>
   437cc:	0f b6 d2             	movzbl %dl,%edx
   437cf:	3e ff 24 d5 80 4e 04 	notrack jmp *0x44e80(,%rdx,8)
   437d6:	00 
            long x = length ? va_arg(val, long) : va_arg(val, int);
   437d7:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   437db:	8b 01                	mov    (%rcx),%eax
   437dd:	83 f8 2f             	cmp    $0x2f,%eax
   437e0:	77 3a                	ja     4381c <printer::vprintf(int, char const*, __va_list_tag*)+0x2b2>
   437e2:	89 c2                	mov    %eax,%edx
   437e4:	48 03 51 10          	add    0x10(%rcx),%rdx
   437e8:	83 c0 08             	add    $0x8,%eax
   437eb:	89 01                	mov    %eax,(%rcx)
   437ed:	48 8b 12             	mov    (%rdx),%rdx
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
   437f0:	48 89 d0             	mov    %rdx,%rax
   437f3:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
   437f7:	49 89 d1             	mov    %rdx,%r9
   437fa:	49 f7 d9             	neg    %r9
   437fd:	25 80 00 00 00       	and    $0x80,%eax
   43802:	4c 0f 44 ca          	cmove  %rdx,%r9
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
   43806:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
   43809:	09 c8                	or     %ecx,%eax
   4380b:	83 c8 60             	or     $0x60,%eax
   4380e:	89 45 a4             	mov    %eax,-0x5c(%rbp)
        const char* data = "";
   43811:	41 bc 6b 43 04 00    	mov    $0x4436b,%r12d
            break;
   43817:	e9 8a 02 00 00       	jmp    43aa6 <printer::vprintf(int, char const*, __va_list_tag*)+0x53c>
            long x = length ? va_arg(val, long) : va_arg(val, int);
   4381c:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43820:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   43824:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43828:	48 89 47 08          	mov    %rax,0x8(%rdi)
   4382c:	eb bf                	jmp    437ed <printer::vprintf(int, char const*, __va_list_tag*)+0x283>
        switch (*format) {
   4382e:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   43832:	eb 04                	jmp    43838 <printer::vprintf(int, char const*, __va_list_tag*)+0x2ce>
   43834:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
            long x = length ? va_arg(val, long) : va_arg(val, int);
   43838:	48 8b 5d 90          	mov    -0x70(%rbp),%rbx
   4383c:	8b 03                	mov    (%rbx),%eax
   4383e:	83 f8 2f             	cmp    $0x2f,%eax
   43841:	77 10                	ja     43853 <printer::vprintf(int, char const*, __va_list_tag*)+0x2e9>
   43843:	89 c2                	mov    %eax,%edx
   43845:	48 03 53 10          	add    0x10(%rbx),%rdx
   43849:	83 c0 08             	add    $0x8,%eax
   4384c:	89 03                	mov    %eax,(%rbx)
   4384e:	48 63 12             	movslq (%rdx),%rdx
   43851:	eb 9d                	jmp    437f0 <printer::vprintf(int, char const*, __va_list_tag*)+0x286>
   43853:	48 8b 5d 90          	mov    -0x70(%rbp),%rbx
   43857:	48 8b 53 08          	mov    0x8(%rbx),%rdx
   4385b:	48 8d 42 08          	lea    0x8(%rdx),%rax
   4385f:	48 89 43 08          	mov    %rax,0x8(%rbx)
   43863:	eb e9                	jmp    4384e <printer::vprintf(int, char const*, __va_list_tag*)+0x2e4>
        switch (*format) {
   43865:	b8 01 00 00 00       	mov    $0x1,%eax
   4386a:	be 0a 00 00 00       	mov    $0xa,%esi
   4386f:	e9 ac 00 00 00       	jmp    43920 <printer::vprintf(int, char const*, __va_list_tag*)+0x3b6>
   43874:	b8 00 00 00 00       	mov    $0x0,%eax
   43879:	be 0a 00 00 00       	mov    $0xa,%esi
   4387e:	e9 9d 00 00 00       	jmp    43920 <printer::vprintf(int, char const*, __va_list_tag*)+0x3b6>
   43883:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   43887:	b8 00 00 00 00       	mov    $0x0,%eax
   4388c:	be 0a 00 00 00       	mov    $0xa,%esi
   43891:	e9 8a 00 00 00       	jmp    43920 <printer::vprintf(int, char const*, __va_list_tag*)+0x3b6>
   43896:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   4389a:	b8 00 00 00 00       	mov    $0x0,%eax
   4389f:	be 0a 00 00 00       	mov    $0xa,%esi
   438a4:	eb 7a                	jmp    43920 <printer::vprintf(int, char const*, __va_list_tag*)+0x3b6>
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
   438a6:	48 8b 5d 90          	mov    -0x70(%rbp),%rbx
   438aa:	48 8b 53 08          	mov    0x8(%rbx),%rdx
   438ae:	48 8d 42 08          	lea    0x8(%rdx),%rax
   438b2:	48 89 43 08          	mov    %rax,0x8(%rbx)
   438b6:	e9 83 00 00 00       	jmp    4393e <printer::vprintf(int, char const*, __va_list_tag*)+0x3d4>
   438bb:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   438bf:	8b 01                	mov    (%rcx),%eax
   438c1:	83 f8 2f             	cmp    $0x2f,%eax
   438c4:	77 10                	ja     438d6 <printer::vprintf(int, char const*, __va_list_tag*)+0x36c>
   438c6:	89 c2                	mov    %eax,%edx
   438c8:	48 03 51 10          	add    0x10(%rcx),%rdx
   438cc:	83 c0 08             	add    $0x8,%eax
   438cf:	89 01                	mov    %eax,(%rcx)
   438d1:	44 8b 0a             	mov    (%rdx),%r9d
   438d4:	eb 6b                	jmp    43941 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d7>
   438d6:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   438da:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   438de:	48 8d 42 08          	lea    0x8(%rdx),%rax
   438e2:	48 89 47 08          	mov    %rax,0x8(%rdi)
   438e6:	eb e9                	jmp    438d1 <printer::vprintf(int, char const*, __va_list_tag*)+0x367>
   438e8:	41 89 f0             	mov    %esi,%r8d
   438eb:	c7 45 98 20 00 00 00 	movl   $0x20,-0x68(%rbp)
    const char* digits = upper_digits;
   438f2:	bf 60 50 04 00       	mov    $0x45060,%edi
   438f7:	eb 64                	jmp    4395d <printer::vprintf(int, char const*, __va_list_tag*)+0x3f3>
        switch (*format) {
   438f9:	b8 01 00 00 00       	mov    $0x1,%eax
   438fe:	eb 1b                	jmp    4391b <printer::vprintf(int, char const*, __va_list_tag*)+0x3b1>
   43900:	b8 00 00 00 00       	mov    $0x0,%eax
   43905:	eb 14                	jmp    4391b <printer::vprintf(int, char const*, __va_list_tag*)+0x3b1>
   43907:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   4390b:	b8 00 00 00 00       	mov    $0x0,%eax
   43910:	eb 09                	jmp    4391b <printer::vprintf(int, char const*, __va_list_tag*)+0x3b1>
   43912:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   43916:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
   4391b:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
   43920:	85 c0                	test   %eax,%eax
   43922:	74 97                	je     438bb <printer::vprintf(int, char const*, __va_list_tag*)+0x351>
   43924:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43928:	8b 01                	mov    (%rcx),%eax
   4392a:	83 f8 2f             	cmp    $0x2f,%eax
   4392d:	0f 87 73 ff ff ff    	ja     438a6 <printer::vprintf(int, char const*, __va_list_tag*)+0x33c>
   43933:	89 c2                	mov    %eax,%edx
   43935:	48 03 51 10          	add    0x10(%rcx),%rdx
   43939:	83 c0 08             	add    $0x8,%eax
   4393c:	89 01                	mov    %eax,(%rcx)
   4393e:	4c 8b 0a             	mov    (%rdx),%r9
            flags |= FLAG_NUMERIC;
   43941:	83 4d a4 20          	orl    $0x20,-0x5c(%rbp)
    if (base < 0) {
   43945:	85 f6                	test   %esi,%esi
   43947:	79 9f                	jns    438e8 <printer::vprintf(int, char const*, __va_list_tag*)+0x37e>
        base = -base;
   43949:	41 89 f0             	mov    %esi,%r8d
   4394c:	c7 45 98 20 00 00 00 	movl   $0x20,-0x68(%rbp)
        digits = lower_digits;
   43953:	bf 40 50 04 00       	mov    $0x45040,%edi
        base = -base;
   43958:	be 10 00 00 00       	mov    $0x10,%esi
    *--numbuf_end = '\0';
   4395d:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
   43961:	4c 89 c9             	mov    %r9,%rcx
   43964:	4c 8d 65 cf          	lea    -0x31(%rbp),%r12
        *--numbuf_end = digits[val % base];
   43968:	48 63 f6             	movslq %esi,%rsi
   4396b:	49 83 ec 01          	sub    $0x1,%r12
   4396f:	48 89 c8             	mov    %rcx,%rax
   43972:	ba 00 00 00 00       	mov    $0x0,%edx
   43977:	48 f7 f6             	div    %rsi
   4397a:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
   4397e:	41 88 14 24          	mov    %dl,(%r12)
        val /= base;
   43982:	48 89 ca             	mov    %rcx,%rdx
   43985:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
   43988:	48 39 f2             	cmp    %rsi,%rdx
   4398b:	73 de                	jae    4396b <printer::vprintf(int, char const*, __va_list_tag*)+0x401>
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
   4398d:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
   43990:	89 c8                	mov    %ecx,%eax
   43992:	f7 d0                	not    %eax
   43994:	a8 60                	test   $0x60,%al
   43996:	0f 85 5d 03 00 00    	jne    43cf9 <printer::vprintf(int, char const*, __va_list_tag*)+0x78f>
                prefix = "-";
   4399c:	bb 84 43 04 00       	mov    $0x44384,%ebx
            if (flags & FLAG_NEGATIVE) {
   439a1:	f6 c1 80             	test   $0x80,%cl
   439a4:	75 1e                	jne    439c4 <printer::vprintf(int, char const*, __va_list_tag*)+0x45a>
                prefix = "+";
   439a6:	bb 86 43 04 00       	mov    $0x44386,%ebx
            } else if (flags & FLAG_PLUSPOSITIVE) {
   439ab:	f6 c1 10             	test   $0x10,%cl
   439ae:	75 14                	jne    439c4 <printer::vprintf(int, char const*, __va_list_tag*)+0x45a>
        const char* prefix = "";
   439b0:	f6 c1 08             	test   $0x8,%cl
   439b3:	ba 94 42 04 00       	mov    $0x44294,%edx
   439b8:	b8 6b 43 04 00       	mov    $0x4436b,%eax
   439bd:	48 0f 45 c2          	cmovne %rdx,%rax
   439c1:	48 89 c3             	mov    %rax,%rbx
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
   439c4:	8b 45 a0             	mov    -0x60(%rbp),%eax
   439c7:	f7 d0                	not    %eax
   439c9:	c1 e8 1f             	shr    $0x1f,%eax
   439cc:	89 45 8c             	mov    %eax,-0x74(%rbp)
            datalen = strlen(data);
   439cf:	4c 89 e7             	mov    %r12,%rdi
   439d2:	e8 d0 fa ff ff       	call   434a7 <strlen>
   439d7:	89 45 9c             	mov    %eax,-0x64(%rbp)
            && precision >= 0) {
   439da:	83 7d 98 00          	cmpl   $0x0,-0x68(%rbp)
   439de:	0f 84 0a 01 00 00    	je     43aee <printer::vprintf(int, char const*, __va_list_tag*)+0x584>
   439e4:	80 7d 8c 00          	cmpb   $0x0,-0x74(%rbp)
   439e8:	0f 84 00 01 00 00    	je     43aee <printer::vprintf(int, char const*, __va_list_tag*)+0x584>
            zeros = precision > datalen ? precision - datalen : 0;
   439ee:	8b 4d a0             	mov    -0x60(%rbp),%ecx
   439f1:	89 ca                	mov    %ecx,%edx
   439f3:	29 c2                	sub    %eax,%edx
   439f5:	39 c1                	cmp    %eax,%ecx
   439f7:	b8 00 00 00 00       	mov    $0x0,%eax
   439fc:	0f 4f c2             	cmovg  %edx,%eax
   439ff:	89 45 a0             	mov    %eax,-0x60(%rbp)
   43a02:	e9 fd 00 00 00       	jmp    43b04 <printer::vprintf(int, char const*, __va_list_tag*)+0x59a>
        switch (*format) {
   43a07:	b8 01 00 00 00       	mov    $0x1,%eax
   43a0c:	eb 1b                	jmp    43a29 <printer::vprintf(int, char const*, __va_list_tag*)+0x4bf>
   43a0e:	b8 00 00 00 00       	mov    $0x0,%eax
   43a13:	eb 14                	jmp    43a29 <printer::vprintf(int, char const*, __va_list_tag*)+0x4bf>
   43a15:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   43a19:	b8 00 00 00 00       	mov    $0x0,%eax
   43a1e:	eb 09                	jmp    43a29 <printer::vprintf(int, char const*, __va_list_tag*)+0x4bf>
   43a20:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   43a24:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
   43a29:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
   43a2e:	e9 ed fe ff ff       	jmp    43920 <printer::vprintf(int, char const*, __va_list_tag*)+0x3b6>
        switch (*format) {
   43a33:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   43a37:	eb 04                	jmp    43a3d <printer::vprintf(int, char const*, __va_list_tag*)+0x4d3>
   43a39:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
            num = (uintptr_t) va_arg(val, void*);
   43a3d:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43a41:	8b 01                	mov    (%rcx),%eax
   43a43:	83 f8 2f             	cmp    $0x2f,%eax
   43a46:	77 1f                	ja     43a67 <printer::vprintf(int, char const*, __va_list_tag*)+0x4fd>
   43a48:	89 c2                	mov    %eax,%edx
   43a4a:	48 03 51 10          	add    0x10(%rcx),%rdx
   43a4e:	83 c0 08             	add    $0x8,%eax
   43a51:	89 01                	mov    %eax,(%rcx)
   43a53:	4c 8b 0a             	mov    (%rdx),%r9
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
   43a56:	81 4d a4 21 01 00 00 	orl    $0x121,-0x5c(%rbp)
            base = -16;
   43a5d:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
   43a62:	e9 e2 fe ff ff       	jmp    43949 <printer::vprintf(int, char const*, __va_list_tag*)+0x3df>
            num = (uintptr_t) va_arg(val, void*);
   43a67:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43a6b:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   43a6f:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43a73:	48 89 47 08          	mov    %rax,0x8(%rdi)
   43a77:	eb da                	jmp    43a53 <printer::vprintf(int, char const*, __va_list_tag*)+0x4e9>
        switch (*format) {
   43a79:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   43a7d:	eb 04                	jmp    43a83 <printer::vprintf(int, char const*, __va_list_tag*)+0x519>
   43a7f:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
            data = va_arg(val, char*);
   43a83:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43a87:	8b 07                	mov    (%rdi),%eax
   43a89:	83 f8 2f             	cmp    $0x2f,%eax
   43a8c:	0f 87 74 01 00 00    	ja     43c06 <printer::vprintf(int, char const*, __va_list_tag*)+0x69c>
   43a92:	89 c2                	mov    %eax,%edx
   43a94:	48 03 57 10          	add    0x10(%rdi),%rdx
   43a98:	83 c0 08             	add    $0x8,%eax
   43a9b:	89 07                	mov    %eax,(%rdi)
   43a9d:	4c 8b 22             	mov    (%rdx),%r12
        unsigned long num = 0;
   43aa0:	41 b9 00 00 00 00    	mov    $0x0,%r9d
        if (flags & FLAG_NUMERIC) {
   43aa6:	8b 45 a4             	mov    -0x5c(%rbp),%eax
   43aa9:	83 e0 20             	and    $0x20,%eax
   43aac:	89 45 98             	mov    %eax,-0x68(%rbp)
   43aaf:	0f 85 2f 02 00 00    	jne    43ce4 <printer::vprintf(int, char const*, __va_list_tag*)+0x77a>
            prefix = (base == -16 ? "0x" : "0X");
   43ab5:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
        const char* prefix = "";
   43abc:	bb 6b 43 04 00       	mov    $0x4436b,%ebx
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
   43ac1:	8b 4d a0             	mov    -0x60(%rbp),%ecx
   43ac4:	89 c8                	mov    %ecx,%eax
   43ac6:	f7 d0                	not    %eax
   43ac8:	c1 e8 1f             	shr    $0x1f,%eax
   43acb:	88 45 8c             	mov    %al,-0x74(%rbp)
   43ace:	83 7d 98 00          	cmpl   $0x0,-0x68(%rbp)
   43ad2:	0f 85 f7 fe ff ff    	jne    439cf <printer::vprintf(int, char const*, __va_list_tag*)+0x465>
   43ad8:	84 c0                	test   %al,%al
   43ada:	0f 84 ef fe ff ff    	je     439cf <printer::vprintf(int, char const*, __va_list_tag*)+0x465>
            datalen = strnlen(data, precision);
   43ae0:	48 63 f1             	movslq %ecx,%rsi
   43ae3:	4c 89 e7             	mov    %r12,%rdi
   43ae6:	e8 db f9 ff ff       	call   434c6 <strnlen>
   43aeb:	89 45 9c             	mov    %eax,-0x64(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
   43aee:	8b 45 a4             	mov    -0x5c(%rbp),%eax
   43af1:	83 e0 26             	and    $0x26,%eax
            zeros = 0;
   43af4:	c7 45 a0 00 00 00 00 	movl   $0x0,-0x60(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
   43afb:	83 f8 22             	cmp    $0x22,%eax
   43afe:	0f 84 46 02 00 00    	je     43d4a <printer::vprintf(int, char const*, __va_list_tag*)+0x7e0>
        width -= datalen + zeros + strlen(prefix);
   43b04:	48 89 df             	mov    %rbx,%rdi
   43b07:	e8 9b f9 ff ff       	call   434a7 <strlen>
   43b0c:	8b 4d a0             	mov    -0x60(%rbp),%ecx
   43b0f:	8b 7d 9c             	mov    -0x64(%rbp),%edi
   43b12:	01 f9                	add    %edi,%ecx
   43b14:	44 89 f2             	mov    %r14d,%edx
   43b17:	29 ca                	sub    %ecx,%edx
   43b19:	29 c2                	sub    %eax,%edx
   43b1b:	41 89 d6             	mov    %edx,%r14d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
   43b1e:	f6 45 a4 04          	testb  $0x4,-0x5c(%rbp)
   43b22:	75 32                	jne    43b56 <printer::vprintf(int, char const*, __va_list_tag*)+0x5ec>
   43b24:	85 d2                	test   %edx,%edx
   43b26:	7e 2e                	jle    43b56 <printer::vprintf(int, char const*, __va_list_tag*)+0x5ec>
        width -= datalen + zeros + strlen(prefix);
   43b28:	89 55 a4             	mov    %edx,-0x5c(%rbp)
            putc(' ', color);
   43b2b:	49 8b 07             	mov    (%r15),%rax
   43b2e:	44 89 ea             	mov    %r13d,%edx
   43b31:	be 20 00 00 00       	mov    $0x20,%esi
   43b36:	4c 89 ff             	mov    %r15,%rdi
   43b39:	ff 10                	call   *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
   43b3b:	41 83 ee 01          	sub    $0x1,%r14d
   43b3f:	45 85 f6             	test   %r14d,%r14d
   43b42:	7f e7                	jg     43b2b <printer::vprintf(int, char const*, __va_list_tag*)+0x5c1>
   43b44:	8b 55 a4             	mov    -0x5c(%rbp),%edx
   43b47:	85 d2                	test   %edx,%edx
   43b49:	b8 01 00 00 00       	mov    $0x1,%eax
   43b4e:	0f 4f c2             	cmovg  %edx,%eax
   43b51:	29 c2                	sub    %eax,%edx
   43b53:	41 89 d6             	mov    %edx,%r14d
        for (; *prefix; ++prefix) {
   43b56:	0f b6 03             	movzbl (%rbx),%eax
   43b59:	84 c0                	test   %al,%al
   43b5b:	74 19                	je     43b76 <printer::vprintf(int, char const*, __va_list_tag*)+0x60c>
            putc(*prefix, color);
   43b5d:	0f b6 f0             	movzbl %al,%esi
   43b60:	49 8b 07             	mov    (%r15),%rax
   43b63:	44 89 ea             	mov    %r13d,%edx
   43b66:	4c 89 ff             	mov    %r15,%rdi
   43b69:	ff 10                	call   *(%rax)
        for (; *prefix; ++prefix) {
   43b6b:	48 83 c3 01          	add    $0x1,%rbx
   43b6f:	0f b6 03             	movzbl (%rbx),%eax
   43b72:	84 c0                	test   %al,%al
   43b74:	75 e7                	jne    43b5d <printer::vprintf(int, char const*, __va_list_tag*)+0x5f3>
        for (; zeros > 0; --zeros) {
   43b76:	8b 5d a0             	mov    -0x60(%rbp),%ebx
   43b79:	85 db                	test   %ebx,%ebx
   43b7b:	7e 15                	jle    43b92 <printer::vprintf(int, char const*, __va_list_tag*)+0x628>
            putc('0', color);
   43b7d:	49 8b 07             	mov    (%r15),%rax
   43b80:	44 89 ea             	mov    %r13d,%edx
   43b83:	be 30 00 00 00       	mov    $0x30,%esi
   43b88:	4c 89 ff             	mov    %r15,%rdi
   43b8b:	ff 10                	call   *(%rax)
        for (; zeros > 0; --zeros) {
   43b8d:	83 eb 01             	sub    $0x1,%ebx
   43b90:	75 eb                	jne    43b7d <printer::vprintf(int, char const*, __va_list_tag*)+0x613>
        for (; datalen > 0; ++data, --datalen) {
   43b92:	8b 45 9c             	mov    -0x64(%rbp),%eax
   43b95:	85 c0                	test   %eax,%eax
   43b97:	7e 1e                	jle    43bb7 <printer::vprintf(int, char const*, __va_list_tag*)+0x64d>
   43b99:	89 c3                	mov    %eax,%ebx
   43b9b:	4c 01 e3             	add    %r12,%rbx
            putc(*data, color);
   43b9e:	41 0f b6 34 24       	movzbl (%r12),%esi
   43ba3:	49 8b 07             	mov    (%r15),%rax
   43ba6:	44 89 ea             	mov    %r13d,%edx
   43ba9:	4c 89 ff             	mov    %r15,%rdi
   43bac:	ff 10                	call   *(%rax)
        for (; datalen > 0; ++data, --datalen) {
   43bae:	49 83 c4 01          	add    $0x1,%r12
   43bb2:	49 39 dc             	cmp    %rbx,%r12
   43bb5:	75 e7                	jne    43b9e <printer::vprintf(int, char const*, __va_list_tag*)+0x634>
        for (; width > 0; --width) {
   43bb7:	45 85 f6             	test   %r14d,%r14d
   43bba:	7e 16                	jle    43bd2 <printer::vprintf(int, char const*, __va_list_tag*)+0x668>
            putc(' ', color);
   43bbc:	49 8b 07             	mov    (%r15),%rax
   43bbf:	44 89 ea             	mov    %r13d,%edx
   43bc2:	be 20 00 00 00       	mov    $0x20,%esi
   43bc7:	4c 89 ff             	mov    %r15,%rdi
   43bca:	ff 10                	call   *(%rax)
        for (; width > 0; --width) {
   43bcc:	41 83 ee 01          	sub    $0x1,%r14d
   43bd0:	75 ea                	jne    43bbc <printer::vprintf(int, char const*, __va_list_tag*)+0x652>
    for (; *format; ++format) {
   43bd2:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
   43bd6:	4c 8d 60 01          	lea    0x1(%rax),%r12
   43bda:	0f b6 78 01          	movzbl 0x1(%rax),%edi
   43bde:	40 84 ff             	test   %dil,%dil
   43be1:	0f 84 b1 f9 ff ff    	je     43598 <printer::vprintf(int, char const*, __va_list_tag*)+0x2e>
        if (*format != '%') {
   43be7:	40 80 ff 25          	cmp    $0x25,%dil
   43beb:	0f 84 b6 f9 ff ff    	je     435a7 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d>
            putc(*format, color);
   43bf1:	40 0f b6 f7          	movzbl %dil,%esi
   43bf5:	49 8b 07             	mov    (%r15),%rax
   43bf8:	44 89 ea             	mov    %r13d,%edx
   43bfb:	4c 89 ff             	mov    %r15,%rdi
   43bfe:	ff 10                	call   *(%rax)
            continue;
   43c00:	4c 89 65 a8          	mov    %r12,-0x58(%rbp)
   43c04:	eb cc                	jmp    43bd2 <printer::vprintf(int, char const*, __va_list_tag*)+0x668>
            data = va_arg(val, char*);
   43c06:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43c0a:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   43c0e:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43c12:	48 89 47 08          	mov    %rax,0x8(%rdi)
   43c16:	e9 82 fe ff ff       	jmp    43a9d <printer::vprintf(int, char const*, __va_list_tag*)+0x533>
        switch (*format) {
   43c1b:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   43c1f:	eb 04                	jmp    43c25 <printer::vprintf(int, char const*, __va_list_tag*)+0x6bb>
   43c21:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
            color = va_arg(val, int);
   43c25:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43c29:	8b 01                	mov    (%rcx),%eax
   43c2b:	83 f8 2f             	cmp    $0x2f,%eax
   43c2e:	77 10                	ja     43c40 <printer::vprintf(int, char const*, __va_list_tag*)+0x6d6>
   43c30:	89 c2                	mov    %eax,%edx
   43c32:	48 03 51 10          	add    0x10(%rcx),%rdx
   43c36:	83 c0 08             	add    $0x8,%eax
   43c39:	89 01                	mov    %eax,(%rcx)
   43c3b:	44 8b 2a             	mov    (%rdx),%r13d
            continue;
   43c3e:	eb 92                	jmp    43bd2 <printer::vprintf(int, char const*, __va_list_tag*)+0x668>
            color = va_arg(val, int);
   43c40:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43c44:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   43c48:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43c4c:	48 89 41 08          	mov    %rax,0x8(%rcx)
   43c50:	eb e9                	jmp    43c3b <printer::vprintf(int, char const*, __va_list_tag*)+0x6d1>
        switch (*format) {
   43c52:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   43c56:	eb 04                	jmp    43c5c <printer::vprintf(int, char const*, __va_list_tag*)+0x6f2>
   43c58:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
            numbuf[0] = va_arg(val, int);
   43c5c:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43c60:	8b 07                	mov    (%rdi),%eax
   43c62:	83 f8 2f             	cmp    $0x2f,%eax
   43c65:	77 23                	ja     43c8a <printer::vprintf(int, char const*, __va_list_tag*)+0x720>
   43c67:	89 c2                	mov    %eax,%edx
   43c69:	48 03 57 10          	add    0x10(%rdi),%rdx
   43c6d:	83 c0 08             	add    $0x8,%eax
   43c70:	89 07                	mov    %eax,(%rdi)
   43c72:	8b 02                	mov    (%rdx),%eax
   43c74:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
   43c77:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
   43c7b:	4c 8d 65 b8          	lea    -0x48(%rbp),%r12
        unsigned long num = 0;
   43c7f:	41 b9 00 00 00 00    	mov    $0x0,%r9d
            break;
   43c85:	e9 1c fe ff ff       	jmp    43aa6 <printer::vprintf(int, char const*, __va_list_tag*)+0x53c>
            numbuf[0] = va_arg(val, int);
   43c8a:	48 8b 5d 90          	mov    -0x70(%rbp),%rbx
   43c8e:	48 8b 53 08          	mov    0x8(%rbx),%rdx
   43c92:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43c96:	48 89 43 08          	mov    %rax,0x8(%rbx)
   43c9a:	eb d6                	jmp    43c72 <printer::vprintf(int, char const*, __va_list_tag*)+0x708>
        switch (*format) {
   43c9c:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
            numbuf[0] = (*format ? *format : '%');
   43ca0:	84 c0                	test   %al,%al
   43ca2:	0f 85 ca 00 00 00    	jne    43d72 <printer::vprintf(int, char const*, __va_list_tag*)+0x808>
                format--;
   43ca8:	48 83 6d a8 01       	subq   $0x1,-0x58(%rbp)
   43cad:	89 f8                	mov    %edi,%eax
            numbuf[0] = (*format ? *format : '%');
   43caf:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
   43cb2:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
        if (flags & FLAG_NUMERIC) {
   43cb6:	8b 45 a4             	mov    -0x5c(%rbp),%eax
   43cb9:	83 e0 20             	and    $0x20,%eax
   43cbc:	89 45 98             	mov    %eax,-0x68(%rbp)
   43cbf:	4c 8d 65 b8          	lea    -0x48(%rbp),%r12
   43cc3:	0f 84 ec fd ff ff    	je     43ab5 <printer::vprintf(int, char const*, __va_list_tag*)+0x54b>
   43cc9:	41 b9 00 00 00 00    	mov    $0x0,%r9d
   43ccf:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
    const char* digits = upper_digits;
   43cd5:	bf 60 50 04 00       	mov    $0x45060,%edi
        if (flags & FLAG_NUMERIC) {
   43cda:	be 0a 00 00 00       	mov    $0xa,%esi
   43cdf:	e9 79 fc ff ff       	jmp    4395d <printer::vprintf(int, char const*, __va_list_tag*)+0x3f3>
   43ce4:	41 b8 0a 00 00 00    	mov    $0xa,%r8d
    const char* digits = upper_digits;
   43cea:	bf 60 50 04 00       	mov    $0x45060,%edi
        if (flags & FLAG_NUMERIC) {
   43cef:	be 0a 00 00 00       	mov    $0xa,%esi
   43cf4:	e9 64 fc ff ff       	jmp    4395d <printer::vprintf(int, char const*, __va_list_tag*)+0x3f3>
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
   43cf9:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
   43cfc:	89 c8                	mov    %ecx,%eax
   43cfe:	f7 d0                	not    %eax
   43d00:	a8 21                	test   $0x21,%al
   43d02:	75 3c                	jne    43d40 <printer::vprintf(int, char const*, __va_list_tag*)+0x7d6>
                   && (base == 16 || base == -16)
   43d04:	41 8d 40 10          	lea    0x10(%r8),%eax
        const char* prefix = "";
   43d08:	bb 6b 43 04 00       	mov    $0x4436b,%ebx
                   && (base == 16 || base == -16)
   43d0d:	a9 df ff ff ff       	test   $0xffffffdf,%eax
   43d12:	0f 85 a9 fd ff ff    	jne    43ac1 <printer::vprintf(int, char const*, __va_list_tag*)+0x557>
                   && (num || (flags & FLAG_ALT2))) {
   43d18:	4d 85 c9             	test   %r9,%r9
   43d1b:	75 09                	jne    43d26 <printer::vprintf(int, char const*, __va_list_tag*)+0x7bc>
   43d1d:	f6 c5 01             	test   $0x1,%ch
   43d20:	0f 84 9b fd ff ff    	je     43ac1 <printer::vprintf(int, char const*, __va_list_tag*)+0x557>
            prefix = (base == -16 ? "0x" : "0X");
   43d26:	41 83 f8 f0          	cmp    $0xfffffff0,%r8d
   43d2a:	ba 81 43 04 00       	mov    $0x44381,%edx
   43d2f:	b8 7e 43 04 00       	mov    $0x4437e,%eax
   43d34:	48 0f 45 c2          	cmovne %rdx,%rax
   43d38:	48 89 c3             	mov    %rax,%rbx
   43d3b:	e9 81 fd ff ff       	jmp    43ac1 <printer::vprintf(int, char const*, __va_list_tag*)+0x557>
        const char* prefix = "";
   43d40:	bb 6b 43 04 00       	mov    $0x4436b,%ebx
   43d45:	e9 77 fd ff ff       	jmp    43ac1 <printer::vprintf(int, char const*, __va_list_tag*)+0x557>
                   && datalen + (int) strlen(prefix) < width) {
   43d4a:	48 89 df             	mov    %rbx,%rdi
   43d4d:	e8 55 f7 ff ff       	call   434a7 <strlen>
   43d52:	8b 7d 9c             	mov    -0x64(%rbp),%edi
   43d55:	8d 14 07             	lea    (%rdi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
   43d58:	44 89 f1             	mov    %r14d,%ecx
   43d5b:	29 f9                	sub    %edi,%ecx
   43d5d:	29 c1                	sub    %eax,%ecx
   43d5f:	44 39 f2             	cmp    %r14d,%edx
   43d62:	b8 00 00 00 00       	mov    $0x0,%eax
   43d67:	0f 4c c1             	cmovl  %ecx,%eax
   43d6a:	89 45 a0             	mov    %eax,-0x60(%rbp)
   43d6d:	e9 92 fd ff ff       	jmp    43b04 <printer::vprintf(int, char const*, __va_list_tag*)+0x59a>
   43d72:	48 8b 5d a8          	mov    -0x58(%rbp),%rbx
                prefix = "+";
   43d76:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   43d7a:	e9 30 ff ff ff       	jmp    43caf <printer::vprintf(int, char const*, __va_list_tag*)+0x745>

0000000000043d7f <console_clear()>:


// console_clear
//    Erases the console and moves the cursor to the upper left (CPOS(0, 0)).

void console_clear() {
   43d7f:	f3 0f 1e fa          	endbr64
    for (int i = 0; i < CONSOLE_ROWS * CONSOLE_COLUMNS; ++i) {
   43d83:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   43d88:	ba a0 8f 0b 00       	mov    $0xb8fa0,%edx
        console[i] = ' ' | 0x0700;
   43d8d:	66 c7 00 20 07       	movw   $0x720,(%rax)
    for (int i = 0; i < CONSOLE_ROWS * CONSOLE_COLUMNS; ++i) {
   43d92:	48 83 c0 02          	add    $0x2,%rax
   43d96:	48 39 d0             	cmp    %rdx,%rax
   43d99:	75 f2                	jne    43d8d <console_clear()+0xe>
    }
    cursorpos = 0;
   43d9b:	c7 05 57 52 07 00 00 	movl   $0x0,0x75257(%rip)        # b8ffc <cursorpos>
   43da2:	00 00 00 
}
   43da5:	c3                   	ret

0000000000043da6 <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
   43da6:	f3 0f 1e fa          	endbr64
    : cell_(console), scroll_(scroll) {
   43daa:	48 c7 07 88 50 04 00 	movq   $0x45088,(%rdi)
   43db1:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
   43db8:	00 
   43db9:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
   43dbc:	85 f6                	test   %esi,%esi
   43dbe:	78 18                	js     43dd8 <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
   43dc0:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
   43dc6:	7f 0f                	jg     43dd7 <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
   43dc8:	48 63 f6             	movslq %esi,%rsi
   43dcb:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
   43dd2:	00 
   43dd3:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
   43dd7:	c3                   	ret
        cell_ += cursorpos;
   43dd8:	8b 05 1e 52 07 00    	mov    0x7521e(%rip),%eax        # b8ffc <cursorpos>
   43dde:	48 98                	cltq
   43de0:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
   43de7:	00 
   43de8:	48 89 47 08          	mov    %rax,0x8(%rdi)
   43dec:	c3                   	ret
   43ded:	90                   	nop

0000000000043dee <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
   43dee:	f3 0f 1e fa          	endbr64
   43df2:	55                   	push   %rbp
   43df3:	48 89 e5             	mov    %rsp,%rbp
   43df6:	53                   	push   %rbx
   43df7:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
   43dfb:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
   43e02:	00 
   43e03:	72 18                	jb     43e1d <console_printer::scroll()+0x2f>
   43e05:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
   43e08:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   43e0d:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
   43e11:	75 1e                	jne    43e31 <console_printer::scroll()+0x43>
        memmove(console, console + CONSOLE_COLUMNS,
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
   43e13:	48 89 43 08          	mov    %rax,0x8(%rbx)
    } else {
        cell_ = console;
    }
}
   43e17:	48 8b 5d f8          	mov    -0x8(%rbp),%rbx
   43e1b:	c9                   	leave
   43e1c:	c3                   	ret
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
   43e1d:	ba 58 47 04 00       	mov    $0x44758,%edx
   43e22:	be 1f 02 00 00       	mov    $0x21f,%esi
   43e27:	bf 77 43 04 00       	mov    $0x44377,%edi
   43e2c:	e8 dd de ff ff       	call   41d0e <assert_fail(char const*, int, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
   43e31:	ba 00 0f 00 00       	mov    $0xf00,%edx
   43e36:	be a0 80 0b 00       	mov    $0xb80a0,%esi
   43e3b:	48 89 c7             	mov    %rax,%rdi
   43e3e:	e8 f8 f5 ff ff       	call   4343b <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
   43e43:	ba a0 00 00 00       	mov    $0xa0,%edx
   43e48:	be 00 00 00 00       	mov    $0x0,%esi
   43e4d:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
   43e52:	e8 31 f6 ff ff       	call   43488 <memset>
        cell_ -= CONSOLE_COLUMNS;
   43e57:	48 8b 43 08          	mov    0x8(%rbx),%rax
   43e5b:	48 2d a0 00 00 00    	sub    $0xa0,%rax
   43e61:	eb b0                	jmp    43e13 <console_printer::scroll()+0x25>
   43e63:	90                   	nop

0000000000043e64 <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
   43e64:	f3 0f 1e fa          	endbr64
   43e68:	55                   	push   %rbp
   43e69:	48 89 e5             	mov    %rsp,%rbp
   43e6c:	41 55                	push   %r13
   43e6e:	41 54                	push   %r12
   43e70:	53                   	push   %rbx
   43e71:	48 83 ec 08          	sub    $0x8,%rsp
   43e75:	48 89 fb             	mov    %rdi,%rbx
   43e78:	41 89 f5             	mov    %esi,%r13d
   43e7b:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
   43e7e:	48 8b 47 08          	mov    0x8(%rdi),%rax
   43e82:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
   43e88:	72 14                	jb     43e9e <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
   43e8a:	48 89 df             	mov    %rbx,%rdi
   43e8d:	e8 5c ff ff ff       	call   43dee <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
   43e92:	48 8b 43 08          	mov    0x8(%rbx),%rax
   43e96:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
   43e9c:	73 ec                	jae    43e8a <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
   43e9e:	41 80 fd 0a          	cmp    $0xa,%r13b
   43ea2:	74 1e                	je     43ec2 <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
   43ea4:	48 8d 50 02          	lea    0x2(%rax),%rdx
   43ea8:	48 89 53 08          	mov    %rdx,0x8(%rbx)
   43eac:	45 0f b6 ed          	movzbl %r13b,%r13d
   43eb0:	45 09 e5             	or     %r12d,%r13d
   43eb3:	66 44 89 28          	mov    %r13w,(%rax)
    }
}
   43eb7:	48 83 c4 08          	add    $0x8,%rsp
   43ebb:	5b                   	pop    %rbx
   43ebc:	41 5c                	pop    %r12
   43ebe:	41 5d                	pop    %r13
   43ec0:	5d                   	pop    %rbp
   43ec1:	c3                   	ret
        int pos = (cell_ - console) % 80;
   43ec2:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
   43ec8:	48 89 c1             	mov    %rax,%rcx
   43ecb:	48 89 c6             	mov    %rax,%rsi
   43ece:	48 d1 fe             	sar    $1,%rsi
   43ed1:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
   43ed8:	66 66 66 
   43edb:	48 89 f0             	mov    %rsi,%rax
   43ede:	48 f7 ea             	imul   %rdx
   43ee1:	48 c1 fa 05          	sar    $0x5,%rdx
   43ee5:	48 89 c8             	mov    %rcx,%rax
   43ee8:	48 c1 f8 3f          	sar    $0x3f,%rax
   43eec:	48 29 c2             	sub    %rax,%rdx
   43eef:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   43ef3:	48 c1 e2 04          	shl    $0x4,%rdx
   43ef7:	89 f0                	mov    %esi,%eax
   43ef9:	29 d0                	sub    %edx,%eax
            *cell_++ = ' ' | color;
   43efb:	41 83 cc 20          	or     $0x20,%r12d
   43eff:	48 8b 53 08          	mov    0x8(%rbx),%rdx
   43f03:	48 8d 4a 02          	lea    0x2(%rdx),%rcx
   43f07:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   43f0b:	66 44 89 22          	mov    %r12w,(%rdx)
            ++pos;
   43f0f:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
   43f12:	83 f8 50             	cmp    $0x50,%eax
   43f15:	75 e8                	jne    43eff <console_printer::putc(unsigned char, int)+0x9b>
   43f17:	eb 9e                	jmp    43eb7 <console_printer::putc(unsigned char, int)+0x53>
   43f19:	90                   	nop

0000000000043f1a <console_printer::move_cursor()>:
void console_printer::move_cursor() {
   43f1a:	f3 0f 1e fa          	endbr64
   43f1e:	55                   	push   %rbp
   43f1f:	48 89 e5             	mov    %rsp,%rbp
    cursorpos = cell_ - console;
   43f22:	48 8b 47 08          	mov    0x8(%rdi),%rax
   43f26:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
   43f2c:	48 d1 f8             	sar    $1,%rax
   43f2f:	89 05 c7 50 07 00    	mov    %eax,0x750c7(%rip)        # b8ffc <cursorpos>
    console_show_cursor(cursorpos);
   43f35:	8b 3d c1 50 07 00    	mov    0x750c1(%rip),%edi        # b8ffc <cursorpos>
   43f3b:	e8 1e da ff ff       	call   4195e <console_show_cursor(int)>
}
   43f40:	5d                   	pop    %rbp
   43f41:	c3                   	ret

0000000000043f42 <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
   43f42:	f3 0f 1e fa          	endbr64
   43f46:	55                   	push   %rbp
   43f47:	48 89 e5             	mov    %rsp,%rbp
   43f4a:	41 56                	push   %r14
   43f4c:	41 55                	push   %r13
   43f4e:	41 54                	push   %r12
   43f50:	53                   	push   %rbx
   43f51:	48 83 ec 20          	sub    $0x20,%rsp
   43f55:	89 fb                	mov    %edi,%ebx
   43f57:	41 89 f4             	mov    %esi,%r12d
   43f5a:	49 89 d5             	mov    %rdx,%r13
   43f5d:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
   43f60:	89 fa                	mov    %edi,%edx
   43f62:	c1 ea 1f             	shr    $0x1f,%edx
   43f65:	89 fe                	mov    %edi,%esi
   43f67:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   43f6b:	e8 36 fe ff ff       	call   43da6 <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
   43f70:	4c 89 f1             	mov    %r14,%rcx
   43f73:	4c 89 ea             	mov    %r13,%rdx
   43f76:	44 89 e6             	mov    %r12d,%esi
   43f79:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   43f7d:	e8 e8 f5 ff ff       	call   4356a <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
   43f82:	85 db                	test   %ebx,%ebx
   43f84:	78 1a                	js     43fa0 <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
   43f86:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   43f8a:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
   43f90:	48 d1 f8             	sar    $1,%rax
}
   43f93:	48 83 c4 20          	add    $0x20,%rsp
   43f97:	5b                   	pop    %rbx
   43f98:	41 5c                	pop    %r12
   43f9a:	41 5d                	pop    %r13
   43f9c:	41 5e                	pop    %r14
   43f9e:	5d                   	pop    %rbp
   43f9f:	c3                   	ret
        cp.move_cursor();
   43fa0:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   43fa4:	e8 71 ff ff ff       	call   43f1a <console_printer::move_cursor()>
   43fa9:	eb db                	jmp    43f86 <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

0000000000043fab <console_printf(int, int, char const*, ...)>:

__noinline
int console_printf(int cpos, int color, const char* format, ...) {
   43fab:	f3 0f 1e fa          	endbr64
   43faf:	55                   	push   %rbp
   43fb0:	48 89 e5             	mov    %rsp,%rbp
   43fb3:	48 83 ec 50          	sub    $0x50,%rsp
   43fb7:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   43fbb:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   43fbf:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
   43fc3:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
   43fca:	48 8d 45 10          	lea    0x10(%rbp),%rax
   43fce:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   43fd2:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   43fd6:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = console_vprintf(cpos, color, format, val);
   43fda:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
   43fde:	e8 5f ff ff ff       	call   43f42 <console_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
   43fe3:	c9                   	leave
   43fe4:	c3                   	ret
