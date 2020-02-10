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
	.export	_P_Main_barberWrapper
	.export	_P_Main_customerWrapper
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
	.export	_P_Main_SleepingBarber
	.export	_Method_P_Main_SleepingBarber_1
	.export	_Method_P_Main_SleepingBarber_2
	.export	_Method_P_Main_SleepingBarber_3
	.export	_Method_P_Main_SleepingBarber_4
	.export	_Method_P_Main_SleepingBarber_5
	.export	_Method_P_Main_SleepingBarber_6
	.export	_Method_P_Main_SleepingBarber_7
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
_Global_sb:
	.skip	16
_Global_bStatus:
	.word	0x00000002		! decimal value = 2
_Global_cStatus:
! Static array
	.word	10		! number of elements
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.byte	76			! 'L'
	.align
_Global_accessLock:
	.skip	20
_Global_barber:
	.skip	20
_Global_barberDone:
	.skip	20
_Global_customers:
	.skip	20
_Global_customerDone:
	.skip	20
_Global_barberThread:
	.skip	4092
_Global_customerThreads:
	.skip	40924
	.align
! String constants
_StringConst_6:
	.word	7			! length
	.ascii	"      \t"
	.align
_StringConst_5:
	.word	4			! length
	.ascii	"End\n"
	.align
_StringConst_4:
	.word	6			! length
	.ascii	"Start\n"
	.align
_StringConst_3:
	.word	8			! length
	.ascii	"Customer"
	.align
_StringConst_2:
	.word	6			! length
	.ascii	"barber"
	.align
_StringConst_1:
	.word	7			! length
	.ascii	"Barber\t"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0x59180ff9,r3		! .  hashVal = 1494749177
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_8		! .
	ret				! .
_Label_8:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Task2.c\0"
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
	set	0x59180ff9,r4		! myHashVal = 1494749177
	cmp	r3,r4
	be	_Label_9
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
_Label_9:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_10
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_10
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_10
! Make sure _P_Synch_ has hash value 0x8e356f6d (decimal -1909100691)
	set	_packageName,r2
	set	0x8e356f6d,r3
	call	_CheckVersion_P_Synch_
	.import	_CheckVersion_P_Synch_
	cmp	r1,0
	bne	_Label_10
_Label_10:
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
	call	_function_7_sleepingbarber
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
	.word	_Label_11
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_11:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION sleepingbarber  ===============
! 
_function_7_sleepingbarber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_7_sleepingbarber,r1
	push	r1
	mov	11296,r1
_Label_541:
	push	r0
	sub	r1,1,r1
	bne	_Label_541
	mov	56,r13		! source line 56
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	61,r13		! source line 61
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_16 = 0		(4 bytes)
	mov	0,r1
	set	-45172,r2
	store	r1,[r14+r2]
!   Calculate and save the FOR-LOOP ending value
!   _temp_17 = 5		(4 bytes)
	mov	5,r1
	set	-45168,r2
	store	r1,[r14+r2]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_16  (sizeInBytes=4)
	set	-45172,r1
	load	[r14+r1],r1
	set	-45176,r2
	store	r1,[r14+r2]
_Label_12:
!   Perform the FOR-LOOP termination test
!   if i > _temp_17 then goto _Label_15		
	set	-45176,r1
	load	[r14+r1],r1
	set	-45168,r2
	load	[r14+r2],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_15
_Label_13:
	mov	61,r13		! source line 61
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	62,r13		! source line 62
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_14:
!   i = i + 1
	set	-45176,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45176,r2
	store	r1,[r14+r2]
	jmp	_Label_12
! END FOR
_Label_15:
! CALL STATEMENT...
!   _temp_18 = _StringConst_1
	set	_StringConst_1,r1
	set	-45164,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_18  sizeInBytes=4
	set	-45164,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	64,r13		! source line 64
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	65,r13		! source line 65
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_23 = 0		(4 bytes)
	mov	0,r1
	set	-45160,r2
	store	r1,[r14+r2]
!   Calculate and save the FOR-LOOP ending value
!   _temp_24 = 9		(4 bytes)
	mov	9,r1
	set	-45156,r2
	store	r1,[r14+r2]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_23  (sizeInBytes=4)
	set	-45160,r1
	load	[r14+r1],r1
	set	-45176,r2
	store	r1,[r14+r2]
_Label_19:
!   Perform the FOR-LOOP termination test
!   if i > _temp_24 then goto _Label_22		
	set	-45176,r1
	load	[r14+r1],r1
	set	-45156,r2
	load	[r14+r2],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_22
_Label_20:
	mov	65,r13		! source line 65
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_25 = i + 1		(int)
	set	-45176,r1
	load	[r14+r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	-45152,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_25  sizeInBytes=4
	set	-45152,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	66,r13		! source line 66
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=9  sizeInBytes=1
	mov	9,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	67,r13		! source line 67
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_21:
!   i = i + 1
	set	-45176,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45176,r2
	store	r1,[r14+r2]
	jmp	_Label_19
! END FOR
_Label_22:
! CALL STATEMENT...
!   Call the function
	mov	69,r13		! source line 69
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_accessLock = zeros  (sizeInBytes=20)
	set	_Global_accessLock,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_accessLock = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	set	_Global_accessLock,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0SE",r10
!   _temp_27 = &_Global_accessLock
	set	_Global_accessLock,r1
	set	-45144,r2
	store	r1,[r14+r2]
!   Send message Init
	set	-45144,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_barber = zeros  (sizeInBytes=20)
	set	_Global_barber,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_barber = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_barber,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0SE",r10
!   _temp_29 = &_Global_barber
	set	_Global_barber,r1
	set	-45136,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	set	-45136,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_barberDone = zeros  (sizeInBytes=20)
	set	_Global_barberDone,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_barberDone = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_barberDone,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0SE",r10
!   _temp_31 = &_Global_barberDone
	set	_Global_barberDone,r1
	set	-45128,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	set	-45128,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_customers = zeros  (sizeInBytes=20)
	set	_Global_customers,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_customers = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_customers,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	78,r13		! source line 78
	mov	"\0\0SE",r10
!   _temp_33 = &_Global_customers
	set	_Global_customers,r1
	set	-45120,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	set	-45120,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	79,r13		! source line 79
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_customerDone = zeros  (sizeInBytes=20)
	set	_Global_customerDone,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   _Global_customerDone = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	set	_Global_customerDone,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	80,r13		! source line 80
	mov	"\0\0SE",r10
!   _temp_35 = &_Global_customerDone
	set	_Global_customerDone,r1
	set	-45112,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	set	-45112,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_sb = zeros  (sizeInBytes=16)
	set	_Global_sb,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   _Global_sb = _P_Main_SleepingBarber
	set	_P_Main_SleepingBarber,r1
	set	_Global_sb,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	83,r13		! source line 83
	mov	"\0\0SE",r10
!   _temp_37 = &_Global_cStatus
	set	_Global_cStatus,r1
	set	-45104,r2
	store	r1,[r14+r2]
!   _temp_38 = &_Global_sb
	set	_Global_sb,r1
	set	-45100,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=12  value=_Global_bStatus  sizeInBytes=4
	set	_Global_bStatus,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_37  sizeInBytes=4
	set	-45104,r1
	load	[r14+r1],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+12]
!   Send message Init
	set	-45100,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_barberThread = zeros  (sizeInBytes=4092)
	set	_Global_barberThread,r4
	mov	1023,r3
_Label_542:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_542
!   _Global_barberThread = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	set	_Global_barberThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   _temp_40 = _StringConst_2
	set	_StringConst_2,r1
	set	-45092,r2
	store	r1,[r14+r2]
!   _temp_41 = &_Global_barberThread
	set	_Global_barberThread,r1
	set	-45088,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=12  value=_temp_40  sizeInBytes=4
	set	-45092,r1
	load	[r14+r1],r1
	store	r1,[r15+4]
!   Send message Init
	set	-45088,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0SE",r10
!   _temp_42 = _P_Main_barberWrapper
	set	_P_Main_barberWrapper,r1
	set	-45084,r2
	store	r1,[r14+r2]
!   _temp_43 = &_Global_barberThread
	set	_Global_barberThread,r1
	set	-45080,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=12  value=_temp_42  sizeInBytes=4
	set	-45084,r1
	load	[r14+r1],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	set	-45080,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	94,r13		! source line 94
	mov	"\0\0AS",r10
!   _temp_44 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	set	-45076,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_46 = &_temp_45
	set	-45072,r1
	add	r14,r1,r1
	store	r1,[r14+-4148]
!   _temp_46 = _temp_46 + 4
	load	[r14+-4148],r1
	add	r1,4,r1
	store	r1,[r14+-4148]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_48 = zeros  (sizeInBytes=4092)
	add	r14,-4140,r4
	mov	1023,r3
_Label_543:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_543
!   _temp_48 = _P_Thread_Thread
	set	_P_Thread_Thread,r1
	store	r1,[r14+-4140]
	mov	10,r1
	store	r1,[r14+-4144]
_Label_50:
!   Data Move: *_temp_46 = _temp_48  (sizeInBytes=4092)
	add	r14,-4140,r5
	load	[r14+-4148],r4
	mov	1023,r3
_Label_544:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_544
!   _temp_46 = _temp_46 + 4092
	load	[r14+-4148],r1
	add	r1,4092,r1
	store	r1,[r14+-4148]
!   _temp_47 = _temp_47 + -1
	load	[r14+-4144],r1
	add	r1,-1,r1
	store	r1,[r14+-4144]
!   if intNotZero (_temp_47) then goto _Label_50
	load	[r14+-4144],r1
	cmp	r1,r0
	bne	_Label_50
!   Initialize the array size...
	mov	10,r1
	set	-45072,r2
	store	r1,[r14+r2]
!   _temp_51 = &_temp_45
	set	-45072,r1
	add	r14,r1,r1
	store	r1,[r14+-44]
!   make sure array has size 10
	set	-45076,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_545
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_545:
!   make sure array has size 10
	load	[r14+-44],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_44 = *_temp_51  (sizeInBytes=40924)
	load	[r14+-44],r5
	set	-45076,r4
	load	[r14+r4],r4
	mov	10231,r3
_Label_546:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_546
! FOR STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_56 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_57 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_56  (sizeInBytes=4)
	load	[r14+-40],r1
	set	-45176,r2
	store	r1,[r14+r2]
_Label_52:
!   Perform the FOR-LOOP termination test
!   if i > _temp_57 then goto _Label_55		
	set	-45176,r1
	load	[r14+r1],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_55
_Label_53:
	mov	95,r13		! source line 95
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	96,r13		! source line 96
	mov	"\0\0SE",r10
!   _temp_58 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-32]
!   _temp_59 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-28]
!   Move address of _temp_59 [i ] into _temp_60
!     make sure index expr is >= 0
	set	-45176,r2
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
!   Prepare Argument: offset=12  value=_temp_58  sizeInBytes=4
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
	mov	97,r13		! source line 97
	mov	"\0\0SE",r10
!   _temp_61 = _P_Main_customerWrapper
	set	_P_Main_customerWrapper,r1
	store	r1,[r14+-20]
!   _temp_62 = &_Global_customerThreads
	set	_Global_customerThreads,r1
	store	r1,[r14+-16]
!   Move address of _temp_62 [i ] into _temp_63
!     make sure index expr is >= 0
	set	-45176,r2
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
!   Prepare Argument: offset=12  value=_temp_61  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	set	-45176,r1
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
_Label_54:
!   i = i + 1
	set	-45176,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45176,r2
	store	r1,[r14+r2]
	jmp	_Label_52
! END FOR
_Label_55:
! RETURN STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0RE",r10
	set	45188,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_7_sleepingbarber:
	.word	_sourceFileName
	.word	_Label_64
	.word	0		! total size of parameters
	.word	45184		! frame size = 45184
	.word	_Label_65
	.word	-12
	.word	4
	.word	_Label_66
	.word	-16
	.word	4
	.word	_Label_67
	.word	-20
	.word	4
	.word	_Label_68
	.word	-24
	.word	4
	.word	_Label_69
	.word	-28
	.word	4
	.word	_Label_70
	.word	-32
	.word	4
	.word	_Label_71
	.word	-36
	.word	4
	.word	_Label_72
	.word	-40
	.word	4
	.word	_Label_73
	.word	-44
	.word	4
	.word	_Label_74
	.word	-48
	.word	4
	.word	_Label_75
	.word	-4140
	.word	4092
	.word	_Label_76
	.word	-4144
	.word	4
	.word	_Label_77
	.word	-4148
	.word	4
	.word	_Label_78
	.word	-45072
	.word	40924
	.word	_Label_79
	.word	-45076
	.word	4
	.word	_Label_80
	.word	-45080
	.word	4
	.word	_Label_81
	.word	-45084
	.word	4
	.word	_Label_82
	.word	-45088
	.word	4
	.word	_Label_83
	.word	-45092
	.word	4
	.word	_Label_84
	.word	-45096
	.word	4
	.word	_Label_85
	.word	-45100
	.word	4
	.word	_Label_86
	.word	-45104
	.word	4
	.word	_Label_87
	.word	-45108
	.word	4
	.word	_Label_88
	.word	-45112
	.word	4
	.word	_Label_89
	.word	-45116
	.word	4
	.word	_Label_90
	.word	-45120
	.word	4
	.word	_Label_91
	.word	-45124
	.word	4
	.word	_Label_92
	.word	-45128
	.word	4
	.word	_Label_93
	.word	-45132
	.word	4
	.word	_Label_94
	.word	-45136
	.word	4
	.word	_Label_95
	.word	-45140
	.word	4
	.word	_Label_96
	.word	-45144
	.word	4
	.word	_Label_97
	.word	-45148
	.word	4
	.word	_Label_98
	.word	-45152
	.word	4
	.word	_Label_99
	.word	-45156
	.word	4
	.word	_Label_100
	.word	-45160
	.word	4
	.word	_Label_101
	.word	-45164
	.word	4
	.word	_Label_102
	.word	-45168
	.word	4
	.word	_Label_103
	.word	-45172
	.word	4
	.word	_Label_104
	.word	-45176
	.word	4
	.word	0
_Label_64:
	.ascii	"sleepingbarber\0"
	.align
_Label_65:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_66:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_67:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_68:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_69:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_70:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_71:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_72:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_73:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_74:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_75:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
_Label_76:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
_Label_77:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
_Label_78:
	.byte	'?'
	.ascii	"_temp_45\0"
	.align
_Label_79:
	.byte	'?'
	.ascii	"_temp_44\0"
	.align
_Label_80:
	.byte	'?'
	.ascii	"_temp_43\0"
	.align
_Label_81:
	.byte	'?'
	.ascii	"_temp_42\0"
	.align
_Label_82:
	.byte	'?'
	.ascii	"_temp_41\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_40\0"
	.align
_Label_84:
	.byte	'?'
	.ascii	"_temp_39\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_38\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_37\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_36\0"
	.align
_Label_88:
	.byte	'?'
	.ascii	"_temp_35\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_34\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_33\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_32\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_31\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_30\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_29\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_28\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_27\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_26\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_25\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_24\0"
	.align
_Label_100:
	.byte	'?'
	.ascii	"_temp_23\0"
	.align
_Label_101:
	.byte	'?'
	.ascii	"_temp_18\0"
	.align
_Label_102:
	.byte	'?'
	.ascii	"_temp_17\0"
	.align
_Label_103:
	.byte	'?'
	.ascii	"_temp_16\0"
	.align
_Label_104:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION barberWrapper  ===============
! 
_P_Main_barberWrapper:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Main_barberWrapper,r1
	push	r1
	mov	2,r1
_Label_547:
	push	r0
	sub	r1,1,r1
	bne	_Label_547
	mov	102,r13		! source line 102
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0SE",r10
!   _temp_105 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-12]
!   Send message barberFunc
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	103,r13		! source line 103
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Main_barberWrapper:
	.word	_sourceFileName
	.word	_Label_106
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_107
	.word	8
	.word	4
	.word	_Label_108
	.word	-12
	.word	4
	.word	0
_Label_106:
	.ascii	"barberWrapper\0"
	.align
_Label_107:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_108:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
! 
! ===============  FUNCTION customerWrapper  ===============
! 
_P_Main_customerWrapper:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Main_customerWrapper,r1
	push	r1
	mov	3,r1
_Label_548:
	push	r0
	sub	r1,1,r1
	bne	_Label_548
	mov	106,r13		! source line 106
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   _temp_109 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message customerFunc
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Main_customerWrapper:
	.word	_sourceFileName
	.word	_Label_110
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_111
	.word	8
	.word	4
	.word	_Label_112
	.word	-12
	.word	4
	.word	0
_Label_110:
	.ascii	"customerWrapper\0"
	.align
_Label_111:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_112:
	.byte	'?'
	.ascii	"_temp_109\0"
	.align
! 
! ===============  CLASS SleepingBarber  ===============
! 
! Dispatch Table:
! 
_P_Main_SleepingBarber:
	.word	_Label_113
	jmp	_Method_P_Main_SleepingBarber_1	! 4:	Init
	jmp	_Method_P_Main_SleepingBarber_2	! 8:	barberFunc
	jmp	_Method_P_Main_SleepingBarber_3	! 12:	customerFunc
	jmp	_Method_P_Main_SleepingBarber_4	! 16:	printExample
	jmp	_Method_P_Main_SleepingBarber_5	! 20:	printBarberStatus
	jmp	_Method_P_Main_SleepingBarber_6	! 24:	printCustomerStatus
	jmp	_Method_P_Main_SleepingBarber_7	! 28:	printChairs
	.word	0
! 
! Class descriptor:
! 
_Label_113:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_114
	.word	_sourceFileName
	.word	14		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Main_SleepingBarber
	.word	_P_System_Object
	.word	0
_Label_114:
	.ascii	"SleepingBarber\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Main_SleepingBarber_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_1,r1
	push	r1
	mov	6,r1
_Label_549:
	push	r0
	sub	r1,1,r1
	bne	_Label_549
	mov	112,r13		! source line 112
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_115) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_116 = _temp_115 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_116 = bStat  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-28],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_117) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_118 = _temp_117 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_118 = cStat  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_119) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_120 = _temp_119 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_120 = numOfChair  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	115,r13		! source line 115
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_1:
	.word	_sourceFileName
	.word	_Label_121
	.word	16		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_122
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_123
	.word	12
	.word	4
	.word	_Label_124
	.word	16
	.word	4
	.word	_Label_125
	.word	20
	.word	4
	.word	_Label_126
	.word	-12
	.word	4
	.word	_Label_127
	.word	-16
	.word	4
	.word	_Label_128
	.word	-20
	.word	4
	.word	_Label_129
	.word	-24
	.word	4
	.word	_Label_130
	.word	-28
	.word	4
	.word	_Label_131
	.word	-32
	.word	4
	.word	0
_Label_121:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_122:
	.ascii	"Pself\0"
	.align
_Label_123:
	.byte	'I'
	.ascii	"bStat\0"
	.align
_Label_124:
	.byte	'P'
	.ascii	"cStat\0"
	.align
_Label_125:
	.byte	'I'
	.ascii	"numOfChair\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_127:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_128:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_129:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_130:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_131:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
! 
! ===============  METHOD barberFunc  ===============
! 
_Method_P_Main_SleepingBarber_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_2,r1
	push	r1
	mov	21,r1
_Label_550:
	push	r0
	sub	r1,1,r1
	bne	_Label_550
	mov	118,r13		! source line 118
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	119,r13		! source line 119
	mov	"\0\0WH",r10
_Label_132:
!	jmp	_Label_133
_Label_133:
	mov	119,r13		! source line 119
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	120,r13		! source line 120
	mov	"\0\0SE",r10
!   _temp_135 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-88]
!   Send message Down
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	122,r13		! source line 122
	mov	"\0\0SE",r10
!   _temp_136 = &_Global_accessLock
	set	_Global_accessLock,r1
	store	r1,[r14+-84]
!   Send message Lock
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	123,r13		! source line 123
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_137) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_138 = _temp_137 + 12
	load	[r14+-80],r1
	add	r1,12,r1
	store	r1,[r14+-76]
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_141) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_142 = _temp_141 + 12
	load	[r14+-64],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Data Move: _temp_140 = *_temp_142  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_139 = _temp_140 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_138 = _temp_139  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_143) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_144 = _temp_143 + 4
	load	[r14+-56],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_144 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_145) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0SE",r10
!   _temp_146 = &_Global_accessLock
	set	_Global_accessLock,r1
	store	r1,[r14+-44]
!   Send message Unlock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0SE",r10
!   _temp_147 = &_Global_barber
	set	_Global_barber,r1
	store	r1,[r14+-40]
!   Send message Up
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	130,r13		! source line 130
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
	mov	132,r13		! source line 132
	mov	"\0\0SE",r10
!   _temp_148 = &_Global_customerDone
	set	_Global_customerDone,r1
	store	r1,[r14+-36]
!   Send message Down
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0SE",r10
!   _temp_149 = &_Global_accessLock
	set	_Global_accessLock,r1
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
	mov	136,r13		! source line 136
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_150) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_151 = _temp_150 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_151 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_152) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0SE",r10
!   _temp_153 = &_Global_accessLock
	set	_Global_accessLock,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0SE",r10
!   _temp_154 = &_Global_barberDone
	set	_Global_barberDone,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END WHILE...
	jmp	_Label_132
_Label_134:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_2:
	.word	_sourceFileName
	.word	_Label_155
	.word	4		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_156
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_157
	.word	-12
	.word	4
	.word	_Label_158
	.word	-16
	.word	4
	.word	_Label_159
	.word	-20
	.word	4
	.word	_Label_160
	.word	-24
	.word	4
	.word	_Label_161
	.word	-28
	.word	4
	.word	_Label_162
	.word	-32
	.word	4
	.word	_Label_163
	.word	-36
	.word	4
	.word	_Label_164
	.word	-40
	.word	4
	.word	_Label_165
	.word	-44
	.word	4
	.word	_Label_166
	.word	-48
	.word	4
	.word	_Label_167
	.word	-52
	.word	4
	.word	_Label_168
	.word	-56
	.word	4
	.word	_Label_169
	.word	-60
	.word	4
	.word	_Label_170
	.word	-64
	.word	4
	.word	_Label_171
	.word	-68
	.word	4
	.word	_Label_172
	.word	-72
	.word	4
	.word	_Label_173
	.word	-76
	.word	4
	.word	_Label_174
	.word	-80
	.word	4
	.word	_Label_175
	.word	-84
	.word	4
	.word	_Label_176
	.word	-88
	.word	4
	.word	0
_Label_155:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"barberFunc\0"
	.align
_Label_156:
	.ascii	"Pself\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_147\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_146\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_145\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
! 
! ===============  METHOD customerFunc  ===============
! 
_Method_P_Main_SleepingBarber_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_3,r1
	push	r1
	mov	56,r1
_Label_551:
	push	r0
	sub	r1,1,r1
	bne	_Label_551
	mov	144,r13		! source line 144
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0AS",r10
!   tries = 3		(4 bytes)
	mov	3,r1
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0AS",r10
!   attempts = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-224]
! WHILE STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0WH",r10
_Label_177:
!   if attempts >= tries then goto _Label_179		(int)
	load	[r14+-224],r1
	load	[r14+-220],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_179
!	jmp	_Label_178
_Label_178:
	mov	152,r13		! source line 152
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0SE",r10
!   _temp_180 = &_Global_accessLock
	set	_Global_accessLock,r1
	store	r1,[r14+-216]
!   Send message Lock
	load	[r14+-216],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	156,r13		! source line 156
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-208]
!   if intIsZero (_temp_182) then goto _runtimeErrorNullPointer
	load	[r14+-208],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_183 = _temp_182 + 8
	load	[r14+-208],r1
	add	r1,8,r1
	store	r1,[r14+-204]
!   Data Move: _temp_181 = *_temp_183  (sizeInBytes=4)
	load	[r14+-204],r1
	load	[r1],r1
	store	r1,[r14+-212]
!   if intIsZero (_temp_181) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_181 [i ] into _temp_184
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-212],r1
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
	store	r2,[r14+-200]
!   Data Move: *_temp_184 = 69  (sizeInBytes=1)
	mov	69,r1
	load	[r14+-200],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	157,r13		! source line 157
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_185) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! IF STATEMENT...
	mov	159,r13		! source line 159
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_189) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_190 = _temp_189 + 12
	load	[r14+-188],r1
	add	r1,12,r1
	store	r1,[r14+-184]
!   Data Move: _temp_188 = *_temp_190  (sizeInBytes=4)
	load	[r14+-184],r1
	load	[r1],r1
	store	r1,[r14+-192]
!   if _temp_188 <= 0 then goto _Label_187		(int)
	load	[r14+-192],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_187
!	jmp	_Label_186
_Label_186:
! THEN...
	mov	161,r13		! source line 161
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_191) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_192 = _temp_191 + 12
	load	[r14+-180],r1
	add	r1,12,r1
	store	r1,[r14+-176]
	load	[r14+8],r1
	store	r1,[r14+-164]
!   if intIsZero (_temp_195) then goto _runtimeErrorNullPointer
	load	[r14+-164],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_196 = _temp_195 + 12
	load	[r14+-164],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   Data Move: _temp_194 = *_temp_196  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-168]
!   _temp_193 = _temp_194 - 1		(int)
	load	[r14+-168],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   Data Move: *_temp_192 = _temp_193  (sizeInBytes=4)
	load	[r14+-172],r1
	load	[r14+-176],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	162,r13		! source line 162
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_198) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_199 = _temp_198 + 8
	load	[r14+-152],r1
	add	r1,8,r1
	store	r1,[r14+-148]
!   Data Move: _temp_197 = *_temp_199  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_197) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_197 [i ] into _temp_200
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-156],r1
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
	store	r2,[r14+-144]
!   Data Move: *_temp_200 = 83  (sizeInBytes=1)
	mov	83,r1
	load	[r14+-144],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	163,r13		! source line 163
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_201) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-140],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0SE",r10
!   _temp_202 = &_Global_accessLock
	set	_Global_accessLock,r1
	store	r1,[r14+-136]
!   Send message Unlock
	load	[r14+-136],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0SE",r10
!   _temp_203 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-132]
!   Send message Up
	load	[r14+-132],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	169,r13		! source line 169
	mov	"\0\0SE",r10
!   _temp_204 = &_Global_barber
	set	_Global_barber,r1
	store	r1,[r14+-128]
!   Send message Down
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0SE",r10
!   _temp_205 = &_Global_accessLock
	set	_Global_accessLock,r1
	store	r1,[r14+-124]
!   Send message Lock
	load	[r14+-124],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_207) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_208 = _temp_207 + 8
	load	[r14+-116],r1
	add	r1,8,r1
	store	r1,[r14+-112]
!   Data Move: _temp_206 = *_temp_208  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r1],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_206) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_206 [i ] into _temp_209
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-120],r1
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
	store	r2,[r14+-108]
!   Data Move: *_temp_209 = 66  (sizeInBytes=1)
	mov	66,r1
	load	[r14+-108],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-104]
!   if intIsZero (_temp_210) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0SE",r10
!   _temp_211 = &_Global_accessLock
	set	_Global_accessLock,r1
	store	r1,[r14+-100]
!   Send message Unlock
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	179,r13		! source line 179
	mov	"\0\0SE",r10
!   _temp_212 = &_Global_accessLock
	set	_Global_accessLock,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	180,r13		! source line 180
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_214) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_215 = _temp_214 + 8
	load	[r14+-88],r1
	add	r1,8,r1
	store	r1,[r14+-84]
!   Data Move: _temp_213 = *_temp_215  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_213) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_213 [i ] into _temp_216
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
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
	store	r2,[r14+-80]
!   Data Move: *_temp_216 = 70  (sizeInBytes=1)
	mov	70,r1
	load	[r14+-80],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	181,r13		! source line 181
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_217) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	182,r13		! source line 182
	mov	"\0\0SE",r10
!   _temp_218 = &_Global_customerDone
	set	_Global_customerDone,r1
	store	r1,[r14+-72]
!   Send message Up
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0SE",r10
!   _temp_219 = &_Global_accessLock
	set	_Global_accessLock,r1
	store	r1,[r14+-68]
!   Send message Unlock
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	186,r13		! source line 186
	mov	"\0\0SE",r10
!   _temp_220 = &_Global_barberDone
	set	_Global_barberDone,r1
	store	r1,[r14+-64]
!   Send message Down
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	187,r13		! source line 187
	mov	"\0\0SE",r10
!   _temp_221 = &_Global_accessLock
	set	_Global_accessLock,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	188,r13		! source line 188
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_223) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_224 = _temp_223 + 8
	load	[r14+-52],r1
	add	r1,8,r1
	store	r1,[r14+-48]
!   Data Move: _temp_222 = *_temp_224  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_222) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_222 [i ] into _temp_225
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
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
	store	r2,[r14+-44]
!   Data Move: *_temp_225 = 76  (sizeInBytes=1)
	mov	76,r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_226) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	190,r13		! source line 190
	mov	"\0\0SE",r10
!   _temp_227 = &_Global_accessLock
	set	_Global_accessLock,r1
	store	r1,[r14+-36]
!   Send message Unlock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
	jmp	_Label_228
_Label_187:
! ELSE...
	mov	192,r13		! source line 192
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	192,r13		! source line 192
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_230) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_231 = _temp_230 + 8
	load	[r14+-28],r1
	add	r1,8,r1
	store	r1,[r14+-24]
!   Data Move: _temp_229 = *_temp_231  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_229) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_229 [i ] into _temp_232
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
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
	store	r2,[r14+-20]
!   Data Move: *_temp_232 = 76  (sizeInBytes=1)
	mov	76,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_233) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0SE",r10
!   _temp_234 = &_Global_accessLock
	set	_Global_accessLock,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_228:
! ASSIGNMENT STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0AS",r10
!   attempts = attempts + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! SEND STATEMENT...
	mov	198,r13		! source line 198
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
! END WHILE...
	jmp	_Label_177
_Label_179:
! RETURN STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0RE",r10
	add	r15,228,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_3:
	.word	_sourceFileName
	.word	_Label_235
	.word	8		! total size of parameters
	.word	224		! frame size = 224
	.word	_Label_236
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_237
	.word	12
	.word	4
	.word	_Label_238
	.word	-12
	.word	4
	.word	_Label_239
	.word	-16
	.word	4
	.word	_Label_240
	.word	-20
	.word	4
	.word	_Label_241
	.word	-24
	.word	4
	.word	_Label_242
	.word	-28
	.word	4
	.word	_Label_243
	.word	-32
	.word	4
	.word	_Label_244
	.word	-36
	.word	4
	.word	_Label_245
	.word	-40
	.word	4
	.word	_Label_246
	.word	-44
	.word	4
	.word	_Label_247
	.word	-48
	.word	4
	.word	_Label_248
	.word	-52
	.word	4
	.word	_Label_249
	.word	-56
	.word	4
	.word	_Label_250
	.word	-60
	.word	4
	.word	_Label_251
	.word	-64
	.word	4
	.word	_Label_252
	.word	-68
	.word	4
	.word	_Label_253
	.word	-72
	.word	4
	.word	_Label_254
	.word	-76
	.word	4
	.word	_Label_255
	.word	-80
	.word	4
	.word	_Label_256
	.word	-84
	.word	4
	.word	_Label_257
	.word	-88
	.word	4
	.word	_Label_258
	.word	-92
	.word	4
	.word	_Label_259
	.word	-96
	.word	4
	.word	_Label_260
	.word	-100
	.word	4
	.word	_Label_261
	.word	-104
	.word	4
	.word	_Label_262
	.word	-108
	.word	4
	.word	_Label_263
	.word	-112
	.word	4
	.word	_Label_264
	.word	-116
	.word	4
	.word	_Label_265
	.word	-120
	.word	4
	.word	_Label_266
	.word	-124
	.word	4
	.word	_Label_267
	.word	-128
	.word	4
	.word	_Label_268
	.word	-132
	.word	4
	.word	_Label_269
	.word	-136
	.word	4
	.word	_Label_270
	.word	-140
	.word	4
	.word	_Label_271
	.word	-144
	.word	4
	.word	_Label_272
	.word	-148
	.word	4
	.word	_Label_273
	.word	-152
	.word	4
	.word	_Label_274
	.word	-156
	.word	4
	.word	_Label_275
	.word	-160
	.word	4
	.word	_Label_276
	.word	-164
	.word	4
	.word	_Label_277
	.word	-168
	.word	4
	.word	_Label_278
	.word	-172
	.word	4
	.word	_Label_279
	.word	-176
	.word	4
	.word	_Label_280
	.word	-180
	.word	4
	.word	_Label_281
	.word	-184
	.word	4
	.word	_Label_282
	.word	-188
	.word	4
	.word	_Label_283
	.word	-192
	.word	4
	.word	_Label_284
	.word	-196
	.word	4
	.word	_Label_285
	.word	-200
	.word	4
	.word	_Label_286
	.word	-204
	.word	4
	.word	_Label_287
	.word	-208
	.word	4
	.word	_Label_288
	.word	-212
	.word	4
	.word	_Label_289
	.word	-216
	.word	4
	.word	_Label_290
	.word	-220
	.word	4
	.word	_Label_291
	.word	-224
	.word	4
	.word	0
_Label_235:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"customerFunc\0"
	.align
_Label_236:
	.ascii	"Pself\0"
	.align
_Label_237:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_218\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_213\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_212\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_207\0"
	.align
_Label_265:
	.byte	'?'
	.ascii	"_temp_206\0"
	.align
_Label_266:
	.byte	'?'
	.ascii	"_temp_205\0"
	.align
_Label_267:
	.byte	'?'
	.ascii	"_temp_204\0"
	.align
_Label_268:
	.byte	'?'
	.ascii	"_temp_203\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_202\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_201\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_200\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_199\0"
	.align
_Label_273:
	.byte	'?'
	.ascii	"_temp_198\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_197\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_196\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_195\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_194\0"
	.align
_Label_278:
	.byte	'?'
	.ascii	"_temp_193\0"
	.align
_Label_279:
	.byte	'?'
	.ascii	"_temp_192\0"
	.align
_Label_280:
	.byte	'?'
	.ascii	"_temp_191\0"
	.align
_Label_281:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_290:
	.byte	'I'
	.ascii	"tries\0"
	.align
_Label_291:
	.byte	'I'
	.ascii	"attempts\0"
	.align
! 
! ===============  METHOD printExample  ===============
! 
_Method_P_Main_SleepingBarber_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_4,r1
	push	r1
	mov	88,r1
_Label_552:
	push	r0
	sub	r1,1,r1
	bne	_Label_552
	mov	204,r13		! source line 204
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	210,r13		! source line 210
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-348]
!   if intIsZero (_temp_293) then goto _runtimeErrorNullPointer
	load	[r14+-348],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_294 = _temp_293 + 8
	load	[r14+-348],r1
	add	r1,8,r1
	store	r1,[r14+-344]
!   Data Move: _temp_292 = *_temp_294  (sizeInBytes=4)
	load	[r14+-344],r1
	load	[r1],r1
	store	r1,[r14+-352]
!   if intIsZero (_temp_292) then goto _runtimeErrorNullPointer
	load	[r14+-352],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_292 [0 ] into _temp_295
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-352],r1
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
	store	r2,[r14+-340]
!   Data Move: *_temp_295 = 69  (sizeInBytes=1)
	mov	69,r1
	load	[r14+-340],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	211,r13		! source line 211
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-336]
!   if intIsZero (_temp_296) then goto _runtimeErrorNullPointer
	load	[r14+-336],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-336],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	214,r13		! source line 214
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-328]
!   if intIsZero (_temp_298) then goto _runtimeErrorNullPointer
	load	[r14+-328],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_299 = _temp_298 + 8
	load	[r14+-328],r1
	add	r1,8,r1
	store	r1,[r14+-324]
!   Data Move: _temp_297 = *_temp_299  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r1],r1
	store	r1,[r14+-332]
!   if intIsZero (_temp_297) then goto _runtimeErrorNullPointer
	load	[r14+-332],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_297 [0 ] into _temp_300
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-332],r1
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
	store	r2,[r14+-320]
!   Data Move: *_temp_300 = 83  (sizeInBytes=1)
	mov	83,r1
	load	[r14+-320],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-316]
!   if intIsZero (_temp_301) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_302 = _temp_301 + 12
	load	[r14+-316],r1
	add	r1,12,r1
	store	r1,[r14+-312]
	load	[r14+8],r1
	store	r1,[r14+-300]
!   if intIsZero (_temp_305) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_306 = _temp_305 + 12
	load	[r14+-300],r1
	add	r1,12,r1
	store	r1,[r14+-296]
!   Data Move: _temp_304 = *_temp_306  (sizeInBytes=4)
	load	[r14+-296],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   _temp_303 = _temp_304 - 1		(int)
	load	[r14+-304],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-308]
!   Data Move: *_temp_302 = _temp_303  (sizeInBytes=4)
	load	[r14+-308],r1
	load	[r14+-312],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-292]
!   if intIsZero (_temp_307) then goto _runtimeErrorNullPointer
	load	[r14+-292],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-292],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	219,r13		! source line 219
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-284]
!   if intIsZero (_temp_309) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_310 = _temp_309 + 8
	load	[r14+-284],r1
	add	r1,8,r1
	store	r1,[r14+-280]
!   Data Move: _temp_308 = *_temp_310  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_308) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_308 [1 ] into _temp_311
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-288],r1
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
	store	r2,[r14+-276]
!   Data Move: *_temp_311 = 69  (sizeInBytes=1)
	mov	69,r1
	load	[r14+-276],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	220,r13		! source line 220
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-272]
!   if intIsZero (_temp_312) then goto _runtimeErrorNullPointer
	load	[r14+-272],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-272],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	223,r13		! source line 223
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-264]
!   if intIsZero (_temp_314) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_315 = _temp_314 + 8
	load	[r14+-264],r1
	add	r1,8,r1
	store	r1,[r14+-260]
!   Data Move: _temp_313 = *_temp_315  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r1],r1
	store	r1,[r14+-268]
!   if intIsZero (_temp_313) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_313 [1 ] into _temp_316
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-268],r1
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
	store	r2,[r14+-256]
!   Data Move: *_temp_316 = 83  (sizeInBytes=1)
	mov	83,r1
	load	[r14+-256],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_317) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_318 = _temp_317 + 12
	load	[r14+-252],r1
	add	r1,12,r1
	store	r1,[r14+-248]
	load	[r14+8],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_321) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_322 = _temp_321 + 12
	load	[r14+-236],r1
	add	r1,12,r1
	store	r1,[r14+-232]
!   Data Move: _temp_320 = *_temp_322  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   _temp_319 = _temp_320 - 1		(int)
	load	[r14+-240],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
!   Data Move: *_temp_318 = _temp_319  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r14+-248],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-228]
!   if intIsZero (_temp_323) then goto _runtimeErrorNullPointer
	load	[r14+-228],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-228],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	228,r13		! source line 228
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_324) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_325 = _temp_324 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Data Move: *_temp_325 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-220],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-216]
!   if intIsZero (_temp_326) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_327 = _temp_326 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
	load	[r14+8],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_330) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_331 = _temp_330 + 12
	load	[r14+-200],r1
	add	r1,12,r1
	store	r1,[r14+-196]
!   Data Move: _temp_329 = *_temp_331  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   _temp_328 = _temp_329 + 1		(int)
	load	[r14+-204],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   Data Move: *_temp_327 = _temp_328  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r14+-212],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_332) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	233,r13		! source line 233
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_334) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_335 = _temp_334 + 8
	load	[r14+-184],r1
	add	r1,8,r1
	store	r1,[r14+-180]
!   Data Move: _temp_333 = *_temp_335  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_333) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_333 [0 ] into _temp_336
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-188],r1
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
	store	r2,[r14+-176]
!   Data Move: *_temp_336 = 66  (sizeInBytes=1)
	mov	66,r1
	load	[r14+-176],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_337) then goto _runtimeErrorNullPointer
	load	[r14+-172],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-172],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	237,r13		! source line 237
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_338) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_339 = _temp_338 + 4
	load	[r14+-168],r1
	add	r1,4,r1
	store	r1,[r14+-164]
!   Data Move: *_temp_339 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-164],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	238,r13		! source line 238
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_340) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_342) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_343 = _temp_342 + 8
	load	[r14+-152],r1
	add	r1,8,r1
	store	r1,[r14+-148]
!   Data Move: _temp_341 = *_temp_343  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_341) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_341 [0 ] into _temp_344
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-156],r1
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
	store	r2,[r14+-144]
!   Data Move: *_temp_344 = 70  (sizeInBytes=1)
	mov	70,r1
	load	[r14+-144],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	242,r13		! source line 242
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_345) then goto _runtimeErrorNullPointer
	load	[r14+-140],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-140],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_347) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_348 = _temp_347 + 8
	load	[r14+-132],r1
	add	r1,8,r1
	store	r1,[r14+-128]
!   Data Move: _temp_346 = *_temp_348  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_346) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_346 [0 ] into _temp_349
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-136],r1
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
	store	r2,[r14+-124]
!   Data Move: *_temp_349 = 76  (sizeInBytes=1)
	mov	76,r1
	load	[r14+-124],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_350) then goto _runtimeErrorNullPointer
	load	[r14+-120],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-120],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_351) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_352 = _temp_351 + 4
	load	[r14+-116],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Data Move: *_temp_352 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-112],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_353) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_354 = _temp_353 + 12
	load	[r14+-108],r1
	add	r1,12,r1
	store	r1,[r14+-104]
	load	[r14+8],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_357) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_358 = _temp_357 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_356 = *_temp_358  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   _temp_355 = _temp_356 + 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
!   Data Move: *_temp_354 = _temp_355  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r14+-104],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_359) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_361) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_362 = _temp_361 + 8
	load	[r14+-76],r1
	add	r1,8,r1
	store	r1,[r14+-72]
!   Data Move: _temp_360 = *_temp_362  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_360) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_360 [1 ] into _temp_363
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-80],r1
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
	store	r2,[r14+-68]
!   Data Move: *_temp_363 = 66  (sizeInBytes=1)
	mov	66,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_364) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_365) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_366 = _temp_365 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_366 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-56],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_367) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_369) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_370 = _temp_369 + 8
	load	[r14+-44],r1
	add	r1,8,r1
	store	r1,[r14+-40]
!   Data Move: _temp_368 = *_temp_370  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_368) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_368 [1 ] into _temp_371
!     make sure index expr is >= 0
	mov	1,r2
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
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: *_temp_371 = 70  (sizeInBytes=1)
	mov	70,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_372) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_374) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_375 = _temp_374 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: _temp_373 = *_temp_375  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_373) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_373 [1 ] into _temp_376
!     make sure index expr is >= 0
	mov	1,r2
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
	store	r2,[r14+-16]
!   Data Move: *_temp_376 = 76  (sizeInBytes=1)
	mov	76,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_377) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message printCustomerStatus
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! RETURN STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0RE",r10
	add	r15,356,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_4:
	.word	_sourceFileName
	.word	_Label_378
	.word	4		! total size of parameters
	.word	352		! frame size = 352
	.word	_Label_379
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_380
	.word	-12
	.word	4
	.word	_Label_381
	.word	-16
	.word	4
	.word	_Label_382
	.word	-20
	.word	4
	.word	_Label_383
	.word	-24
	.word	4
	.word	_Label_384
	.word	-28
	.word	4
	.word	_Label_385
	.word	-32
	.word	4
	.word	_Label_386
	.word	-36
	.word	4
	.word	_Label_387
	.word	-40
	.word	4
	.word	_Label_388
	.word	-44
	.word	4
	.word	_Label_389
	.word	-48
	.word	4
	.word	_Label_390
	.word	-52
	.word	4
	.word	_Label_391
	.word	-56
	.word	4
	.word	_Label_392
	.word	-60
	.word	4
	.word	_Label_393
	.word	-64
	.word	4
	.word	_Label_394
	.word	-68
	.word	4
	.word	_Label_395
	.word	-72
	.word	4
	.word	_Label_396
	.word	-76
	.word	4
	.word	_Label_397
	.word	-80
	.word	4
	.word	_Label_398
	.word	-84
	.word	4
	.word	_Label_399
	.word	-88
	.word	4
	.word	_Label_400
	.word	-92
	.word	4
	.word	_Label_401
	.word	-96
	.word	4
	.word	_Label_402
	.word	-100
	.word	4
	.word	_Label_403
	.word	-104
	.word	4
	.word	_Label_404
	.word	-108
	.word	4
	.word	_Label_405
	.word	-112
	.word	4
	.word	_Label_406
	.word	-116
	.word	4
	.word	_Label_407
	.word	-120
	.word	4
	.word	_Label_408
	.word	-124
	.word	4
	.word	_Label_409
	.word	-128
	.word	4
	.word	_Label_410
	.word	-132
	.word	4
	.word	_Label_411
	.word	-136
	.word	4
	.word	_Label_412
	.word	-140
	.word	4
	.word	_Label_413
	.word	-144
	.word	4
	.word	_Label_414
	.word	-148
	.word	4
	.word	_Label_415
	.word	-152
	.word	4
	.word	_Label_416
	.word	-156
	.word	4
	.word	_Label_417
	.word	-160
	.word	4
	.word	_Label_418
	.word	-164
	.word	4
	.word	_Label_419
	.word	-168
	.word	4
	.word	_Label_420
	.word	-172
	.word	4
	.word	_Label_421
	.word	-176
	.word	4
	.word	_Label_422
	.word	-180
	.word	4
	.word	_Label_423
	.word	-184
	.word	4
	.word	_Label_424
	.word	-188
	.word	4
	.word	_Label_425
	.word	-192
	.word	4
	.word	_Label_426
	.word	-196
	.word	4
	.word	_Label_427
	.word	-200
	.word	4
	.word	_Label_428
	.word	-204
	.word	4
	.word	_Label_429
	.word	-208
	.word	4
	.word	_Label_430
	.word	-212
	.word	4
	.word	_Label_431
	.word	-216
	.word	4
	.word	_Label_432
	.word	-220
	.word	4
	.word	_Label_433
	.word	-224
	.word	4
	.word	_Label_434
	.word	-228
	.word	4
	.word	_Label_435
	.word	-232
	.word	4
	.word	_Label_436
	.word	-236
	.word	4
	.word	_Label_437
	.word	-240
	.word	4
	.word	_Label_438
	.word	-244
	.word	4
	.word	_Label_439
	.word	-248
	.word	4
	.word	_Label_440
	.word	-252
	.word	4
	.word	_Label_441
	.word	-256
	.word	4
	.word	_Label_442
	.word	-260
	.word	4
	.word	_Label_443
	.word	-264
	.word	4
	.word	_Label_444
	.word	-268
	.word	4
	.word	_Label_445
	.word	-272
	.word	4
	.word	_Label_446
	.word	-276
	.word	4
	.word	_Label_447
	.word	-280
	.word	4
	.word	_Label_448
	.word	-284
	.word	4
	.word	_Label_449
	.word	-288
	.word	4
	.word	_Label_450
	.word	-292
	.word	4
	.word	_Label_451
	.word	-296
	.word	4
	.word	_Label_452
	.word	-300
	.word	4
	.word	_Label_453
	.word	-304
	.word	4
	.word	_Label_454
	.word	-308
	.word	4
	.word	_Label_455
	.word	-312
	.word	4
	.word	_Label_456
	.word	-316
	.word	4
	.word	_Label_457
	.word	-320
	.word	4
	.word	_Label_458
	.word	-324
	.word	4
	.word	_Label_459
	.word	-328
	.word	4
	.word	_Label_460
	.word	-332
	.word	4
	.word	_Label_461
	.word	-336
	.word	4
	.word	_Label_462
	.word	-340
	.word	4
	.word	_Label_463
	.word	-344
	.word	4
	.word	_Label_464
	.word	-348
	.word	4
	.word	_Label_465
	.word	-352
	.word	4
	.word	0
_Label_378:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printExample\0"
	.align
_Label_379:
	.ascii	"Pself\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_368\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_367\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_366\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_402:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_354\0"
	.align
_Label_404:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_405:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_406:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_408:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_409:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_410:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_412:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_342\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_417:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_418:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_419:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_420:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_323\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_309\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_305\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_455:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_456:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
_Label_457:
	.byte	'?'
	.ascii	"_temp_300\0"
	.align
_Label_458:
	.byte	'?'
	.ascii	"_temp_299\0"
	.align
_Label_459:
	.byte	'?'
	.ascii	"_temp_298\0"
	.align
_Label_460:
	.byte	'?'
	.ascii	"_temp_297\0"
	.align
_Label_461:
	.byte	'?'
	.ascii	"_temp_296\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
! 
! ===============  METHOD printBarberStatus  ===============
! 
_Method_P_Main_SleepingBarber_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_5,r1
	push	r1
	mov	7,r1
_Label_553:
	push	r0
	sub	r1,1,r1
	bne	_Label_553
	mov	271,r13		! source line 271
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_466) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printChairs
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! IF STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_470) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_471 = _temp_470 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: _temp_469 = *_temp_471  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_469 != 1 then goto _Label_468		(int)
	load	[r14+-28],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_468
!	jmp	_Label_467
_Label_467:
! THEN...
	mov	274,r13		! source line 274
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_472 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_472  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	274,r13		! source line 274
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_473
_Label_468:
! ELSE...
	mov	276,r13		! source line 276
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_474 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_474  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	276,r13		! source line 276
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_473:
! RETURN STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_5:
	.word	_sourceFileName
	.word	_Label_475
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_476
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_477
	.word	-12
	.word	4
	.word	_Label_478
	.word	-16
	.word	4
	.word	_Label_479
	.word	-20
	.word	4
	.word	_Label_480
	.word	-24
	.word	4
	.word	_Label_481
	.word	-28
	.word	4
	.word	_Label_482
	.word	-32
	.word	4
	.word	0
_Label_475:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printBarberStatus\0"
	.align
_Label_476:
	.ascii	"Pself\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_474\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
! 
! ===============  METHOD printCustomerStatus  ===============
! 
_Method_P_Main_SleepingBarber_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_6,r1
	push	r1
	mov	11,r1
_Label_554:
	push	r0
	sub	r1,1,r1
	bne	_Label_554
	mov	280,r13		! source line 280
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	282,r13		! source line 282
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_483) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printChairs
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! CALL STATEMENT...
!   _temp_484 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_484  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	283,r13		! source line 283
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	284,r13		! source line 284
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_489 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_490 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_489  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_485:
!   Perform the FOR-LOOP termination test
!   if i > _temp_490 then goto _Label_488		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_488
_Label_486:
	mov	284,r13		! source line 284
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	285,r13		! source line 285
	mov	"\0\0IF",r10
!   if i == customer then goto _Label_492		(int)
	load	[r14+-48],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_492
!	jmp	_Label_491
_Label_491:
! THEN...
	mov	286,r13		! source line 286
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	286,r13		! source line 286
	mov	"\0\0CE",r10
	call	printChar
	jmp	_Label_493
_Label_492:
! ELSE...
	mov	288,r13		! source line 288
	mov	"\0\0EL",r10
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_496) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_497 = _temp_496 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: _temp_495 = *_temp_497  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_495) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_495 [i ] into _temp_498
!     make sure index expr is >= 0
	load	[r14+-48],r2
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
	store	r2,[r14+-16]
!   Data Move: _temp_494 = *_temp_498  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Prepare Argument: offset=8  value=_temp_494  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	288,r13		! source line 288
	mov	"\0\0CE",r10
	call	printChar
! END IF...
_Label_493:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=9  sizeInBytes=1
	mov	9,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	290,r13		! source line 290
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_487:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_485
! END FOR
_Label_488:
! CALL STATEMENT...
!   Call the function
	mov	292,r13		! source line 292
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_6:
	.word	_sourceFileName
	.word	_Label_499
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_500
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_501
	.word	12
	.word	4
	.word	_Label_502
	.word	-16
	.word	4
	.word	_Label_503
	.word	-20
	.word	4
	.word	_Label_504
	.word	-24
	.word	4
	.word	_Label_505
	.word	-28
	.word	4
	.word	_Label_506
	.word	-9
	.word	1
	.word	_Label_507
	.word	-32
	.word	4
	.word	_Label_508
	.word	-36
	.word	4
	.word	_Label_509
	.word	-40
	.word	4
	.word	_Label_510
	.word	-44
	.word	4
	.word	_Label_511
	.word	-48
	.word	4
	.word	0
_Label_499:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printCustomerStatus\0"
	.align
_Label_500:
	.ascii	"Pself\0"
	.align
_Label_501:
	.byte	'I'
	.ascii	"customer\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_506:
	.byte	'C'
	.ascii	"_temp_494\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_483\0"
	.align
_Label_511:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD printChairs  ===============
! 
_Method_P_Main_SleepingBarber_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_7,r1
	push	r1
	mov	11,r1
_Label_555:
	push	r0
	sub	r1,1,r1
	bne	_Label_555
	mov	295,r13		! source line 295
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_518) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_519 = _temp_518 + 12
	load	[r14+-36],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Data Move: _temp_517 = *_temp_519  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_516 = _temp_517 + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_520 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_516  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-48]
_Label_512:
!   Perform the FOR-LOOP termination test
!   if i > _temp_520 then goto _Label_515		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_515
_Label_513:
	mov	297,r13		! source line 297
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=88  sizeInBytes=1
	mov	88,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	298,r13		! source line 298
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_514:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_512
! END FOR
_Label_515:
! FOR STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_525 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_527) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_528 = _temp_527 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_526 = *_temp_528  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_525  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-48]
_Label_521:
!   Perform the FOR-LOOP termination test
!   if i > _temp_526 then goto _Label_524		
	load	[r14+-48],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_524
_Label_522:
	mov	300,r13		! source line 300
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=45  sizeInBytes=1
	mov	45,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	301,r13		! source line 301
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_523:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_521
! END FOR
_Label_524:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	303,r13		! source line 303
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_7:
	.word	_sourceFileName
	.word	_Label_529
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_530
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_531
	.word	-12
	.word	4
	.word	_Label_532
	.word	-16
	.word	4
	.word	_Label_533
	.word	-20
	.word	4
	.word	_Label_534
	.word	-24
	.word	4
	.word	_Label_535
	.word	-28
	.word	4
	.word	_Label_536
	.word	-32
	.word	4
	.word	_Label_537
	.word	-36
	.word	4
	.word	_Label_538
	.word	-40
	.word	4
	.word	_Label_539
	.word	-44
	.word	4
	.word	_Label_540
	.word	-48
	.word	4
	.word	0
_Label_529:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printChairs\0"
	.align
_Label_530:
	.ascii	"Pself\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_518\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_517\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
_Label_540:
	.byte	'I'
	.ascii	"i\0"
	.align
