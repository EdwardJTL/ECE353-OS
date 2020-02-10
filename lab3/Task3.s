! Name of package being compiled: Main
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_Thread_InitializeScheduler
	.import	_P_Thread_Run
	.import	_P_Thread_PrintReadyList
	.import	_P_Thread_ThreadStartMain
	.import	_P_Thread_ThreadFinish
	.import	_P_Thread_FatalError
	.import	_P_Thread_SetInterruptsTo
	.import	_P_Thread_TimerInterruptHandler
	.import	Switch
	.import	ThreadStartUp
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Thread_Thread
! The following class and its methods are from other packages
	.import	_P_Synch_Semaphore
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex2
! The following class and its methods are from other packages
	.import	_P_Synch_Condition
! The following class and its methods are from this package
	.export	_P_Main_GamingParlor
	.export	_Method_P_Main_GamingParlor_1
	.export	_Method_P_Main_GamingParlor_2
	.export	_Method_P_Main_GamingParlor_3
	.export	_Method_P_Main_GamingParlor_4
	.export	_Method_P_Main_GamingParlor_5
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_Thread_readyList
	.import	_P_Thread_currentThread
	.import	_P_Thread_mainThread
	.import	_P_Thread_idleThread
	.import	_P_Thread_threadsToBeDestroyed
	.import	_P_Thread_currentInterruptStatus
! Global variables in this package
	.data
	.export	_P_Main_group_names
	.export	_P_Main_dice_per_group
_P_Main_group_names:
! Static array
	.word	8		! number of elements
	.byte	65			! 'A'
	.byte	66			! 'B'
	.byte	67			! 'C'
	.byte	68			! 'D'
	.byte	69			! 'E'
	.byte	70			! 'F'
	.byte	71			! 'G'
	.byte	72			! 'H'
	.align
_P_Main_dice_per_group:
! Static array
	.word	8		! number of elements
	.word	0x00000004		! decimal value = 4
	.word	0x00000004		! decimal value = 4
	.word	0x00000005		! decimal value = 5
	.word	0x00000005		! decimal value = 5
	.word	0x00000002		! decimal value = 2
	.word	0x00000002		! decimal value = 2
	.word	0x00000001		! decimal value = 1
	.word	0x00000001		! decimal value = 1
	.align
_Global_GP:
! Static object
	.word	_P_Main_GamingParlor
	.word	0
_Global_lock:
	.skip	20
_Global_diceCondVar:
	.skip	16
_Global_groupThreads:
	.skip	32740
	.align
! String constants
_StringConst_7:
	.word	57			! length
	.ascii	"------------------------------Number of dice now avail = "
	.align
_StringConst_6:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_5:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_4:
	.word	22			! length
	.ascii	"releases and adds back"
	.align
_StringConst_3:
	.word	13			! length
	.ascii	"proceeds with"
	.align
_StringConst_2:
	.word	8			! length
	.ascii	"requests"
	.align
_StringConst_1:
	.word	8			! length
	.ascii	"Customer"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x2cd72276,r3		! .  hashVal = 752296566
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_10		! .
	ret				! .
_Label_10:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Task3.c\0"
_packageName:
	.ascii	"Main\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Main_:
	.export	_CheckVersion_P_Main_
	set	0x2cd72276,r4		! myHashVal = 752296566
	cmp	r3,r4
	be	_Label_11
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_11:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_12
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_12
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_12
! Make sure _P_Synch_ has hash value 0x8e356f6d (decimal -1909100691)
	set	_packageName,r2
	set	0x8e356f6d,r3
	call	_CheckVersion_P_Synch_
	.import	_CheckVersion_P_Synch_
	cmp	r1,0
	bne	_Label_12
_Label_12:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	12,r13		! source line 12
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	13,r13		! source line 13
	mov	"\0\0CA",r10
	call	_P_Thread_InitializeScheduler
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CA",r10
	call	_function_9_gamingparlor
! CALL STATEMENT...
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! RETURN STATEMENT...
	mov	15,r13		! source line 15
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_13
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_13:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION gamingparlor  ===============
! 
_function_9_gamingparlor:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_9_gamingparlor,r1
	push	r1
	mov	9230,r1
_Label_204:
	push	r0
	sub	r1,1,r1
	bne	_Label_204
	mov	26,r13		! source line 26
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	30,r13		! source line 30
	mov	"\0\0SE",r10
!   _temp_14 = &_Global_GP
	set	_Global_GP,r1
	set	-36912,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-36912,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_lock = zeros  (sizeInBytes=20)
	set	_Global_lock,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_lock = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	set	_Global_lock,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	33,r13		! source line 33
	mov	"\0\0SE",r10
!   _temp_16 = &_Global_lock
	set	_Global_lock,r1
	set	-36904,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-36904,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_diceCondVar = zeros  (sizeInBytes=16)
	set	_Global_diceCondVar,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   _Global_diceCondVar = _P_Synch_Condition
	set	_P_Synch_Condition,r1
	set	_Global_diceCondVar,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	36,r13		! source line 36
	mov	"\0\0SE",r10
!   _temp_18 = &_Global_diceCondVar
	set	_Global_diceCondVar,r1
	set	-36896,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-36896,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0AS",r10
!   _temp_19 = &_Global_groupThreads
	set	_Global_groupThreads,r1
	set	-36892,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_21 = &_temp_20
	set	-36888,r1
	add	r14,r1,r1
	store	r1,[r14+-4148]
!   _temp_21 = _temp_21 + 4
	load	[r14+-4148],r1
	add	r1,4,r1
	store	r1,[r14+-4148]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_23 = zeros  (sizeInBytes=4092)
	add	r14,-4140,r4
	mov	1023,r3
_Label_205:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_205
!   _temp_23 = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	store	r1,[r14+-4140]
	mov	8,r1
	store	r1,[r14+-4144]
_Label_25:
!   Data Move: *_temp_21 = _temp_23  (sizeInBytes=4092)
	add	r14,-4140,r5
	load	[r14+-4148],r4
	mov	1023,r3
_Label_206:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_206
!   _temp_21 = _temp_21 + 4092
	load	[r14+-4148],r1
	add	r1,4092,r1
	store	r1,[r14+-4148]
!   _temp_22 = _temp_22 + -1
	load	[r14+-4144],r1
	add	r1,-1,r1
	store	r1,[r14+-4144]
!   if intNotZero (_temp_22) then goto _Label_25
	load	[r14+-4144],r1
	cmp	r1,r0
	bne	_Label_25
!   Initialize the array size...
	mov	8,r1
	set	-36888,r2
	store	r1,[r14+r2]
!   _temp_26 = &_temp_20
	set	-36888,r1
	add	r14,r1,r1
	store	r1,[r14+-44]
!   make sure array has size 8
	set	-36892,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	8, r2
	cmp	r1,0
	be	_Label_207
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_207:
!   make sure array has size 8
	load	[r14+-44],r1
	load	[r1],r1
	set	8, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_19 = *_temp_26  (sizeInBytes=32740)
	load	[r14+-44],r5
	set	-36892,r4
	load	[r14+r4],r4
	mov	8185,r3
_Label_208:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_208
! FOR STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_31 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_32 = 7		(4 bytes)
	mov	7,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_31  (sizeInBytes=4)
	load	[r14+-40],r1
	set	-36916,r2
	store	r1,[r14+r2]
_Label_27:
!   Perform the FOR-LOOP termination test
!   if i > _temp_32 then goto _Label_30		
	set	-36916,r1
	load	[r14+r1],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_30
_Label_28:
	mov	39,r13		! source line 39
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	40,r13		! source line 40
	mov	"\0\0SE",r10
!   _temp_33 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-32]
!   _temp_34 = &_Global_groupThreads
	set	_Global_groupThreads,r1
	store	r1,[r14+-28]
!   Move address of _temp_34 [i ] into _temp_35
!     make sure index expr is >= 0
	set	-36916,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_33  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	41,r13		! source line 41
	mov	"\0\0SE",r10
!   _temp_36 = _function_8_group
	set	_function_8_group,r1
	store	r1,[r14+-20]
!   _temp_37 = &_Global_groupThreads
	set	_Global_groupThreads,r1
	store	r1,[r14+-16]
!   Move address of _temp_37 [i ] into _temp_38
!     make sure index expr is >= 0
	set	-36916,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_36  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	set	-36916,r1
	load	[r14+r1],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_29:
!   i = i + 1
	set	-36916,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-36916,r2
	store	r1,[r14+r2]
	jmp	_Label_27
! END FOR
_Label_30:
! RETURN STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0RE",r10
	set	36924,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_9_gamingparlor:
	.word	_sourceFileName
	.word	_Label_39
	.word	0		! total size of parameters
	.word	36920		! frame size = 36920
	.word	_Label_40
	.word	-12
	.word	4
	.word	_Label_41
	.word	-16
	.word	4
	.word	_Label_42
	.word	-20
	.word	4
	.word	_Label_43
	.word	-24
	.word	4
	.word	_Label_44
	.word	-28
	.word	4
	.word	_Label_45
	.word	-32
	.word	4
	.word	_Label_46
	.word	-36
	.word	4
	.word	_Label_47
	.word	-40
	.word	4
	.word	_Label_48
	.word	-44
	.word	4
	.word	_Label_49
	.word	-48
	.word	4
	.word	_Label_50
	.word	-4140
	.word	4092
	.word	_Label_51
	.word	-4144
	.word	4
	.word	_Label_52
	.word	-4148
	.word	4
	.word	_Label_53
	.word	-36888
	.word	32740
	.word	_Label_54
	.word	-36892
	.word	4
	.word	_Label_55
	.word	-36896
	.word	4
	.word	_Label_56
	.word	-36900
	.word	4
	.word	_Label_57
	.word	-36904
	.word	4
	.word	_Label_58
	.word	-36908
	.word	4
	.word	_Label_59
	.word	-36912
	.word	4
	.word	_Label_60
	.word	-36916
	.word	4
	.word	0
_Label_39:
	.ascii	"gamingparlor\0"
	.align
_Label_40:
	.byte	'?'
	.ascii	"_temp_38\0"
	.align
_Label_41:
	.byte	'?'
	.ascii	"_temp_37\0"
	.align
_Label_42:
	.byte	'?'
	.ascii	"_temp_36\0"
	.align
_Label_43:
	.byte	'?'
	.ascii	"_temp_35\0"
	.align
_Label_44:
	.byte	'?'
	.ascii	"_temp_34\0"
	.align
_Label_45:
	.byte	'?'
	.ascii	"_temp_33\0"
	.align
_Label_46:
	.byte	'?'
	.ascii	"_temp_32\0"
	.align
_Label_47:
	.byte	'?'
	.ascii	"_temp_31\0"
	.align
_Label_48:
	.byte	'?'
	.ascii	"_temp_26\0"
	.align
_Label_49:
	.byte	'?'
	.ascii	"_temp_24\0"
	.align
_Label_50:
	.byte	'?'
	.ascii	"_temp_23\0"
	.align
_Label_51:
	.byte	'?'
	.ascii	"_temp_22\0"
	.align
_Label_52:
	.byte	'?'
	.ascii	"_temp_21\0"
	.align
_Label_53:
	.byte	'?'
	.ascii	"_temp_20\0"
	.align
_Label_54:
	.byte	'?'
	.ascii	"_temp_19\0"
	.align
_Label_55:
	.byte	'?'
	.ascii	"_temp_18\0"
	.align
_Label_56:
	.byte	'?'
	.ascii	"_temp_17\0"
	.align
_Label_57:
	.byte	'?'
	.ascii	"_temp_16\0"
	.align
_Label_58:
	.byte	'?'
	.ascii	"_temp_15\0"
	.align
_Label_59:
	.byte	'?'
	.ascii	"_temp_14\0"
	.align
_Label_60:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION group  ===============
! 
_function_8_group:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_8_group,r1
	push	r1
	mov	19,r1
_Label_209:
	push	r0
	sub	r1,1,r1
	bne	_Label_209
	mov	50,r13		! source line 50
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	52,r13		! source line 52
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_65 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_66 = 4		(4 bytes)
	mov	4,r1
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_65  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-72]
_Label_61:
!   Perform the FOR-LOOP termination test
!   if i > _temp_66 then goto _Label_64		
	load	[r14+-72],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_64
_Label_62:
	mov	52,r13		! source line 52
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0SE",r10
!   _temp_68 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-60]
!   Move address of _temp_68 [g ] into _temp_69
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: _temp_67 = *_temp_69  (sizeInBytes=1)
	load	[r14+-56],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   _temp_71 = &_P_Main_dice_per_group
	set	_P_Main_dice_per_group,r1
	store	r1,[r14+-48]
!   Move address of _temp_71 [g ] into _temp_72
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   Data Move: _temp_70 = *_temp_72  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   _temp_73 = &_Global_GP
	set	_Global_GP,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_67  sizeInBytes=1
	loadb	[r14+-10],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_70  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+8]
!   Send message Request
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	55,r13		! source line 55
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	56,r13		! source line 56
	mov	"\0\0SE",r10
!   _temp_75 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-36]
!   Move address of _temp_75 [g ] into _temp_76
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_74 = *_temp_76  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   _temp_78 = &_P_Main_dice_per_group
	set	_P_Main_dice_per_group,r1
	store	r1,[r14+-24]
!   Move address of _temp_78 [g ] into _temp_79
!     make sure index expr is >= 0
	load	[r14+8],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: _temp_77 = *_temp_79  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_80 = &_Global_GP
	set	_Global_GP,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_74  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_77  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Send message Return
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_63:
!   i = i + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_61
! END FOR
_Label_64:
! RETURN STATEMENT...
	mov	52,r13		! source line 52
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_8_group:
	.word	_sourceFileName
	.word	_Label_81
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_82
	.word	8
	.word	4
	.word	_Label_83
	.word	-16
	.word	4
	.word	_Label_84
	.word	-20
	.word	4
	.word	_Label_85
	.word	-24
	.word	4
	.word	_Label_86
	.word	-28
	.word	4
	.word	_Label_87
	.word	-32
	.word	4
	.word	_Label_88
	.word	-36
	.word	4
	.word	_Label_89
	.word	-9
	.word	1
	.word	_Label_90
	.word	-40
	.word	4
	.word	_Label_91
	.word	-44
	.word	4
	.word	_Label_92
	.word	-48
	.word	4
	.word	_Label_93
	.word	-52
	.word	4
	.word	_Label_94
	.word	-56
	.word	4
	.word	_Label_95
	.word	-60
	.word	4
	.word	_Label_96
	.word	-10
	.word	1
	.word	_Label_97
	.word	-64
	.word	4
	.word	_Label_98
	.word	-68
	.word	4
	.word	_Label_99
	.word	-72
	.word	4
	.word	0
_Label_81:
	.ascii	"group\0"
	.align
_Label_82:
	.byte	'I'
	.ascii	"g\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_89:
	.byte	'C'
	.ascii	"_temp_74\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_96:
	.byte	'C'
	.ascii	"_temp_67\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_99:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  CLASS GamingParlor  ===============
! 
! Dispatch Table:
! 
_P_Main_GamingParlor:
	.word	_Label_100
	jmp	_Method_P_Main_GamingParlor_1	! 4:	Init
	jmp	_Method_P_Main_GamingParlor_2	! 8:	Request
	jmp	_Method_P_Main_GamingParlor_3	! 12:	Return
	jmp	_Method_P_Main_GamingParlor_4	! 16:	PrintExample
	jmp	_Method_P_Main_GamingParlor_5	! 20:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_100:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_101
	.word	_sourceFileName
	.word	16		! line number
	.word	8		! size of instances, in bytes
	.word	_P_Main_GamingParlor
	.word	_P_System_Object
	.word	0
_Label_101:
	.ascii	"GamingParlor\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Main_GamingParlor_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_1,r1
	push	r1
	mov	62,r13		! source line 62
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0AS",r10
!   dice_available = 8		(4 bytes)
	mov	8,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	63,r13		! source line 63
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_1:
	.word	_sourceFileName
	.word	_Label_102
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_103
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_102:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_103:
	.ascii	"Pself\0"
	.align
! 
! ===============  METHOD Request  ===============
! 
_Method_P_Main_GamingParlor_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_2,r1
	push	r1
	mov	12,r1
_Label_210:
	push	r0
	sub	r1,1,r1
	bne	_Label_210
	mov	66,r13		! source line 66
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0SE",r10
!   _temp_104 = &_Global_lock
	set	_Global_lock,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   _temp_105 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_106) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=name  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_105  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nr_of_dice  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Send message Print
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! WHILE STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0WH",r10
_Label_107:
!   if dice_available >= nr_of_dice then goto _Label_109		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_109
!	jmp	_Label_108
_Label_108:
	mov	69,r13		! source line 69
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0SE",r10
!   _temp_110 = &_Global_lock
	set	_Global_lock,r1
	store	r1,[r14+-28]
!   _temp_111 = &_Global_diceCondVar
	set	_Global_diceCondVar,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_110  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_107
_Label_109:
! ASSIGNMENT STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0AS",r10
!   dice_available = dice_available - nr_of_dice		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0SE",r10
!   _temp_112 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-20]
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_113) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=name  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_112  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nr_of_dice  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0SE",r10
!   _temp_114 = &_Global_lock
	set	_Global_lock,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_2:
	.word	_sourceFileName
	.word	_Label_115
	.word	12		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_116
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_117
	.word	12
	.word	1
	.word	_Label_118
	.word	16
	.word	4
	.word	_Label_119
	.word	-12
	.word	4
	.word	_Label_120
	.word	-16
	.word	4
	.word	_Label_121
	.word	-20
	.word	4
	.word	_Label_122
	.word	-24
	.word	4
	.word	_Label_123
	.word	-28
	.word	4
	.word	_Label_124
	.word	-32
	.word	4
	.word	_Label_125
	.word	-36
	.word	4
	.word	_Label_126
	.word	-40
	.word	4
	.word	0
_Label_115:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Request\0"
	.align
_Label_116:
	.ascii	"Pself\0"
	.align
_Label_117:
	.byte	'C'
	.ascii	"name\0"
	.align
_Label_118:
	.byte	'I'
	.ascii	"nr_of_dice\0"
	.align
_Label_119:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_120:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_121:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_122:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_123:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_124:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_125:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
! 
! ===============  METHOD Return  ===============
! 
_Method_P_Main_GamingParlor_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_3,r1
	push	r1
	mov	10,r1
_Label_211:
	push	r0
	sub	r1,1,r1
	bne	_Label_211
	mov	77,r13		! source line 77
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0SE",r10
!   _temp_127 = &_Global_lock
	set	_Global_lock,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	79,r13		! source line 79
	mov	"\0\0AS",r10
!   dice_available = dice_available + nr_of_dice		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	80,r13		! source line 80
	mov	"\0\0SE",r10
!   _temp_128 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-28]
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_129) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=name  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_128  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nr_of_dice  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	81,r13		! source line 81
	mov	"\0\0SE",r10
!   _temp_130 = &_Global_lock
	set	_Global_lock,r1
	store	r1,[r14+-20]
!   _temp_131 = &_Global_diceCondVar
	set	_Global_diceCondVar,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_130  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0SE",r10
!   _temp_132 = &_Global_lock
	set	_Global_lock,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_3:
	.word	_sourceFileName
	.word	_Label_133
	.word	12		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_134
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_135
	.word	12
	.word	1
	.word	_Label_136
	.word	16
	.word	4
	.word	_Label_137
	.word	-12
	.word	4
	.word	_Label_138
	.word	-16
	.word	4
	.word	_Label_139
	.word	-20
	.word	4
	.word	_Label_140
	.word	-24
	.word	4
	.word	_Label_141
	.word	-28
	.word	4
	.word	_Label_142
	.word	-32
	.word	4
	.word	0
_Label_133:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Return\0"
	.align
_Label_134:
	.ascii	"Pself\0"
	.align
_Label_135:
	.byte	'C'
	.ascii	"name\0"
	.align
_Label_136:
	.byte	'I'
	.ascii	"nr_of_dice\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_127\0"
	.align
! 
! ===============  METHOD PrintExample  ===============
! 
_Method_P_Main_GamingParlor_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_4,r1
	push	r1
	mov	23,r1
_Label_212:
	push	r0
	sub	r1,1,r1
	bne	_Label_212
	mov	85,r13		! source line 85
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   _temp_144 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-88]
!   Move address of _temp_144 [0 ] into _temp_145
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Data Move: _temp_143 = *_temp_145  (sizeInBytes=1)
	load	[r14+-84],r1
	loadb	[r1],r1
	storeb	r1,[r14+-14]
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_146) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_143  sizeInBytes=1
	loadb	[r14+-14],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Request
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	93,r13		! source line 93
	mov	"\0\0SE",r10
!   _temp_148 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-76]
!   Move address of _temp_148 [1 ] into _temp_149
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-76],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-72]
!   Data Move: _temp_147 = *_temp_149  (sizeInBytes=1)
	load	[r14+-72],r1
	loadb	[r1],r1
	storeb	r1,[r14+-13]
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_150) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_147  sizeInBytes=1
	loadb	[r14+-13],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Request
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0SE",r10
!   _temp_152 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-64]
!   Move address of _temp_152 [1 ] into _temp_153
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   Data Move: _temp_151 = *_temp_153  (sizeInBytes=1)
	load	[r14+-60],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_154) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_151  sizeInBytes=1
	loadb	[r14+-12],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Return
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	97,r13		! source line 97
	mov	"\0\0SE",r10
!   _temp_156 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-52]
!   Move address of _temp_156 [0 ] into _temp_157
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-52],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Data Move: _temp_155 = *_temp_157  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_158) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_155  sizeInBytes=1
	loadb	[r14+-11],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message Return
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0SE",r10
!   _temp_160 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-40]
!   Move address of _temp_160 [2 ] into _temp_161
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_159 = *_temp_161  (sizeInBytes=1)
	load	[r14+-36],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_162) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_159  sizeInBytes=1
	loadb	[r14+-10],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Request
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	101,r13		! source line 101
	mov	"\0\0SE",r10
!   _temp_164 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-28]
!   Move address of _temp_164 [2 ] into _temp_165
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Data Move: _temp_163 = *_temp_165  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_166) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_163  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+8]
!   Send message Return
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	101,r13		! source line 101
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_4:
	.word	_sourceFileName
	.word	_Label_167
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_168
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_169
	.word	-20
	.word	4
	.word	_Label_170
	.word	-24
	.word	4
	.word	_Label_171
	.word	-28
	.word	4
	.word	_Label_172
	.word	-9
	.word	1
	.word	_Label_173
	.word	-32
	.word	4
	.word	_Label_174
	.word	-36
	.word	4
	.word	_Label_175
	.word	-40
	.word	4
	.word	_Label_176
	.word	-10
	.word	1
	.word	_Label_177
	.word	-44
	.word	4
	.word	_Label_178
	.word	-48
	.word	4
	.word	_Label_179
	.word	-52
	.word	4
	.word	_Label_180
	.word	-11
	.word	1
	.word	_Label_181
	.word	-56
	.word	4
	.word	_Label_182
	.word	-60
	.word	4
	.word	_Label_183
	.word	-64
	.word	4
	.word	_Label_184
	.word	-12
	.word	1
	.word	_Label_185
	.word	-68
	.word	4
	.word	_Label_186
	.word	-72
	.word	4
	.word	_Label_187
	.word	-76
	.word	4
	.word	_Label_188
	.word	-13
	.word	1
	.word	_Label_189
	.word	-80
	.word	4
	.word	_Label_190
	.word	-84
	.word	4
	.word	_Label_191
	.word	-88
	.word	4
	.word	_Label_192
	.word	-14
	.word	1
	.word	0
_Label_167:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"PrintExample\0"
	.align
_Label_168:
	.ascii	"Pself\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_166\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
_Label_172:
	.byte	'C'
	.ascii	"_temp_163\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_160\0"
	.align
_Label_176:
	.byte	'C'
	.ascii	"_temp_159\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_158\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_157\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_156\0"
	.align
_Label_180:
	.byte	'C'
	.ascii	"_temp_155\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_184:
	.byte	'C'
	.ascii	"_temp_151\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_188:
	.byte	'C'
	.ascii	"_temp_147\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_192:
	.byte	'C'
	.ascii	"_temp_143\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Main_GamingParlor_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_GamingParlor_5,r1
	push	r1
	mov	4,r1
_Label_213:
	push	r0
	sub	r1,1,r1
	bne	_Label_213
	mov	105,r13		! source line 105
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	110,r13		! source line 110
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_193 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_193  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	111,r13		! source line 111
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	112,r13		! source line 112
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_194 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_194  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	113,r13		! source line 113
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nr_of_dice  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	115,r13		! source line 115
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_195 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_195  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	116,r13		! source line 116
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=dice_available  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4],r1
	store	r1,[r15+0]
!   Call the function
	mov	117,r13		! source line 117
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	118,r13		! source line 118
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_5:
	.word	_sourceFileName
	.word	_Label_196
	.word	16		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_197
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_198
	.word	12
	.word	1
	.word	_Label_199
	.word	16
	.word	4
	.word	_Label_200
	.word	20
	.word	4
	.word	_Label_201
	.word	-12
	.word	4
	.word	_Label_202
	.word	-16
	.word	4
	.word	_Label_203
	.word	-20
	.word	4
	.word	0
_Label_196:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_197:
	.ascii	"Pself\0"
	.align
_Label_198:
	.byte	'C'
	.ascii	"name\0"
	.align
_Label_199:
	.byte	'P'
	.ascii	"str\0"
	.align
_Label_200:
	.byte	'I'
	.ascii	"nr_of_dice\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
