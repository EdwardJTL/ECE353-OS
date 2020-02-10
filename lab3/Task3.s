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
	.word	23			! length
	.ascii	"Needs to be implemented"
	.align
_StringConst_1:
	.word	8			! length
	.ascii	"requests"
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
	be	_Label_9		! .
	ret				! .
_Label_9:				! .
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
	be	_Label_10
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
_Label_10:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_11
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_11
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_11
! Make sure _P_Synch_ has hash value 0x8e356f6d (decimal -1909100691)
	set	_packageName,r2
	set	0x8e356f6d,r3
	call	_CheckVersion_P_Synch_
	.import	_CheckVersion_P_Synch_
	cmp	r1,0
	bne	_Label_11
_Label_11:
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
	call	_function_8_gamingparlor
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
	.word	_Label_12
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_12:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION gamingparlor  ===============
! 
_function_8_gamingparlor:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_8_gamingparlor,r1
	push	r1
	mov	3,r1
_Label_108:
	push	r0
	sub	r1,1,r1
	bne	_Label_108
	mov	23,r13		! source line 23
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_13 = &_Global_GP
	set	_Global_GP,r1
	store	r1,[r14+-16]
!   Send message Init
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_14 = &_Global_GP
	set	_Global_GP,r1
	store	r1,[r14+-12]
!   Send message PrintExample
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_8_gamingparlor:
	.word	_sourceFileName
	.word	_Label_15
	.word	0		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_16
	.word	-12
	.word	4
	.word	_Label_17
	.word	-16
	.word	4
	.word	0
_Label_15:
	.ascii	"gamingparlor\0"
	.align
_Label_16:
	.byte	'?'
	.ascii	"_temp_14\0"
	.align
_Label_17:
	.byte	'?'
	.ascii	"_temp_13\0"
	.align
! 
! ===============  CLASS GamingParlor  ===============
! 
! Dispatch Table:
! 
_P_Main_GamingParlor:
	.word	_Label_18
	jmp	_Method_P_Main_GamingParlor_1	! 4:	Init
	jmp	_Method_P_Main_GamingParlor_2	! 8:	Request
	jmp	_Method_P_Main_GamingParlor_3	! 12:	Return
	jmp	_Method_P_Main_GamingParlor_4	! 16:	PrintExample
	jmp	_Method_P_Main_GamingParlor_5	! 20:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_18:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_19
	.word	_sourceFileName
	.word	16		! line number
	.word	8		! size of instances, in bytes
	.word	_P_Main_GamingParlor
	.word	_P_System_Object
	.word	0
_Label_19:
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
	mov	36,r13		! source line 36
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	37,r13		! source line 37
	mov	"\0\0AS",r10
!   dice_available = 8		(4 bytes)
	mov	8,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	37,r13		! source line 37
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
	.word	_Label_20
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_21
	.word	4		! size of self
	.word	8		! offset of self
	.word	0
_Label_20:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_21:
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
	mov	9,r1
_Label_109:
	push	r0
	sub	r1,1,r1
	bne	_Label_109
	mov	40,r13		! source line 40
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	41,r13		! source line 41
	mov	"\0\0SE",r10
!   _temp_22 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-28]
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_23) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=name  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_22  sizeInBytes=4
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
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_24:
!   if dice_available >= nr_of_dice then goto _Label_26		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_26
!	jmp	_Label_25
_Label_25:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_27 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_27  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END WHILE...
	jmp	_Label_24
_Label_26:
! ASSIGNMENT STATEMENT...
	mov	45,r13		! source line 45
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
	mov	46,r13		! source line 46
	mov	"\0\0SE",r10
!   _temp_28 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_29) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=name  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_28  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nr_of_dice  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Send message Print
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	46,r13		! source line 46
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_2:
	.word	_sourceFileName
	.word	_Label_30
	.word	12		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_31
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_32
	.word	12
	.word	1
	.word	_Label_33
	.word	16
	.word	4
	.word	_Label_34
	.word	-12
	.word	4
	.word	_Label_35
	.word	-16
	.word	4
	.word	_Label_36
	.word	-20
	.word	4
	.word	_Label_37
	.word	-24
	.word	4
	.word	_Label_38
	.word	-28
	.word	4
	.word	0
_Label_30:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Request\0"
	.align
_Label_31:
	.ascii	"Pself\0"
	.align
_Label_32:
	.byte	'C'
	.ascii	"name\0"
	.align
_Label_33:
	.byte	'I'
	.ascii	"nr_of_dice\0"
	.align
_Label_34:
	.byte	'?'
	.ascii	"_temp_29\0"
	.align
_Label_35:
	.byte	'?'
	.ascii	"_temp_28\0"
	.align
_Label_36:
	.byte	'?'
	.ascii	"_temp_27\0"
	.align
_Label_37:
	.byte	'?'
	.ascii	"_temp_23\0"
	.align
_Label_38:
	.byte	'?'
	.ascii	"_temp_22\0"
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
	mov	6,r1
_Label_110:
	push	r0
	sub	r1,1,r1
	bne	_Label_110
	mov	49,r13		! source line 49
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	50,r13		! source line 50
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
	mov	51,r13		! source line 51
	mov	"\0\0SE",r10
!   _temp_39 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_40) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=name  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_39  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=nr_of_dice  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+12]
!   Send message Print
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	51,r13		! source line 51
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_GamingParlor_3:
	.word	_sourceFileName
	.word	_Label_41
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_42
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_43
	.word	12
	.word	1
	.word	_Label_44
	.word	16
	.word	4
	.word	_Label_45
	.word	-12
	.word	4
	.word	_Label_46
	.word	-16
	.word	4
	.word	0
_Label_41:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Return\0"
	.align
_Label_42:
	.ascii	"Pself\0"
	.align
_Label_43:
	.byte	'C'
	.ascii	"name\0"
	.align
_Label_44:
	.byte	'I'
	.ascii	"nr_of_dice\0"
	.align
_Label_45:
	.byte	'?'
	.ascii	"_temp_40\0"
	.align
_Label_46:
	.byte	'?'
	.ascii	"_temp_39\0"
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
_Label_111:
	push	r0
	sub	r1,1,r1
	bne	_Label_111
	mov	54,r13		! source line 54
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	60,r13		! source line 60
	mov	"\0\0SE",r10
!   _temp_48 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-88]
!   Move address of _temp_48 [0 ] into _temp_49
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
!   Data Move: _temp_47 = *_temp_49  (sizeInBytes=1)
	load	[r14+-84],r1
	loadb	[r1],r1
	storeb	r1,[r14+-14]
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_50) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_47  sizeInBytes=1
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
	mov	62,r13		! source line 62
	mov	"\0\0SE",r10
!   _temp_52 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-76]
!   Move address of _temp_52 [1 ] into _temp_53
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
!   Data Move: _temp_51 = *_temp_53  (sizeInBytes=1)
	load	[r14+-72],r1
	loadb	[r1],r1
	storeb	r1,[r14+-13]
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_54) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_51  sizeInBytes=1
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
	mov	64,r13		! source line 64
	mov	"\0\0SE",r10
!   _temp_56 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-64]
!   Move address of _temp_56 [1 ] into _temp_57
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
!   Data Move: _temp_55 = *_temp_57  (sizeInBytes=1)
	load	[r14+-60],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
	load	[r14+8],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_58) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_55  sizeInBytes=1
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
	mov	66,r13		! source line 66
	mov	"\0\0SE",r10
!   _temp_60 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-52]
!   Move address of _temp_60 [0 ] into _temp_61
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
!   Data Move: _temp_59 = *_temp_61  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_62) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_59  sizeInBytes=1
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
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   _temp_64 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-40]
!   Move address of _temp_64 [2 ] into _temp_65
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
!   Data Move: _temp_63 = *_temp_65  (sizeInBytes=1)
	load	[r14+-36],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_66) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_63  sizeInBytes=1
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
	mov	70,r13		! source line 70
	mov	"\0\0SE",r10
!   _temp_68 = &_P_Main_group_names
	set	_P_Main_group_names,r1
	store	r1,[r14+-28]
!   Move address of _temp_68 [2 ] into _temp_69
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
!   Data Move: _temp_67 = *_temp_69  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_70) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_67  sizeInBytes=1
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
	mov	70,r13		! source line 70
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
	.word	_Label_71
	.word	4		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_72
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_73
	.word	-20
	.word	4
	.word	_Label_74
	.word	-24
	.word	4
	.word	_Label_75
	.word	-28
	.word	4
	.word	_Label_76
	.word	-9
	.word	1
	.word	_Label_77
	.word	-32
	.word	4
	.word	_Label_78
	.word	-36
	.word	4
	.word	_Label_79
	.word	-40
	.word	4
	.word	_Label_80
	.word	-10
	.word	1
	.word	_Label_81
	.word	-44
	.word	4
	.word	_Label_82
	.word	-48
	.word	4
	.word	_Label_83
	.word	-52
	.word	4
	.word	_Label_84
	.word	-11
	.word	1
	.word	_Label_85
	.word	-56
	.word	4
	.word	_Label_86
	.word	-60
	.word	4
	.word	_Label_87
	.word	-64
	.word	4
	.word	_Label_88
	.word	-12
	.word	1
	.word	_Label_89
	.word	-68
	.word	4
	.word	_Label_90
	.word	-72
	.word	4
	.word	_Label_91
	.word	-76
	.word	4
	.word	_Label_92
	.word	-13
	.word	1
	.word	_Label_93
	.word	-80
	.word	4
	.word	_Label_94
	.word	-84
	.word	4
	.word	_Label_95
	.word	-88
	.word	4
	.word	_Label_96
	.word	-14
	.word	1
	.word	0
_Label_71:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"PrintExample\0"
	.align
_Label_72:
	.ascii	"Pself\0"
	.align
_Label_73:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_74:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_75:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_76:
	.byte	'C'
	.ascii	"_temp_67\0"
	.align
_Label_77:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_78:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_79:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_80:
	.byte	'C'
	.ascii	"_temp_63\0"
	.align
_Label_81:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_82:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_83:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_84:
	.byte	'C'
	.ascii	"_temp_59\0"
	.align
_Label_85:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_86:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_87:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_88:
	.byte	'C'
	.ascii	"_temp_55\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_54\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_53\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_52\0"
	.align
_Label_92:
	.byte	'C'
	.ascii	"_temp_51\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_50\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
_Label_96:
	.byte	'C'
	.ascii	"_temp_47\0"
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
_Label_112:
	push	r0
	sub	r1,1,r1
	bne	_Label_112
	mov	74,r13		! source line 74
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=1
	loadb	[r14+12],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	79,r13		! source line 79
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   _temp_97 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_97  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	81,r13		! source line 81
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_98 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_98  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	82,r13		! source line 82
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nr_of_dice  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	83,r13		! source line 83
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	84,r13		! source line 84
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_99 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_99  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	85,r13		! source line 85
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=dice_available  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+4],r1
	store	r1,[r15+0]
!   Call the function
	mov	86,r13		! source line 86
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	87,r13		! source line 87
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	87,r13		! source line 87
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
	.word	_Label_100
	.word	16		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_101
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_102
	.word	12
	.word	1
	.word	_Label_103
	.word	16
	.word	4
	.word	_Label_104
	.word	20
	.word	4
	.word	_Label_105
	.word	-12
	.word	4
	.word	_Label_106
	.word	-16
	.word	4
	.word	_Label_107
	.word	-20
	.word	4
	.word	0
_Label_100:
	.ascii	"GamingParlor"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_101:
	.ascii	"Pself\0"
	.align
_Label_102:
	.byte	'C'
	.ascii	"name\0"
	.align
_Label_103:
	.byte	'P'
	.ascii	"str\0"
	.align
_Label_104:
	.byte	'I'
	.ascii	"nr_of_dice\0"
	.align
_Label_105:
	.byte	'?'
	.ascii	"_temp_99\0"
	.align
_Label_106:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
_Label_107:
	.byte	'?'
	.ascii	"_temp_97\0"
	.align
