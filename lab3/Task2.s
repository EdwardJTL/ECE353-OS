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
	.export	_P_Main_SleepingBarber
	.export	_Method_P_Main_SleepingBarber_1
	.export	_Method_P_Main_SleepingBarber_2
	.export	_Method_P_Main_SleepingBarber_3
	.export	_Method_P_Main_SleepingBarber_4
	.export	_Method_P_Main_SleepingBarber_5
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
	.align
! String constants
_StringConst_4:
	.word	7			! length
	.ascii	"      \t"
	.align
_StringConst_3:
	.word	4			! length
	.ascii	"End\n"
	.align
_StringConst_2:
	.word	6			! length
	.ascii	"Start\n"
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
	set	0x9ec8daed,r3		! .  hashVal = -1631003923
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_6		! .
	ret				! .
_Label_6:				! .
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
	set	0x9ec8daed,r4		! myHashVal = -1631003923
	cmp	r3,r4
	be	_Label_7
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
_Label_7:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_8
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_8
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_8
! Make sure _P_Synch_ has hash value 0x8e356f6d (decimal -1909100691)
	set	_packageName,r2
	set	0x8e356f6d,r3
	call	_CheckVersion_P_Synch_
	.import	_CheckVersion_P_Synch_
	cmp	r1,0
	bne	_Label_8
_Label_8:
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
	call	_function_5_sleepingbarber
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
	.word	_Label_9
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_9:
	.ascii	"main\0"
	.align
! 
! ===============  FUNCTION sleepingbarber  ===============
! 
_function_5_sleepingbarber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_5_sleepingbarber,r1
	push	r1
	mov	15,r1
_Label_308:
	push	r0
	sub	r1,1,r1
	bne	_Label_308
	mov	46,r13		! source line 46
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	51,r13		! source line 51
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_14 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_15 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_14  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-52]
_Label_10:
!   Perform the FOR-LOOP termination test
!   if i > _temp_15 then goto _Label_13		
	load	[r14+-52],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_13
_Label_11:
	mov	51,r13		! source line 51
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	52,r13		! source line 52
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_12:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_10
! END FOR
_Label_13:
! CALL STATEMENT...
!   _temp_16 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_16  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	54,r13		! source line 54
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	55,r13		! source line 55
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_21 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_22 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_21  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-52]
_Label_17:
!   Perform the FOR-LOOP termination test
!   if i > _temp_22 then goto _Label_20		
	load	[r14+-52],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_20
_Label_18:
	mov	55,r13		! source line 55
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_23 = i + 1		(int)
	load	[r14+-52],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_23  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	56,r13		! source line 56
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=9  sizeInBytes=1
	mov	9,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	57,r13		! source line 57
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_19:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_17
! END FOR
_Label_20:
! CALL STATEMENT...
!   Call the function
	mov	59,r13		! source line 59
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	61,r13		! source line 61
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
	mov	62,r13		! source line 62
	mov	"\0\0SE",r10
!   _temp_25 = &_Global_cStatus
	set	_Global_cStatus,r1
	store	r1,[r14+-20]
!   _temp_26 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_Global_bStatus  sizeInBytes=4
	set	_Global_bStatus,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_25  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+12]
!   Send message Init
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0SE",r10
!   _temp_27 = &_Global_sb
	set	_Global_sb,r1
	store	r1,[r14+-12]
!   Send message printExample
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_5_sleepingbarber:
	.word	_sourceFileName
	.word	_Label_28
	.word	0		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_29
	.word	-12
	.word	4
	.word	_Label_30
	.word	-16
	.word	4
	.word	_Label_31
	.word	-20
	.word	4
	.word	_Label_32
	.word	-24
	.word	4
	.word	_Label_33
	.word	-28
	.word	4
	.word	_Label_34
	.word	-32
	.word	4
	.word	_Label_35
	.word	-36
	.word	4
	.word	_Label_36
	.word	-40
	.word	4
	.word	_Label_37
	.word	-44
	.word	4
	.word	_Label_38
	.word	-48
	.word	4
	.word	_Label_39
	.word	-52
	.word	4
	.word	0
_Label_28:
	.ascii	"sleepingbarber\0"
	.align
_Label_29:
	.byte	'?'
	.ascii	"_temp_27\0"
	.align
_Label_30:
	.byte	'?'
	.ascii	"_temp_26\0"
	.align
_Label_31:
	.byte	'?'
	.ascii	"_temp_25\0"
	.align
_Label_32:
	.byte	'?'
	.ascii	"_temp_24\0"
	.align
_Label_33:
	.byte	'?'
	.ascii	"_temp_23\0"
	.align
_Label_34:
	.byte	'?'
	.ascii	"_temp_22\0"
	.align
_Label_35:
	.byte	'?'
	.ascii	"_temp_21\0"
	.align
_Label_36:
	.byte	'?'
	.ascii	"_temp_16\0"
	.align
_Label_37:
	.byte	'?'
	.ascii	"_temp_15\0"
	.align
_Label_38:
	.byte	'?'
	.ascii	"_temp_14\0"
	.align
_Label_39:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  CLASS SleepingBarber  ===============
! 
! Dispatch Table:
! 
_P_Main_SleepingBarber:
	.word	_Label_40
	jmp	_Method_P_Main_SleepingBarber_1	! 4:	Init
	jmp	_Method_P_Main_SleepingBarber_2	! 8:	printExample
	jmp	_Method_P_Main_SleepingBarber_3	! 12:	printBarberStatus
	jmp	_Method_P_Main_SleepingBarber_4	! 16:	printCustomerStatus
	jmp	_Method_P_Main_SleepingBarber_5	! 20:	printChairs
	.word	0
! 
! Class descriptor:
! 
_Label_40:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_41
	.word	_sourceFileName
	.word	12		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Main_SleepingBarber
	.word	_P_System_Object
	.word	0
_Label_41:
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
_Label_309:
	push	r0
	sub	r1,1,r1
	bne	_Label_309
	mov	74,r13		! source line 74
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_42) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_43 = _temp_42 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_43 = bStat  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-28],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	76,r13		! source line 76
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_44) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_45 = _temp_44 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_45 = cStat  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	77,r13		! source line 77
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_46) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_47 = _temp_46 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_47 = numOfChair  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+-12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	77,r13		! source line 77
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
	.word	_Label_48
	.word	16		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_49
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_50
	.word	12
	.word	4
	.word	_Label_51
	.word	16
	.word	4
	.word	_Label_52
	.word	20
	.word	4
	.word	_Label_53
	.word	-12
	.word	4
	.word	_Label_54
	.word	-16
	.word	4
	.word	_Label_55
	.word	-20
	.word	4
	.word	_Label_56
	.word	-24
	.word	4
	.word	_Label_57
	.word	-28
	.word	4
	.word	_Label_58
	.word	-32
	.word	4
	.word	0
_Label_48:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_49:
	.ascii	"Pself\0"
	.align
_Label_50:
	.byte	'I'
	.ascii	"bStat\0"
	.align
_Label_51:
	.byte	'P'
	.ascii	"cStat\0"
	.align
_Label_52:
	.byte	'I'
	.ascii	"numOfChair\0"
	.align
_Label_53:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
_Label_54:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
_Label_55:
	.byte	'?'
	.ascii	"_temp_45\0"
	.align
_Label_56:
	.byte	'?'
	.ascii	"_temp_44\0"
	.align
_Label_57:
	.byte	'?'
	.ascii	"_temp_43\0"
	.align
_Label_58:
	.byte	'?'
	.ascii	"_temp_42\0"
	.align
! 
! ===============  METHOD printExample  ===============
! 
_Method_P_Main_SleepingBarber_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_2,r1
	push	r1
	mov	88,r1
_Label_310:
	push	r0
	sub	r1,1,r1
	bne	_Label_310
	mov	80,r13		! source line 80
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-348]
!   if intIsZero (_temp_60) then goto _runtimeErrorNullPointer
	load	[r14+-348],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_61 = _temp_60 + 8
	load	[r14+-348],r1
	add	r1,8,r1
	store	r1,[r14+-344]
!   Data Move: _temp_59 = *_temp_61  (sizeInBytes=4)
	load	[r14+-344],r1
	load	[r1],r1
	store	r1,[r14+-352]
!   if intIsZero (_temp_59) then goto _runtimeErrorNullPointer
	load	[r14+-352],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_59 [0 ] into _temp_62
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
!   Data Move: *_temp_62 = 69  (sizeInBytes=1)
	mov	69,r1
	load	[r14+-340],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-336]
!   if intIsZero (_temp_63) then goto _runtimeErrorNullPointer
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
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-328]
!   if intIsZero (_temp_65) then goto _runtimeErrorNullPointer
	load	[r14+-328],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_66 = _temp_65 + 8
	load	[r14+-328],r1
	add	r1,8,r1
	store	r1,[r14+-324]
!   Data Move: _temp_64 = *_temp_66  (sizeInBytes=4)
	load	[r14+-324],r1
	load	[r1],r1
	store	r1,[r14+-332]
!   if intIsZero (_temp_64) then goto _runtimeErrorNullPointer
	load	[r14+-332],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_64 [0 ] into _temp_67
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
!   Data Move: *_temp_67 = 83  (sizeInBytes=1)
	mov	83,r1
	load	[r14+-320],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-316]
!   if intIsZero (_temp_68) then goto _runtimeErrorNullPointer
	load	[r14+-316],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_69 = _temp_68 + 12
	load	[r14+-316],r1
	add	r1,12,r1
	store	r1,[r14+-312]
	load	[r14+8],r1
	store	r1,[r14+-300]
!   if intIsZero (_temp_72) then goto _runtimeErrorNullPointer
	load	[r14+-300],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_73 = _temp_72 + 12
	load	[r14+-300],r1
	add	r1,12,r1
	store	r1,[r14+-296]
!   Data Move: _temp_71 = *_temp_73  (sizeInBytes=4)
	load	[r14+-296],r1
	load	[r1],r1
	store	r1,[r14+-304]
!   _temp_70 = _temp_71 - 1		(int)
	load	[r14+-304],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-308]
!   Data Move: *_temp_69 = _temp_70  (sizeInBytes=4)
	load	[r14+-308],r1
	load	[r14+-312],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-292]
!   if intIsZero (_temp_74) then goto _runtimeErrorNullPointer
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
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	95,r13		! source line 95
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-284]
!   if intIsZero (_temp_76) then goto _runtimeErrorNullPointer
	load	[r14+-284],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_77 = _temp_76 + 8
	load	[r14+-284],r1
	add	r1,8,r1
	store	r1,[r14+-280]
!   Data Move: _temp_75 = *_temp_77  (sizeInBytes=4)
	load	[r14+-280],r1
	load	[r1],r1
	store	r1,[r14+-288]
!   if intIsZero (_temp_75) then goto _runtimeErrorNullPointer
	load	[r14+-288],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_75 [1 ] into _temp_78
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
!   Data Move: *_temp_78 = 69  (sizeInBytes=1)
	mov	69,r1
	load	[r14+-276],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	96,r13		! source line 96
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-272]
!   if intIsZero (_temp_79) then goto _runtimeErrorNullPointer
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
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-264]
!   if intIsZero (_temp_81) then goto _runtimeErrorNullPointer
	load	[r14+-264],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_82 = _temp_81 + 8
	load	[r14+-264],r1
	add	r1,8,r1
	store	r1,[r14+-260]
!   Data Move: _temp_80 = *_temp_82  (sizeInBytes=4)
	load	[r14+-260],r1
	load	[r1],r1
	store	r1,[r14+-268]
!   if intIsZero (_temp_80) then goto _runtimeErrorNullPointer
	load	[r14+-268],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_80 [1 ] into _temp_83
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
!   Data Move: *_temp_83 = 83  (sizeInBytes=1)
	mov	83,r1
	load	[r14+-256],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	100,r13		! source line 100
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-252]
!   if intIsZero (_temp_84) then goto _runtimeErrorNullPointer
	load	[r14+-252],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_85 = _temp_84 + 12
	load	[r14+-252],r1
	add	r1,12,r1
	store	r1,[r14+-248]
	load	[r14+8],r1
	store	r1,[r14+-236]
!   if intIsZero (_temp_88) then goto _runtimeErrorNullPointer
	load	[r14+-236],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_89 = _temp_88 + 12
	load	[r14+-236],r1
	add	r1,12,r1
	store	r1,[r14+-232]
!   Data Move: _temp_87 = *_temp_89  (sizeInBytes=4)
	load	[r14+-232],r1
	load	[r1],r1
	store	r1,[r14+-240]
!   _temp_86 = _temp_87 - 1		(int)
	load	[r14+-240],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-244]
!   Data Move: *_temp_85 = _temp_86  (sizeInBytes=4)
	load	[r14+-244],r1
	load	[r14+-248],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	101,r13		! source line 101
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-228]
!   if intIsZero (_temp_90) then goto _runtimeErrorNullPointer
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
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-224]
!   if intIsZero (_temp_91) then goto _runtimeErrorNullPointer
	load	[r14+-224],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_92 = _temp_91 + 4
	load	[r14+-224],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Data Move: *_temp_92 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-220],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-216]
!   if intIsZero (_temp_93) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_94 = _temp_93 + 12
	load	[r14+-216],r1
	add	r1,12,r1
	store	r1,[r14+-212]
	load	[r14+8],r1
	store	r1,[r14+-200]
!   if intIsZero (_temp_97) then goto _runtimeErrorNullPointer
	load	[r14+-200],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_98 = _temp_97 + 12
	load	[r14+-200],r1
	add	r1,12,r1
	store	r1,[r14+-196]
!   Data Move: _temp_96 = *_temp_98  (sizeInBytes=4)
	load	[r14+-196],r1
	load	[r1],r1
	store	r1,[r14+-204]
!   _temp_95 = _temp_96 + 1		(int)
	load	[r14+-204],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-208]
!   Data Move: *_temp_94 = _temp_95  (sizeInBytes=4)
	load	[r14+-208],r1
	load	[r14+-212],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_99) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_101) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_102 = _temp_101 + 8
	load	[r14+-184],r1
	add	r1,8,r1
	store	r1,[r14+-180]
!   Data Move: _temp_100 = *_temp_102  (sizeInBytes=4)
	load	[r14+-180],r1
	load	[r1],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_100) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_100 [0 ] into _temp_103
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
!   Data Move: *_temp_103 = 66  (sizeInBytes=1)
	mov	66,r1
	load	[r14+-176],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	110,r13		! source line 110
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-172]
!   if intIsZero (_temp_104) then goto _runtimeErrorNullPointer
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
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-168]
!   if intIsZero (_temp_105) then goto _runtimeErrorNullPointer
	load	[r14+-168],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_106 = _temp_105 + 4
	load	[r14+-168],r1
	add	r1,4,r1
	store	r1,[r14+-164]
!   Data Move: *_temp_106 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-164],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	114,r13		! source line 114
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-160]
!   if intIsZero (_temp_107) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-160],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-152]
!   if intIsZero (_temp_109) then goto _runtimeErrorNullPointer
	load	[r14+-152],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_110 = _temp_109 + 8
	load	[r14+-152],r1
	add	r1,8,r1
	store	r1,[r14+-148]
!   Data Move: _temp_108 = *_temp_110  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r1],r1
	store	r1,[r14+-156]
!   if intIsZero (_temp_108) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_108 [0 ] into _temp_111
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
!   Data Move: *_temp_111 = 70  (sizeInBytes=1)
	mov	70,r1
	load	[r14+-144],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-140]
!   if intIsZero (_temp_112) then goto _runtimeErrorNullPointer
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
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-132]
!   if intIsZero (_temp_114) then goto _runtimeErrorNullPointer
	load	[r14+-132],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_115 = _temp_114 + 8
	load	[r14+-132],r1
	add	r1,8,r1
	store	r1,[r14+-128]
!   Data Move: _temp_113 = *_temp_115  (sizeInBytes=4)
	load	[r14+-128],r1
	load	[r1],r1
	store	r1,[r14+-136]
!   if intIsZero (_temp_113) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_113 [0 ] into _temp_116
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
!   Data Move: *_temp_116 = 76  (sizeInBytes=1)
	mov	76,r1
	load	[r14+-124],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	122,r13		! source line 122
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-120]
!   if intIsZero (_temp_117) then goto _runtimeErrorNullPointer
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
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-116]
!   if intIsZero (_temp_118) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_119 = _temp_118 + 4
	load	[r14+-116],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Data Move: *_temp_119 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-112],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_120) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_121 = _temp_120 + 12
	load	[r14+-108],r1
	add	r1,12,r1
	store	r1,[r14+-104]
	load	[r14+8],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_124) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_125 = _temp_124 + 12
	load	[r14+-92],r1
	add	r1,12,r1
	store	r1,[r14+-88]
!   Data Move: _temp_123 = *_temp_125  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   _temp_122 = _temp_123 + 1		(int)
	load	[r14+-96],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
!   Data Move: *_temp_121 = _temp_122  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r14+-104],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	127,r13		! source line 127
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (_temp_126) then goto _runtimeErrorNullPointer
	load	[r14+-84],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	130,r13		! source line 130
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_128) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_129 = _temp_128 + 8
	load	[r14+-76],r1
	add	r1,8,r1
	store	r1,[r14+-72]
!   Data Move: _temp_127 = *_temp_129  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_127) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_127 [1 ] into _temp_130
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
!   Data Move: *_temp_130 = 66  (sizeInBytes=1)
	mov	66,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_131) then goto _runtimeErrorNullPointer
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
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_132) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_133 = _temp_132 + 4
	load	[r14+-60],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_133 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-56],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_134) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printBarberStatus
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_136) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_137 = _temp_136 + 8
	load	[r14+-44],r1
	add	r1,8,r1
	store	r1,[r14+-40]
!   Data Move: _temp_135 = *_temp_137  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   if intIsZero (_temp_135) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_135 [1 ] into _temp_138
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
!   Data Move: *_temp_138 = 70  (sizeInBytes=1)
	mov	70,r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	139,r13		! source line 139
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_139) then goto _runtimeErrorNullPointer
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
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	142,r13		! source line 142
	mov	"\0\0AS",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_141) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_142 = _temp_141 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: _temp_140 = *_temp_142  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_140) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_140 [1 ] into _temp_143
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
!   Data Move: *_temp_143 = 76  (sizeInBytes=1)
	mov	76,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_144) then goto _runtimeErrorNullPointer
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
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0RE",r10
	add	r15,356,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_2:
	.word	_sourceFileName
	.word	_Label_145
	.word	4		! total size of parameters
	.word	352		! frame size = 352
	.word	_Label_146
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_147
	.word	-12
	.word	4
	.word	_Label_148
	.word	-16
	.word	4
	.word	_Label_149
	.word	-20
	.word	4
	.word	_Label_150
	.word	-24
	.word	4
	.word	_Label_151
	.word	-28
	.word	4
	.word	_Label_152
	.word	-32
	.word	4
	.word	_Label_153
	.word	-36
	.word	4
	.word	_Label_154
	.word	-40
	.word	4
	.word	_Label_155
	.word	-44
	.word	4
	.word	_Label_156
	.word	-48
	.word	4
	.word	_Label_157
	.word	-52
	.word	4
	.word	_Label_158
	.word	-56
	.word	4
	.word	_Label_159
	.word	-60
	.word	4
	.word	_Label_160
	.word	-64
	.word	4
	.word	_Label_161
	.word	-68
	.word	4
	.word	_Label_162
	.word	-72
	.word	4
	.word	_Label_163
	.word	-76
	.word	4
	.word	_Label_164
	.word	-80
	.word	4
	.word	_Label_165
	.word	-84
	.word	4
	.word	_Label_166
	.word	-88
	.word	4
	.word	_Label_167
	.word	-92
	.word	4
	.word	_Label_168
	.word	-96
	.word	4
	.word	_Label_169
	.word	-100
	.word	4
	.word	_Label_170
	.word	-104
	.word	4
	.word	_Label_171
	.word	-108
	.word	4
	.word	_Label_172
	.word	-112
	.word	4
	.word	_Label_173
	.word	-116
	.word	4
	.word	_Label_174
	.word	-120
	.word	4
	.word	_Label_175
	.word	-124
	.word	4
	.word	_Label_176
	.word	-128
	.word	4
	.word	_Label_177
	.word	-132
	.word	4
	.word	_Label_178
	.word	-136
	.word	4
	.word	_Label_179
	.word	-140
	.word	4
	.word	_Label_180
	.word	-144
	.word	4
	.word	_Label_181
	.word	-148
	.word	4
	.word	_Label_182
	.word	-152
	.word	4
	.word	_Label_183
	.word	-156
	.word	4
	.word	_Label_184
	.word	-160
	.word	4
	.word	_Label_185
	.word	-164
	.word	4
	.word	_Label_186
	.word	-168
	.word	4
	.word	_Label_187
	.word	-172
	.word	4
	.word	_Label_188
	.word	-176
	.word	4
	.word	_Label_189
	.word	-180
	.word	4
	.word	_Label_190
	.word	-184
	.word	4
	.word	_Label_191
	.word	-188
	.word	4
	.word	_Label_192
	.word	-192
	.word	4
	.word	_Label_193
	.word	-196
	.word	4
	.word	_Label_194
	.word	-200
	.word	4
	.word	_Label_195
	.word	-204
	.word	4
	.word	_Label_196
	.word	-208
	.word	4
	.word	_Label_197
	.word	-212
	.word	4
	.word	_Label_198
	.word	-216
	.word	4
	.word	_Label_199
	.word	-220
	.word	4
	.word	_Label_200
	.word	-224
	.word	4
	.word	_Label_201
	.word	-228
	.word	4
	.word	_Label_202
	.word	-232
	.word	4
	.word	_Label_203
	.word	-236
	.word	4
	.word	_Label_204
	.word	-240
	.word	4
	.word	_Label_205
	.word	-244
	.word	4
	.word	_Label_206
	.word	-248
	.word	4
	.word	_Label_207
	.word	-252
	.word	4
	.word	_Label_208
	.word	-256
	.word	4
	.word	_Label_209
	.word	-260
	.word	4
	.word	_Label_210
	.word	-264
	.word	4
	.word	_Label_211
	.word	-268
	.word	4
	.word	_Label_212
	.word	-272
	.word	4
	.word	_Label_213
	.word	-276
	.word	4
	.word	_Label_214
	.word	-280
	.word	4
	.word	_Label_215
	.word	-284
	.word	4
	.word	_Label_216
	.word	-288
	.word	4
	.word	_Label_217
	.word	-292
	.word	4
	.word	_Label_218
	.word	-296
	.word	4
	.word	_Label_219
	.word	-300
	.word	4
	.word	_Label_220
	.word	-304
	.word	4
	.word	_Label_221
	.word	-308
	.word	4
	.word	_Label_222
	.word	-312
	.word	4
	.word	_Label_223
	.word	-316
	.word	4
	.word	_Label_224
	.word	-320
	.word	4
	.word	_Label_225
	.word	-324
	.word	4
	.word	_Label_226
	.word	-328
	.word	4
	.word	_Label_227
	.word	-332
	.word	4
	.word	_Label_228
	.word	-336
	.word	4
	.word	_Label_229
	.word	-340
	.word	4
	.word	_Label_230
	.word	-344
	.word	4
	.word	_Label_231
	.word	-348
	.word	4
	.word	_Label_232
	.word	-352
	.word	4
	.word	0
_Label_145:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printExample\0"
	.align
_Label_146:
	.ascii	"Pself\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_144\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_143\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_138\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_161:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_162:
	.byte	'?'
	.ascii	"_temp_129\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_127\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_125\0"
	.align
_Label_167:
	.byte	'?'
	.ascii	"_temp_124\0"
	.align
_Label_168:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_169:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_170:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_171:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_172:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_173:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_174:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_175:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_176:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
_Label_177:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_178:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_179:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_180:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_181:
	.byte	'?'
	.ascii	"_temp_110\0"
	.align
_Label_182:
	.byte	'?'
	.ascii	"_temp_109\0"
	.align
_Label_183:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_184:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_185:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_101\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_100\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_99\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_98\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_97\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_96\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_95\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_94\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_90\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_89\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_222:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_223:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_224:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_225:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_226:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_227:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_228:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_229:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_230:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_231:
	.byte	'?'
	.ascii	"_temp_60\0"
	.align
_Label_232:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
! 
! ===============  METHOD printBarberStatus  ===============
! 
_Method_P_Main_SleepingBarber_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_3,r1
	push	r1
	mov	7,r1
_Label_311:
	push	r0
	sub	r1,1,r1
	bne	_Label_311
	mov	147,r13		! source line 147
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_233) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printChairs
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_237) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_238 = _temp_237 + 4
	load	[r14+-24],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Data Move: _temp_236 = *_temp_238  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_236 != 1 then goto _Label_235		(int)
	load	[r14+-28],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_235
!	jmp	_Label_234
_Label_234:
! THEN...
	mov	150,r13		! source line 150
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_239 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_239  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	150,r13		! source line 150
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_240
_Label_235:
! ELSE...
	mov	152,r13		! source line 152
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_241 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_241  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	152,r13		! source line 152
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_240:
! RETURN STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_3:
	.word	_sourceFileName
	.word	_Label_242
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_243
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_244
	.word	-12
	.word	4
	.word	_Label_245
	.word	-16
	.word	4
	.word	_Label_246
	.word	-20
	.word	4
	.word	_Label_247
	.word	-24
	.word	4
	.word	_Label_248
	.word	-28
	.word	4
	.word	_Label_249
	.word	-32
	.word	4
	.word	0
_Label_242:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printBarberStatus\0"
	.align
_Label_243:
	.ascii	"Pself\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
! 
! ===============  METHOD printCustomerStatus  ===============
! 
_Method_P_Main_SleepingBarber_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_4,r1
	push	r1
	mov	11,r1
_Label_312:
	push	r0
	sub	r1,1,r1
	bne	_Label_312
	mov	156,r13		! source line 156
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	158,r13		! source line 158
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_250) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message printChairs
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   _temp_251 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_251  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	159,r13		! source line 159
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_256 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_257 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_256  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_252:
!   Perform the FOR-LOOP termination test
!   if i > _temp_257 then goto _Label_255		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_255
_Label_253:
	mov	160,r13		! source line 160
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0IF",r10
!   if i == customer then goto _Label_259		(int)
	load	[r14+-48],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_259
!	jmp	_Label_258
_Label_258:
! THEN...
	mov	162,r13		! source line 162
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	162,r13		! source line 162
	mov	"\0\0CE",r10
	call	printChar
	jmp	_Label_260
_Label_259:
! ELSE...
	mov	164,r13		! source line 164
	mov	"\0\0EL",r10
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_263) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_264 = _temp_263 + 8
	load	[r14+-24],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Data Move: _temp_262 = *_temp_264  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_262) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of _temp_262 [i ] into _temp_265
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
!   Data Move: _temp_261 = *_temp_265  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Prepare Argument: offset=8  value=_temp_261  sizeInBytes=1
	loadb	[r14+-9],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CE",r10
	call	printChar
! END IF...
_Label_260:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=9  sizeInBytes=1
	mov	9,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	166,r13		! source line 166
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_254:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_252
! END FOR
_Label_255:
! CALL STATEMENT...
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	168,r13		! source line 168
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_4:
	.word	_sourceFileName
	.word	_Label_266
	.word	8		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_267
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_268
	.word	12
	.word	4
	.word	_Label_269
	.word	-16
	.word	4
	.word	_Label_270
	.word	-20
	.word	4
	.word	_Label_271
	.word	-24
	.word	4
	.word	_Label_272
	.word	-28
	.word	4
	.word	_Label_273
	.word	-9
	.word	1
	.word	_Label_274
	.word	-32
	.word	4
	.word	_Label_275
	.word	-36
	.word	4
	.word	_Label_276
	.word	-40
	.word	4
	.word	_Label_277
	.word	-44
	.word	4
	.word	_Label_278
	.word	-48
	.word	4
	.word	0
_Label_266:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printCustomerStatus\0"
	.align
_Label_267:
	.ascii	"Pself\0"
	.align
_Label_268:
	.byte	'I'
	.ascii	"customer\0"
	.align
_Label_269:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_270:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_271:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_272:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_273:
	.byte	'C'
	.ascii	"_temp_261\0"
	.align
_Label_274:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_275:
	.byte	'?'
	.ascii	"_temp_256\0"
	.align
_Label_276:
	.byte	'?'
	.ascii	"_temp_251\0"
	.align
_Label_277:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_278:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD printChairs  ===============
! 
_Method_P_Main_SleepingBarber_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_SleepingBarber_5,r1
	push	r1
	mov	11,r1
_Label_313:
	push	r0
	sub	r1,1,r1
	bne	_Label_313
	mov	171,r13		! source line 171
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_285) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_286 = _temp_285 + 12
	load	[r14+-36],r1
	add	r1,12,r1
	store	r1,[r14+-32]
!   Data Move: _temp_284 = *_temp_286  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_283 = _temp_284 + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_287 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_283  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-48]
_Label_279:
!   Perform the FOR-LOOP termination test
!   if i > _temp_287 then goto _Label_282		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_282
_Label_280:
	mov	173,r13		! source line 173
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=88  sizeInBytes=1
	mov	88,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_281:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_279
! END FOR
_Label_282:
! FOR STATEMENT...
	mov	176,r13		! source line 176
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_292 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_294) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_295 = _temp_294 + 12
	load	[r14+-16],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_293 = *_temp_295  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_292  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-48]
_Label_288:
!   Perform the FOR-LOOP termination test
!   if i > _temp_293 then goto _Label_291		
	load	[r14+-48],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_291
_Label_289:
	mov	176,r13		! source line 176
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=45  sizeInBytes=1
	mov	45,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	177,r13		! source line 177
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_290:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_288
! END FOR
_Label_291:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	179,r13		! source line 179
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	179,r13		! source line 179
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_SleepingBarber_5:
	.word	_sourceFileName
	.word	_Label_296
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_297
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_298
	.word	-12
	.word	4
	.word	_Label_299
	.word	-16
	.word	4
	.word	_Label_300
	.word	-20
	.word	4
	.word	_Label_301
	.word	-24
	.word	4
	.word	_Label_302
	.word	-28
	.word	4
	.word	_Label_303
	.word	-32
	.word	4
	.word	_Label_304
	.word	-36
	.word	4
	.word	_Label_305
	.word	-40
	.word	4
	.word	_Label_306
	.word	-44
	.word	4
	.word	_Label_307
	.word	-48
	.word	4
	.word	0
_Label_296:
	.ascii	"SleepingBarber"
	.ascii	"::"
	.ascii	"printChairs\0"
	.align
_Label_297:
	.ascii	"Pself\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_307:
	.byte	'I'
	.ascii	"i\0"
	.align
