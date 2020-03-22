! Name of package being compiled: Kernel
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
	.import	_P_System_PrintMemory
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
	.import	_P_BitMap_TestBitMap
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.export	_P_Kernel_StartUserProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
	.align
! String constants
_StringConst_209:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_208:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_207:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_206:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_205:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_204:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_203:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_202:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_201:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_200:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_199:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_198:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_197:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_196:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_195:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_194:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_193:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_192:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_191:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_190:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_189:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_188:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_187:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_186:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_185:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_184:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_183:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_182:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_181:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_180:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_179:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_178:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_177:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_176:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_175:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_174:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_173:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_172:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_171:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_170:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_169:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_168:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_167:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_166:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_165:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_164:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_163:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_162:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_161:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_160:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_159:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_158:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_157:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_156:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_155:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_154:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_153:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_152:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_151:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_150:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_149:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_148:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_147:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_146:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_145:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_144:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_143:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_142:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_141:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_140:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_139:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_138:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_137:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_136:
	.word	109			! length
	.ascii	"        addr        entry          Virtual    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_135:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_134:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_133:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_132:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_131:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_130:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_129:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_128:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_127:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_126:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_125:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_124:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_123:
	.word	32			! length
	.ascii	"Initializing Process Manager...\n"
	.align
_StringConst_122:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_121:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_120:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_119:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_118:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_117:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_116:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_115:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_114:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_113:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_112:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_111:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_110:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_109:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_108:
	.word	0			! length
	.ascii	""
	.align
_StringConst_107:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_106:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_105:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_104:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_103:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_102:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_101:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_100:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_99:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_98:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_97:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_96:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_95:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_94:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_93:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_92:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_91:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_90:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_89:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_88:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_87:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_86:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_85:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_84:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_83:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_82:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_81:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_80:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_79:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_78:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_77:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_76:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_75:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_74:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_73:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_72:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_71:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_70:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_69:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_68:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_67:
	.word	8			! length
	.ascii	"fileDesc"
	.align
_StringConst_66:
	.word	26			! length
	.ascii	"Handle_Sys_Close invoked!\n"
	.align
_StringConst_65:
	.word	13			! length
	.ascii	"newCurrentPos"
	.align
_StringConst_64:
	.word	8			! length
	.ascii	"fileDesc"
	.align
_StringConst_63:
	.word	25			! length
	.ascii	"Handle_Sys_Seek invoked!\n"
	.align
_StringConst_62:
	.word	13			! length
	.ascii	"size in bytes"
	.align
_StringConst_61:
	.word	19			! length
	.ascii	"virt addr of buffer"
	.align
_StringConst_60:
	.word	8			! length
	.ascii	"fileDesc"
	.align
_StringConst_59:
	.word	26			! length
	.ascii	"Handle_Sys_Write invoked!\n"
	.align
_StringConst_58:
	.word	13			! length
	.ascii	"size in bytes"
	.align
_StringConst_57:
	.word	19			! length
	.ascii	"virt addr of buffer"
	.align
_StringConst_56:
	.word	8			! length
	.ascii	"fileDesc"
	.align
_StringConst_55:
	.word	25			! length
	.ascii	"Handle_Sys_Read invoked!\n"
	.align
_StringConst_54:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_53:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_52:
	.word	21			! length
	.ascii	"virt addr of filename"
	.align
_StringConst_51:
	.word	25			! length
	.ascii	"Handle_Sys_Open invoked!\n"
	.align
_StringConst_50:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_49:
	.word	11			! length
	.ascii	"filename = "
	.align
_StringConst_48:
	.word	21			! length
	.ascii	"virt addr of filename"
	.align
_StringConst_47:
	.word	27			! length
	.ascii	"Handle_Sys_Create invoked!\n"
	.align
_StringConst_46:
	.word	9			! length
	.ascii	"processID"
	.align
_StringConst_45:
	.word	25			! length
	.ascii	"Handle_Sys_Join invoked!\n"
	.align
_StringConst_44:
	.word	25			! length
	.ascii	"Handle_Sys_Fork invoked!\n"
	.align
_StringConst_43:
	.word	26			! length
	.ascii	"Handle_Sys_Yield invoked!\n"
	.align
_StringConst_42:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_41:
	.word	13			! length
	.ascii	"return status"
	.align
_StringConst_40:
	.word	25			! length
	.ascii	"Handle_Sys_Exit invoked!\n"
	.align
_StringConst_39:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_38:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_37:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_36:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_35:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_34:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_33:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_32:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_31:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_30:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_28:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_27:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_26:
	.word	11			! length
	.ascii	"UserProgram"
	.align
_StringConst_25:
	.word	27			! length
	.ascii	"Loading initial program...\n"
	.align
_StringConst_24:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_23:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_22:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_21:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_20:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_19:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_17:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_16:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_14:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_13:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_12:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_11:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_10:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_9:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_8:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_7:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_5:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_4:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_3:
	.word	29			! length
	.ascii	"Initializing Idle Process...\n"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
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
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x1e125ba1,r4		! myHashVal = 504519585
	cmp	r3,r4
	be	_Label_217
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
_Label_217:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_218
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_218
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_218
_Label_218:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	17,r1
_Label_2945:
	push	r0
	sub	r1,1,r1
	bne	_Label_2945
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_219 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_219  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_2946:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2946
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_223 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-48]
!   _temp_224 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_223  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_225 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   _temp_226 = _temp_225 + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_226 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-36],r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_227 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_227  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	21,r13		! source line 21
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_2947:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2947
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_229 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-24]
!   _temp_230 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_229  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_231 = _function_216_IdleFunction
	set	_function_216_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_232 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_231  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	28,r13		! source line 28
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0RE",r10
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_233
	.word	0		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_234
	.word	-12
	.word	4
	.word	_Label_235
	.word	-16
	.word	4
	.word	_Label_236
	.word	-20
	.word	4
	.word	_Label_237
	.word	-24
	.word	4
	.word	_Label_238
	.word	-28
	.word	4
	.word	_Label_239
	.word	-32
	.word	4
	.word	_Label_240
	.word	-36
	.word	4
	.word	_Label_241
	.word	-40
	.word	4
	.word	_Label_242
	.word	-44
	.word	4
	.word	_Label_243
	.word	-48
	.word	4
	.word	_Label_244
	.word	-52
	.word	4
	.word	_Label_245
	.word	-56
	.word	4
	.word	_Label_246
	.word	-60
	.word	4
	.word	_Label_247
	.word	-64
	.word	4
	.word	0
_Label_233:
	.ascii	"InitializeScheduler\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_224\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_219\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_216_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_216_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_2948:
	push	r0
	sub	r1,1,r1
	bne	_Label_2948
	mov	33,r13		! source line 33
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0WH",r10
_Label_248:
!	jmp	_Label_249
_Label_249:
	mov	43,r13		! source line 43
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	44,r13		! source line 44
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	45,r13		! source line 45
	mov	"\0\0IF",r10
	mov	45,r13		! source line 45
	mov	"\0\0SE",r10
!   _temp_253 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_251 else goto _Label_252
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_252
	jmp	_Label_251
_Label_251:
! THEN...
	mov	46,r13		! source line 46
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	46,r13		! source line 46
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_254
_Label_252:
! ELSE...
	mov	48,r13		! source line 48
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_254:
! END WHILE...
	jmp	_Label_248
_Label_250:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_216_IdleFunction:
	.word	_sourceFileName
	.word	_Label_255
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_256
	.word	8
	.word	4
	.word	_Label_257
	.word	-12
	.word	4
	.word	_Label_258
	.word	-16
	.word	4
	.word	0
_Label_255:
	.ascii	"IdleFunction\0"
	.align
_Label_256:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_258:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_2949:
	push	r0
	sub	r1,1,r1
	bne	_Label_2949
	mov	55,r13		! source line 55
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_261 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_261 ) then goto _Label_260		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_260
!	jmp	_Label_259
_Label_259:
! THEN...
	mov	72,r13		! source line 72
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_263 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_263 [0 ] into _temp_264
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-60]
!   _temp_262 = _temp_264		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_262  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	72,r13		! source line 72
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_260:
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_265 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_265 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	81,r13		! source line 81
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0WH",r10
_Label_266:
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_270 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_269  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_269 then goto _Label_268 else goto _Label_267
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_267
	jmp	_Label_268
_Label_267:
	mov	85,r13		! source line 85
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0AS",r10
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_271 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	87,r13		! source line 87
	mov	"\0\0SE",r10
!   _temp_272 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_266
_Label_268:
! IF STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_275 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_275 ) then goto _Label_274		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_274
!	jmp	_Label_273
_Label_273:
! THEN...
	mov	91,r13		! source line 91
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_277 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_277 [0 ] into _temp_278
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_276 = _temp_278		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_276  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	91,r13		! source line 91
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	92,r13		! source line 92
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_280 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_279 = *_temp_280  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_279) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_281 = _temp_279 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_274:
! RETURN STATEMENT...
	mov	90,r13		! source line 90
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_282
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_283
	.word	8
	.word	4
	.word	_Label_284
	.word	-16
	.word	4
	.word	_Label_285
	.word	-20
	.word	4
	.word	_Label_286
	.word	-24
	.word	4
	.word	_Label_287
	.word	-28
	.word	4
	.word	_Label_288
	.word	-32
	.word	4
	.word	_Label_289
	.word	-36
	.word	4
	.word	_Label_290
	.word	-40
	.word	4
	.word	_Label_291
	.word	-44
	.word	4
	.word	_Label_292
	.word	-48
	.word	4
	.word	_Label_293
	.word	-52
	.word	4
	.word	_Label_294
	.word	-9
	.word	1
	.word	_Label_295
	.word	-56
	.word	4
	.word	_Label_296
	.word	-60
	.word	4
	.word	_Label_297
	.word	-64
	.word	4
	.word	_Label_298
	.word	-68
	.word	4
	.word	_Label_299
	.word	-72
	.word	4
	.word	_Label_300
	.word	-76
	.word	4
	.word	_Label_301
	.word	-80
	.word	4
	.word	0
_Label_282:
	.ascii	"Run\0"
	.align
_Label_283:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_294:
	.byte	'C'
	.ascii	"_temp_269\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_300:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_301:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_2950:
	push	r0
	sub	r1,1,r1
	bne	_Label_2950
	mov	98,r13		! source line 98
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	105,r13		! source line 105
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_302 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_302  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	106,r13		! source line 106
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0SE",r10
!   _temp_303 = _function_215_ThreadPrintShort
	set	_function_215_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_304 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_303  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	108,r13		! source line 108
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_305
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_306
	.word	-12
	.word	4
	.word	_Label_307
	.word	-16
	.word	4
	.word	_Label_308
	.word	-20
	.word	4
	.word	_Label_309
	.word	-24
	.word	4
	.word	0
_Label_305:
	.ascii	"PrintReadyList\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_304\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_309:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_2951:
	push	r0
	sub	r1,1,r1
	bne	_Label_2951
	mov	113,r13		! source line 113
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	125,r13		! source line 125
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_310 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_310  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_312 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_311 = *_temp_312  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	127,r13		! source line 127
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	128,r13		! source line 128
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_313 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	129,r13		! source line 129
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	129,r13		! source line 129
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_314
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_315
	.word	-12
	.word	4
	.word	_Label_316
	.word	-16
	.word	4
	.word	_Label_317
	.word	-20
	.word	4
	.word	_Label_318
	.word	-24
	.word	4
	.word	_Label_319
	.word	-28
	.word	4
	.word	_Label_320
	.word	-32
	.word	4
	.word	0
_Label_314:
	.ascii	"ThreadStartMain\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_312\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_310\0"
	.align
_Label_319:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_320:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_2952:
	push	r0
	sub	r1,1,r1
	bne	_Label_2952
	mov	134,r13		! source line 134
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	145,r13		! source line 145
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   _temp_321 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_322 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_322  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	152,r13		! source line 152
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_323
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_324
	.word	-12
	.word	4
	.word	_Label_325
	.word	-16
	.word	4
	.word	_Label_326
	.word	-20
	.word	4
	.word	0
_Label_323:
	.ascii	"ThreadFinish\0"
	.align
_Label_324:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_325:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_326:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_2953:
	push	r0
	sub	r1,1,r1
	bne	_Label_2953
	mov	157,r13		! source line 157
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	165,r13		! source line 165
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_327 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_327  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	166,r13		! source line 166
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	167,r13		! source line 167
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_329		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_329
!	jmp	_Label_328
_Label_328:
! THEN...
	mov	168,r13		! source line 168
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_330 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_330  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_332 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_331 = *_temp_332  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	169,r13		! source line 169
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_329:
! CALL STATEMENT...
!   _temp_333 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_333  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_334 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_335 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	175,r13		! source line 175
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_336
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_337
	.word	8
	.word	4
	.word	_Label_338
	.word	-12
	.word	4
	.word	_Label_339
	.word	-16
	.word	4
	.word	_Label_340
	.word	-20
	.word	4
	.word	_Label_341
	.word	-24
	.word	4
	.word	_Label_342
	.word	-28
	.word	4
	.word	_Label_343
	.word	-32
	.word	4
	.word	_Label_344
	.word	-36
	.word	4
	.word	_Label_345
	.word	-40
	.word	4
	.word	0
_Label_336:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_337:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_338:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_339:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_340:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_341:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_345:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_2954:
	push	r0
	sub	r1,1,r1
	bne	_Label_2954
	mov	180,r13		! source line 180
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	193,r13		! source line 193
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_347		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_347
!	jmp	_Label_346
_Label_346:
! THEN...
	mov	196,r13		! source line 196
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	197,r13		! source line 197
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_348
_Label_347:
! ELSE...
	mov	199,r13		! source line 199
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	199,r13		! source line 199
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	200,r13		! source line 200
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_348:
! RETURN STATEMENT...
	mov	202,r13		! source line 202
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_349
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_350
	.word	8
	.word	4
	.word	_Label_351
	.word	-12
	.word	4
	.word	0
_Label_349:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_350:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_351:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_215_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_215_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_2955:
	push	r0
	sub	r1,1,r1
	bne	_Label_2955
	mov	641,r13		! source line 641
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	648,r13		! source line 648
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	649,r13		! source line 649
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_355		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_355
!   _temp_354 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_356
_Label_355:
!   _temp_354 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_356:
!   if _temp_354 then goto _Label_353 else goto _Label_352
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_352
	jmp	_Label_353
_Label_352:
! THEN...
	mov	650,r13		! source line 650
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_357 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_357  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	650,r13		! source line 650
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	651,r13		! source line 651
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_353:
! CALL STATEMENT...
!   _temp_358 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_358  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	653,r13		! source line 653
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_360 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_359 = *_temp_360  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_359  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	654,r13		! source line 654
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_361 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	655,r13		! source line 655
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	656,r13		! source line 656
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_370 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_369 = *_temp_370  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_364
	cmp	r1,2
	be	_Label_365
	cmp	r1,3
	be	_Label_366
	cmp	r1,4
	be	_Label_367
	cmp	r1,5
	be	_Label_368
	jmp	_Label_362
! CASE 1...
_Label_364:
! CALL STATEMENT...
!   _temp_371 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_371  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	658,r13		! source line 658
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0BR",r10
	jmp	_Label_363
! CASE 2...
_Label_365:
! CALL STATEMENT...
!   _temp_372 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_372  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	661,r13		! source line 661
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	662,r13		! source line 662
	mov	"\0\0BR",r10
	jmp	_Label_363
! CASE 3...
_Label_366:
! CALL STATEMENT...
!   _temp_373 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_373  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	664,r13		! source line 664
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0BR",r10
	jmp	_Label_363
! CASE 4...
_Label_367:
! CALL STATEMENT...
!   _temp_374 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_374  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	667,r13		! source line 667
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	668,r13		! source line 668
	mov	"\0\0BR",r10
	jmp	_Label_363
! CASE 5...
_Label_368:
! CALL STATEMENT...
!   _temp_375 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	671,r13		! source line 671
	mov	"\0\0BR",r10
	jmp	_Label_363
! DEFAULT CASE...
_Label_362:
! CALL STATEMENT...
!   _temp_376 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	673,r13		! source line 673
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_363:
! CALL STATEMENT...
!   _temp_377 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	675,r13		! source line 675
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_378 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_378  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	676,r13		! source line 676
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_379 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_379  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	677,r13		! source line 677
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	678,r13		! source line 678
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	680,r13		! source line 680
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	680,r13		! source line 680
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_215_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_380
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_381
	.word	8
	.word	4
	.word	_Label_382
	.word	-16
	.word	4
	.word	_Label_383
	.word	-20
	.word	4
	.word	_Label_384
	.word	-24
	.word	4
	.word	_Label_385
	.word	-28
	.word	4
	.word	_Label_386
	.word	-32
	.word	4
	.word	_Label_387
	.word	-36
	.word	4
	.word	_Label_388
	.word	-40
	.word	4
	.word	_Label_389
	.word	-44
	.word	4
	.word	_Label_390
	.word	-48
	.word	4
	.word	_Label_391
	.word	-52
	.word	4
	.word	_Label_392
	.word	-56
	.word	4
	.word	_Label_393
	.word	-60
	.word	4
	.word	_Label_394
	.word	-64
	.word	4
	.word	_Label_395
	.word	-68
	.word	4
	.word	_Label_396
	.word	-72
	.word	4
	.word	_Label_397
	.word	-76
	.word	4
	.word	_Label_398
	.word	-9
	.word	1
	.word	_Label_399
	.word	-80
	.word	4
	.word	0
_Label_380:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_381:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_384:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_385:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_372\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_371\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_370\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_369\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_360\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_398:
	.byte	'C'
	.ascii	"_temp_354\0"
	.align
_Label_399:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_214_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_214_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_2956:
	push	r0
	sub	r1,1,r1
	bne	_Label_2956
	mov	1006,r13		! source line 1006
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_400 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1010,r13		! source line 1010
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1011,r13		! source line 1011
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1011,r13		! source line 1011
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_214_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_401
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_402
	.word	8
	.word	4
	.word	_Label_403
	.word	-12
	.word	4
	.word	0
_Label_401:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_402:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_403:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_2957:
	push	r0
	sub	r1,1,r1
	bne	_Label_2957
	mov	1016,r13		! source line 1016
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_404 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_404  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1022,r13		! source line 1022
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1022,r13		! source line 1022
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_405
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_406
	.word	8
	.word	4
	.word	_Label_407
	.word	-12
	.word	4
	.word	0
_Label_405:
	.ascii	"ProcessFinish\0"
	.align
_Label_406:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	8,r1
_Label_2958:
	push	r0
	sub	r1,1,r1
	bne	_Label_2958
	mov	1027,r13		! source line 1027
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_408 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_408  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1029,r13		! source line 1029
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1030,r13		! source line 1030
	mov	"\0\0AS",r10
	mov	1030,r13		! source line 1030
	mov	"\0\0SE",r10
!   _temp_409 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=thrPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! SEND STATEMENT...
	mov	1031,r13		! source line 1031
	mov	"\0\0SE",r10
!   _temp_410 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-16]
!   if intIsZero (thrPtr) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_410  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0SE",r10
!   _temp_411 = _P_Kernel_StartUserProcess
	set	_P_Kernel_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (thrPtr) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_411  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	1032,r13		! source line 1032
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_412
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_413
	.word	-12
	.word	4
	.word	_Label_414
	.word	-16
	.word	4
	.word	_Label_415
	.word	-20
	.word	4
	.word	_Label_416
	.word	-24
	.word	4
	.word	_Label_417
	.word	-28
	.word	4
	.word	0
_Label_412:
	.ascii	"InitFirstProcess\0"
	.align
_Label_413:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_414:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_415:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_416:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_417:
	.byte	'P'
	.ascii	"thrPtr\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_P_Kernel_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_StartUserProcess,r1
	push	r1
	mov	24,r1
_Label_2959:
	push	r0
	sub	r1,1,r1
	bne	_Label_2959
	mov	1037,r13		! source line 1037
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1046,r13		! source line 1046
	mov	"\0\0AS",r10
	mov	1046,r13		! source line 1046
	mov	"\0\0SE",r10
!   _temp_418 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-68]
!   Send message GetANewProcess
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=PCBPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-72]
! ASSIGNMENT STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0AS",r10
!   if intIsZero (PCBPtr) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_419 = PCBPtr + 24
	load	[r14+-72],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_419 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_420 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-60]
!   Data Move: *_temp_420 = PCBPtr  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-60],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1051,r13		! source line 1051
	mov	"\0\0AS",r10
	mov	1051,r13		! source line 1051
	mov	"\0\0SE",r10
!   _temp_421 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-56]
!   _temp_422 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_421  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=fh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	1053,r13		! source line 1053
	mov	"\0\0AS",r10
	mov	1053,r13		! source line 1053
	mov	"\0\0SE",r10
!   if intIsZero (PCBPtr) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_424 = PCBPtr + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_423 = _temp_424		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   if intIsZero (fh) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_423  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	1055,r13		! source line 1055
	mov	"\0\0SE",r10
!   _temp_425 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=fh  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1058,r13		! source line 1058
	mov	"\0\0AS",r10
!   if intIsZero (PCBPtr) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_427 = PCBPtr + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_428 = _temp_427 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_426 = *_temp_428  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStackTop = _temp_426 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_429 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_429 [999 ] into _temp_430
!     make sure index expr is >= 0
	mov	999,r2
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
!   initSystemStackTop = _temp_430		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	1065,r13		! source line 1065
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1065,r13		! source line 1065
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldInterruptStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
! SEND STATEMENT...
	mov	1068,r13		! source line 1068
	mov	"\0\0SE",r10
!   if intIsZero (PCBPtr) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_431 = PCBPtr + 32
	load	[r14+-72],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1071,r13		! source line 1071
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_432 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_432 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initUserPC  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+8]
!   Call the function
	mov	1074,r13		! source line 1074
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1074,r13		! source line 1074
	mov	"\0\0RE",r10
	add	r15,100,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_433
	.word	0		! total size of parameters
	.word	96		! frame size = 96
	.word	_Label_434
	.word	-12
	.word	4
	.word	_Label_435
	.word	-16
	.word	4
	.word	_Label_436
	.word	-20
	.word	4
	.word	_Label_437
	.word	-24
	.word	4
	.word	_Label_438
	.word	-28
	.word	4
	.word	_Label_439
	.word	-32
	.word	4
	.word	_Label_440
	.word	-36
	.word	4
	.word	_Label_441
	.word	-40
	.word	4
	.word	_Label_442
	.word	-44
	.word	4
	.word	_Label_443
	.word	-48
	.word	4
	.word	_Label_444
	.word	-52
	.word	4
	.word	_Label_445
	.word	-56
	.word	4
	.word	_Label_446
	.word	-60
	.word	4
	.word	_Label_447
	.word	-64
	.word	4
	.word	_Label_448
	.word	-68
	.word	4
	.word	_Label_449
	.word	-72
	.word	4
	.word	_Label_450
	.word	-76
	.word	4
	.word	_Label_451
	.word	-80
	.word	4
	.word	_Label_452
	.word	-84
	.word	4
	.word	_Label_453
	.word	-88
	.word	4
	.word	_Label_454
	.word	-92
	.word	4
	.word	0
_Label_433:
	.ascii	"StartUserProcess\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_431\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_430\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_428\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_427\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_426\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_425\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_424\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_421\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_447:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_449:
	.byte	'P'
	.ascii	"PCBPtr\0"
	.align
_Label_450:
	.byte	'P'
	.ascii	"fh\0"
	.align
_Label_451:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_452:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_453:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_454:
	.byte	'I'
	.ascii	"oldInterruptStatus\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_2960:
	push	r0
	sub	r1,1,r1
	bne	_Label_2960
	mov	1575,r13		! source line 1575
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1587,r13		! source line 1587
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1588,r13		! source line 1588
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_455
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_455:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_2961:
	push	r0
	sub	r1,1,r1
	bne	_Label_2961
	mov	1593,r13		! source line 1593
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1605,r13		! source line 1605
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1607,r13		! source line 1607
	mov	"\0\0IF",r10
!   _temp_459 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_460 = _temp_459 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_458 = *_temp_460  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_458 == 0 then goto _Label_457		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_457
!	jmp	_Label_456
_Label_456:
! THEN...
	mov	1608,r13		! source line 1608
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1608,r13		! source line 1608
	mov	"\0\0SE",r10
!   _temp_462 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_463 = _temp_462 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_461 = *_temp_463  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_461) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_457:
! RETURN STATEMENT...
	mov	1607,r13		! source line 1607
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_464
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_465
	.word	-12
	.word	4
	.word	_Label_466
	.word	-16
	.word	4
	.word	_Label_467
	.word	-20
	.word	4
	.word	_Label_468
	.word	-24
	.word	4
	.word	_Label_469
	.word	-28
	.word	4
	.word	_Label_470
	.word	-32
	.word	4
	.word	0
_Label_464:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_463\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_462\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_469:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_470:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1615,r13		! source line 1615
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1624,r13		! source line 1624
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1624,r13		! source line 1624
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_471
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_471:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_2962:
	push	r0
	sub	r1,1,r1
	bne	_Label_2962
	mov	1629,r13		! source line 1629
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1635,r13		! source line 1635
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_472 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_472  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1636,r13		! source line 1636
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1636,r13		! source line 1636
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_473
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_474
	.word	-12
	.word	4
	.word	0
_Label_473:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2963:
	push	r0
	sub	r1,1,r1
	bne	_Label_2963
	mov	1641,r13		! source line 1641
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1647,r13		! source line 1647
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_475 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_475  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1648,r13		! source line 1648
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1648,r13		! source line 1648
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_476
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_477
	.word	-12
	.word	4
	.word	0
_Label_476:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_475\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2964:
	push	r0
	sub	r1,1,r1
	bne	_Label_2964
	mov	1653,r13		! source line 1653
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_478 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_478  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1660,r13		! source line 1660
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1660,r13		! source line 1660
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_479
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_480
	.word	-12
	.word	4
	.word	0
_Label_479:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2965:
	push	r0
	sub	r1,1,r1
	bne	_Label_2965
	mov	1665,r13		! source line 1665
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_481 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_481  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1672,r13		! source line 1672
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1672,r13		! source line 1672
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_482
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_483
	.word	-12
	.word	4
	.word	0
_Label_482:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2966:
	push	r0
	sub	r1,1,r1
	bne	_Label_2966
	mov	1677,r13		! source line 1677
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1683,r13		! source line 1683
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_484 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_484  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1684,r13		! source line 1684
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1684,r13		! source line 1684
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_485
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_486
	.word	-12
	.word	4
	.word	0
_Label_485:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_2967:
	push	r0
	sub	r1,1,r1
	bne	_Label_2967
	mov	1689,r13		! source line 1689
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_487 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_487  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1696,r13		! source line 1696
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1696,r13		! source line 1696
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_488
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_489
	.word	-12
	.word	4
	.word	0
_Label_488:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_2968:
	push	r0
	sub	r1,1,r1
	bne	_Label_2968
	mov	1701,r13		! source line 1701
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1707,r13		! source line 1707
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_490 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_490  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1708,r13		! source line 1708
	mov	"\0\0CA",r10
	call	_function_213_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1708,r13		! source line 1708
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_491
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_492
	.word	-12
	.word	4
	.word	0
_Label_491:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_492:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_213_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_213_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_2969:
	push	r0
	sub	r1,1,r1
	bne	_Label_2969
	mov	1713,r13		! source line 1713
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_493 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_493  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1718,r13		! source line 1718
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1719,r13		! source line 1719
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_494 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_494  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1720,r13		! source line 1720
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1723,r13		! source line 1723
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_498 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_497 = *_temp_498  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_497 == 0 then goto _Label_496		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_496
!	jmp	_Label_495
_Label_495:
! THEN...
	mov	1724,r13		! source line 1724
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1724,r13		! source line 1724
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_500 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_499 = *_temp_500  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_499) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_501
_Label_496:
! ELSE...
	mov	1726,r13		! source line 1726
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_502 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_502  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1726,r13		! source line 1726
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_501:
! SEND STATEMENT...
	mov	1728,r13		! source line 1728
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1734,r13		! source line 1734
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1734,r13		! source line 1734
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_213_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_503
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_504
	.word	8
	.word	4
	.word	_Label_505
	.word	-12
	.word	4
	.word	_Label_506
	.word	-16
	.word	4
	.word	_Label_507
	.word	-20
	.word	4
	.word	_Label_508
	.word	-24
	.word	4
	.word	_Label_509
	.word	-28
	.word	4
	.word	_Label_510
	.word	-32
	.word	4
	.word	_Label_511
	.word	-36
	.word	4
	.word	0
_Label_503:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_504:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_2970:
	push	r0
	sub	r1,1,r1
	bne	_Label_2970
	mov	1739,r13		! source line 1739
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1760,r13		! source line 1760
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_2971
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_512
_Label_2971:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_512
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_512
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_526,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_526:
	jmp	_Label_518	! 1:	
	jmp	_Label_525	! 2:	
	jmp	_Label_515	! 3:	
	jmp	_Label_514	! 4:	
	jmp	_Label_517	! 5:	
	jmp	_Label_516	! 6:	
	jmp	_Label_519	! 7:	
	jmp	_Label_520	! 8:	
	jmp	_Label_521	! 9:	
	jmp	_Label_522	! 10:	
	jmp	_Label_523	! 11:	
	jmp	_Label_524	! 12:	
! CASE 4...
_Label_514:
! RETURN STATEMENT...
	mov	1762,r13		! source line 1762
	mov	"\0\0RE",r10
!   Call the function
	mov	1762,r13		! source line 1762
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_527  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_527  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_515:
! CALL STATEMENT...
!   Call the function
	mov	1764,r13		! source line 1764
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1765,r13		! source line 1765
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_516:
! RETURN STATEMENT...
	mov	1767,r13		! source line 1767
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1767,r13		! source line 1767
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_528  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_528  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_517:
! RETURN STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1769,r13		! source line 1769
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_529  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_529  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_518:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1771,r13		! source line 1771
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1772,r13		! source line 1772
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_519:
! RETURN STATEMENT...
	mov	1774,r13		! source line 1774
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1774,r13		! source line 1774
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_530  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_530  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_520:
! RETURN STATEMENT...
	mov	1776,r13		! source line 1776
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1776,r13		! source line 1776
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_531  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_531  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_521:
! RETURN STATEMENT...
	mov	1778,r13		! source line 1778
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1778,r13		! source line 1778
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_532  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_532  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_522:
! RETURN STATEMENT...
	mov	1780,r13		! source line 1780
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1780,r13		! source line 1780
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_533  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_533  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_523:
! RETURN STATEMENT...
	mov	1782,r13		! source line 1782
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1782,r13		! source line 1782
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_534  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_534  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_524:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1784,r13		! source line 1784
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1785,r13		! source line 1785
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_525:
! CALL STATEMENT...
!   Call the function
	mov	1787,r13		! source line 1787
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_512:
! CALL STATEMENT...
!   _temp_535 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_535  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1790,r13		! source line 1790
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1791,r13		! source line 1791
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1792,r13		! source line 1792
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_536 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_536  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1793,r13		! source line 1793
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_513:
! RETURN STATEMENT...
	mov	1795,r13		! source line 1795
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_537
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_538
	.word	8
	.word	4
	.word	_Label_539
	.word	12
	.word	4
	.word	_Label_540
	.word	16
	.word	4
	.word	_Label_541
	.word	20
	.word	4
	.word	_Label_542
	.word	24
	.word	4
	.word	_Label_543
	.word	-12
	.word	4
	.word	_Label_544
	.word	-16
	.word	4
	.word	_Label_545
	.word	-20
	.word	4
	.word	_Label_546
	.word	-24
	.word	4
	.word	_Label_547
	.word	-28
	.word	4
	.word	_Label_548
	.word	-32
	.word	4
	.word	_Label_549
	.word	-36
	.word	4
	.word	_Label_550
	.word	-40
	.word	4
	.word	_Label_551
	.word	-44
	.word	4
	.word	_Label_552
	.word	-48
	.word	4
	.word	0
_Label_537:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_538:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_539:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_540:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_541:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_542:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_535\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_533\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_549:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_550:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_551:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	4,r1
_Label_2972:
	push	r0
	sub	r1,1,r1
	bne	_Label_2972
	mov	1800,r13		! source line 1800
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_553 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_553  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1802,r13		! source line 1802
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_554 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_554  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	1803,r13		! source line 1803
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_555
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_556
	.word	8
	.word	4
	.word	_Label_557
	.word	-12
	.word	4
	.word	_Label_558
	.word	-16
	.word	4
	.word	0
_Label_555:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_556:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_2973:
	push	r0
	sub	r1,1,r1
	bne	_Label_2973
	mov	1808,r13		! source line 1808
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_559 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_559  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1810,r13		! source line 1810
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1810,r13		! source line 1810
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_560
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_561
	.word	-12
	.word	4
	.word	0
_Label_560:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_559\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	2,r1
_Label_2974:
	push	r0
	sub	r1,1,r1
	bne	_Label_2974
	mov	1815,r13		! source line 1815
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_562 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_562  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1816,r13		! source line 1816
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1816,r13		! source line 1816
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_563
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_564
	.word	-12
	.word	4
	.word	0
_Label_563:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_562\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	2,r1
_Label_2975:
	push	r0
	sub	r1,1,r1
	bne	_Label_2975
	mov	1822,r13		! source line 1822
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_565 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_565  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1823,r13		! source line 1823
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1825,r13		! source line 1825
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_566
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_567
	.word	-12
	.word	4
	.word	0
_Label_566:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	4,r1
_Label_2976:
	push	r0
	sub	r1,1,r1
	bne	_Label_2976
	mov	1830,r13		! source line 1830
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_568 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_568  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1831,r13		! source line 1831
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_569 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_569  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	1832,r13		! source line 1832
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	1834,r13		! source line 1834
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_570
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_571
	.word	8
	.word	4
	.word	_Label_572
	.word	-12
	.word	4
	.word	_Label_573
	.word	-16
	.word	4
	.word	0
_Label_570:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_571:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_572:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_573:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	60,r1
_Label_2977:
	push	r0
	sub	r1,1,r1
	bne	_Label_2977
	mov	1839,r13		! source line 1839
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! newAddrSpace
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-188,r4
	mov	23,r3
_Label_2978:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2978
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-188]
! ASSIGNMENT STATEMENT...
	mov	1851,r13		! source line 1851
	mov	"\0\0AS",r10
	mov	1851,r13		! source line 1851
	mov	"\0\0SE",r10
!   _temp_575 = &kfilename
	add	r14,-212,r1
	store	r1,[r14+-88]
!   _temp_576 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-84]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_578 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-76]
!   Data Move: _temp_577 = *_temp_578  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_577) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_579 = _temp_577 + 32
	load	[r14+-80],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_575  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_576  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=rValue  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! IF STATEMENT...
	mov	1855,r13		! source line 1855
	mov	"\0\0IF",r10
!   if rValue >= 0 then goto _Label_581		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_581
!	jmp	_Label_580
_Label_580:
! THEN...
	mov	1856,r13		! source line 1856
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1856,r13		! source line 1856
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,244,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_581:
! ASSIGNMENT STATEMENT...
	mov	1860,r13		! source line 1860
	mov	"\0\0AS",r10
	mov	1860,r13		! source line 1860
	mov	"\0\0SE",r10
!   _temp_582 = &kfilename
	add	r14,-212,r1
	store	r1,[r14+-68]
!   _temp_583 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=_temp_582  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=fh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	1861,r13		! source line 1861
	mov	"\0\0IF",r10
!   if intIsZero (fh) then goto _Label_584
	load	[r14+-216],r1
	cmp	r1,r0
	be	_Label_584
	jmp	_Label_585
_Label_584:
! THEN...
	mov	1862,r13		! source line 1862
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1862,r13		! source line 1862
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,244,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_585:
! SEND STATEMENT...
	mov	1866,r13		! source line 1866
	mov	"\0\0SE",r10
!   _temp_586 = &newAddrSpace
	add	r14,-188,r1
	store	r1,[r14+-60]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1869,r13		! source line 1869
	mov	"\0\0AS",r10
	mov	1869,r13		! source line 1869
	mov	"\0\0SE",r10
!   _temp_587 = &newAddrSpace
	add	r14,-188,r1
	store	r1,[r14+-56]
!   if intIsZero (fh) then goto _runtimeErrorNullPointer
	load	[r14+-216],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_587  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-216],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initUserPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-220]
! SEND STATEMENT...
	mov	1871,r13		! source line 1871
	mov	"\0\0SE",r10
!   _temp_588 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=fh  sizeInBytes=4
	load	[r14+-216],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	1872,r13		! source line 1872
	mov	"\0\0IF",r10
!   if initUserPC >= 0 then goto _Label_590		(int)
	load	[r14+-220],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_590
!	jmp	_Label_589
_Label_589:
! THEN...
	mov	1873,r13		! source line 1873
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1873,r13		! source line 1873
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,244,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_590:
! ASSIGNMENT STATEMENT...
	mov	1877,r13		! source line 1877
	mov	"\0\0AS",r10
!   _temp_592 = &newAddrSpace
	add	r14,-188,r1
	store	r1,[r14+-44]
!   _temp_593 = _temp_592 + 4
	load	[r14+-44],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: _temp_591 = *_temp_593  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   initUserStackTop = _temp_591 * 8192		(int)
	load	[r14+-48],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	1880,r13		! source line 1880
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_594 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_594 [999 ] into _temp_595
!     make sure index expr is >= 0
	mov	999,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   initSystemStackTop = _temp_595		(4 bytes)
	load	[r14+-32],r1
	store	r1,[r14+-228]
! ASSIGNMENT STATEMENT...
	mov	1884,r13		! source line 1884
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1884,r13		! source line 1884
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldInterruptStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! SEND STATEMENT...
	mov	1887,r13		! source line 1887
	mov	"\0\0SE",r10
!   _temp_596 = &newAddrSpace
	add	r14,-188,r1
	store	r1,[r14+-28]
!   Send message SetToThisPageTable
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1890,r13		! source line 1890
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_598 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_597 = *_temp_598  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_597) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_599 = _temp_597 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_599 = newAddrSpace  (sizeInBytes=92)
	add	r14,-188,r5
	load	[r14+-16],r4
	mov	23,r3
_Label_2979:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_2979
! ASSIGNMENT STATEMENT...
	mov	1891,r13		! source line 1891
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_600 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_600 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStackTop  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initUserPC  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStackTop  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+8]
!   Call the function
	mov	1894,r13		! source line 1894
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	1897,r13		! source line 1897
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,244,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_601
	.word	4		! total size of parameters
	.word	240		! frame size = 240
	.word	_Label_602
	.word	8
	.word	4
	.word	_Label_603
	.word	-12
	.word	4
	.word	_Label_604
	.word	-16
	.word	4
	.word	_Label_605
	.word	-20
	.word	4
	.word	_Label_606
	.word	-24
	.word	4
	.word	_Label_607
	.word	-28
	.word	4
	.word	_Label_608
	.word	-32
	.word	4
	.word	_Label_609
	.word	-36
	.word	4
	.word	_Label_610
	.word	-40
	.word	4
	.word	_Label_611
	.word	-44
	.word	4
	.word	_Label_612
	.word	-48
	.word	4
	.word	_Label_613
	.word	-52
	.word	4
	.word	_Label_614
	.word	-56
	.word	4
	.word	_Label_615
	.word	-60
	.word	4
	.word	_Label_616
	.word	-64
	.word	4
	.word	_Label_617
	.word	-68
	.word	4
	.word	_Label_618
	.word	-72
	.word	4
	.word	_Label_619
	.word	-76
	.word	4
	.word	_Label_620
	.word	-80
	.word	4
	.word	_Label_621
	.word	-84
	.word	4
	.word	_Label_622
	.word	-88
	.word	4
	.word	_Label_623
	.word	-92
	.word	4
	.word	_Label_624
	.word	-96
	.word	4
	.word	_Label_625
	.word	-188
	.word	92
	.word	_Label_626
	.word	-212
	.word	24
	.word	_Label_627
	.word	-216
	.word	4
	.word	_Label_628
	.word	-220
	.word	4
	.word	_Label_629
	.word	-224
	.word	4
	.word	_Label_630
	.word	-228
	.word	4
	.word	_Label_631
	.word	-232
	.word	4
	.word	0
_Label_601:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_602:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_599\0"
	.align
_Label_605:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_606:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_607:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_608:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
_Label_609:
	.byte	'?'
	.ascii	"_temp_594\0"
	.align
_Label_610:
	.byte	'?'
	.ascii	"_temp_593\0"
	.align
_Label_611:
	.byte	'?'
	.ascii	"_temp_592\0"
	.align
_Label_612:
	.byte	'?'
	.ascii	"_temp_591\0"
	.align
_Label_613:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_583\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_582\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_575\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_574\0"
	.align
_Label_624:
	.byte	'I'
	.ascii	"rValue\0"
	.align
_Label_625:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_626:
	.byte	'A'
	.ascii	"kfilename\0"
	.align
_Label_627:
	.byte	'P'
	.ascii	"fh\0"
	.align
_Label_628:
	.byte	'I'
	.ascii	"initUserPC\0"
	.align
_Label_629:
	.byte	'I'
	.ascii	"initUserStackTop\0"
	.align
_Label_630:
	.byte	'I'
	.ascii	"initSystemStackTop\0"
	.align
_Label_631:
	.byte	'I'
	.ascii	"oldInterruptStatus\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	22,r1
_Label_2980:
	push	r0
	sub	r1,1,r1
	bne	_Label_2980
	mov	1902,r13		! source line 1902
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_632 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_632  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1907,r13		! source line 1907
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_633 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-48]
!   _temp_634 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_633  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_634  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	1908,r13		! source line 1908
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! ASSIGNMENT STATEMENT...
	mov	1910,r13		! source line 1910
	mov	"\0\0AS",r10
	mov	1910,r13		! source line 1910
	mov	"\0\0SE",r10
!   _temp_635 = &strBuffer
	add	r14,-80,r1
	store	r1,[r14+-40]
!   _temp_636 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_638 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_637 = *_temp_638  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_637) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_639 = _temp_637 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_635  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_636  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=rValue  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	1914,r13		! source line 1914
	mov	"\0\0IF",r10
!   if rValue >= 0 then goto _Label_641		(int)
	load	[r14+-56],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_641
!	jmp	_Label_640
_Label_640:
! THEN...
	mov	1915,r13		! source line 1915
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1915,r13		! source line 1915
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_641:
! CALL STATEMENT...
!   _temp_642 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_642  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1918,r13		! source line 1918
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_643 = &strBuffer
	add	r14,-80,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_643  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1919,r13		! source line 1919
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_644 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_644  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1920,r13		! source line 1920
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1922,r13		! source line 1922
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_645
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_646
	.word	8
	.word	4
	.word	_Label_647
	.word	-12
	.word	4
	.word	_Label_648
	.word	-16
	.word	4
	.word	_Label_649
	.word	-20
	.word	4
	.word	_Label_650
	.word	-24
	.word	4
	.word	_Label_651
	.word	-28
	.word	4
	.word	_Label_652
	.word	-32
	.word	4
	.word	_Label_653
	.word	-36
	.word	4
	.word	_Label_654
	.word	-40
	.word	4
	.word	_Label_655
	.word	-44
	.word	4
	.word	_Label_656
	.word	-48
	.word	4
	.word	_Label_657
	.word	-52
	.word	4
	.word	_Label_658
	.word	-56
	.word	4
	.word	_Label_659
	.word	-80
	.word	24
	.word	0
_Label_645:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_646:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_647:
	.byte	'?'
	.ascii	"_temp_644\0"
	.align
_Label_648:
	.byte	'?'
	.ascii	"_temp_643\0"
	.align
_Label_649:
	.byte	'?'
	.ascii	"_temp_642\0"
	.align
_Label_650:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_651:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
_Label_652:
	.byte	'?'
	.ascii	"_temp_637\0"
	.align
_Label_653:
	.byte	'?'
	.ascii	"_temp_636\0"
	.align
_Label_654:
	.byte	'?'
	.ascii	"_temp_635\0"
	.align
_Label_655:
	.byte	'?'
	.ascii	"_temp_634\0"
	.align
_Label_656:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_632\0"
	.align
_Label_658:
	.byte	'I'
	.ascii	"rValue\0"
	.align
_Label_659:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	22,r1
_Label_2981:
	push	r0
	sub	r1,1,r1
	bne	_Label_2981
	mov	1927,r13		! source line 1927
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_660 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_660  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1932,r13		! source line 1932
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_661 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-48]
!   _temp_662 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_661  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_662  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Call the function
	mov	1933,r13		! source line 1933
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! ASSIGNMENT STATEMENT...
	mov	1935,r13		! source line 1935
	mov	"\0\0AS",r10
	mov	1935,r13		! source line 1935
	mov	"\0\0SE",r10
!   _temp_663 = &strBuffer
	add	r14,-80,r1
	store	r1,[r14+-40]
!   _temp_664 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_666 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-28]
!   Data Move: _temp_665 = *_temp_666  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_665) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_667 = _temp_665 + 32
	load	[r14+-32],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_663  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_664  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=rValue  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	1939,r13		! source line 1939
	mov	"\0\0IF",r10
!   if rValue >= 0 then goto _Label_669		(int)
	load	[r14+-56],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_669
!	jmp	_Label_668
_Label_668:
! THEN...
	mov	1940,r13		! source line 1940
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1940,r13		! source line 1940
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_669:
! CALL STATEMENT...
!   _temp_670 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_670  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1943,r13		! source line 1943
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_671 = &strBuffer
	add	r14,-80,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_671  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1944,r13		! source line 1944
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_672 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_672  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1945,r13		! source line 1945
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1948,r13		! source line 1948
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_673
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_674
	.word	8
	.word	4
	.word	_Label_675
	.word	-12
	.word	4
	.word	_Label_676
	.word	-16
	.word	4
	.word	_Label_677
	.word	-20
	.word	4
	.word	_Label_678
	.word	-24
	.word	4
	.word	_Label_679
	.word	-28
	.word	4
	.word	_Label_680
	.word	-32
	.word	4
	.word	_Label_681
	.word	-36
	.word	4
	.word	_Label_682
	.word	-40
	.word	4
	.word	_Label_683
	.word	-44
	.word	4
	.word	_Label_684
	.word	-48
	.word	4
	.word	_Label_685
	.word	-52
	.word	4
	.word	_Label_686
	.word	-56
	.word	4
	.word	_Label_687
	.word	-80
	.word	24
	.word	0
_Label_673:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_674:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_675:
	.byte	'?'
	.ascii	"_temp_672\0"
	.align
_Label_676:
	.byte	'?'
	.ascii	"_temp_671\0"
	.align
_Label_677:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_678:
	.byte	'?'
	.ascii	"_temp_667\0"
	.align
_Label_679:
	.byte	'?'
	.ascii	"_temp_666\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_665\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_664\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_663\0"
	.align
_Label_683:
	.byte	'?'
	.ascii	"_temp_662\0"
	.align
_Label_684:
	.byte	'?'
	.ascii	"_temp_661\0"
	.align
_Label_685:
	.byte	'?'
	.ascii	"_temp_660\0"
	.align
_Label_686:
	.byte	'I'
	.ascii	"rValue\0"
	.align
_Label_687:
	.byte	'A'
	.ascii	"strBuffer\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	7,r1
_Label_2982:
	push	r0
	sub	r1,1,r1
	bne	_Label_2982
	mov	1953,r13		! source line 1953
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_688 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_688  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1955,r13		! source line 1955
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_689 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_689  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	1956,r13		! source line 1956
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_690 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-20]
!   _temp_691 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_690  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_691  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1957,r13		! source line 1957
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_692 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_692  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1958,r13		! source line 1958
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	1959,r13		! source line 1959
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_693
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_694
	.word	8
	.word	4
	.word	_Label_695
	.word	12
	.word	4
	.word	_Label_696
	.word	16
	.word	4
	.word	_Label_697
	.word	-12
	.word	4
	.word	_Label_698
	.word	-16
	.word	4
	.word	_Label_699
	.word	-20
	.word	4
	.word	_Label_700
	.word	-24
	.word	4
	.word	_Label_701
	.word	-28
	.word	4
	.word	0
_Label_693:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_694:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_695:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_696:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_697:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_698:
	.byte	'?'
	.ascii	"_temp_691\0"
	.align
_Label_699:
	.byte	'?'
	.ascii	"_temp_690\0"
	.align
_Label_700:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_701:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	7,r1
_Label_2983:
	push	r0
	sub	r1,1,r1
	bne	_Label_2983
	mov	1964,r13		! source line 1964
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_702 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_702  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1966,r13		! source line 1966
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_703 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_703  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	1967,r13		! source line 1967
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_704 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-20]
!   _temp_705 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_704  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_705  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1968,r13		! source line 1968
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_706 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_706  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1969,r13		! source line 1969
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	1970,r13		! source line 1970
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_707
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_708
	.word	8
	.word	4
	.word	_Label_709
	.word	12
	.word	4
	.word	_Label_710
	.word	16
	.word	4
	.word	_Label_711
	.word	-12
	.word	4
	.word	_Label_712
	.word	-16
	.word	4
	.word	_Label_713
	.word	-20
	.word	4
	.word	_Label_714
	.word	-24
	.word	4
	.word	_Label_715
	.word	-28
	.word	4
	.word	0
_Label_707:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_708:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_709:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_710:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_706\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_705\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_704\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_703\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_702\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	5,r1
_Label_2984:
	push	r0
	sub	r1,1,r1
	bne	_Label_2984
	mov	1975,r13		! source line 1975
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_716 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_716  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1977,r13		! source line 1977
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_717 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_717  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	1978,r13		! source line 1978
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_718 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_718  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1979,r13		! source line 1979
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	1980,r13		! source line 1980
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_719
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_720
	.word	8
	.word	4
	.word	_Label_721
	.word	12
	.word	4
	.word	_Label_722
	.word	-12
	.word	4
	.word	_Label_723
	.word	-16
	.word	4
	.word	_Label_724
	.word	-20
	.word	4
	.word	0
_Label_719:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_720:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_721:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_722:
	.byte	'?'
	.ascii	"_temp_718\0"
	.align
_Label_723:
	.byte	'?'
	.ascii	"_temp_717\0"
	.align
_Label_724:
	.byte	'?'
	.ascii	"_temp_716\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	4,r1
_Label_2985:
	push	r0
	sub	r1,1,r1
	bne	_Label_2985
	mov	1985,r13		! source line 1985
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_725 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_725  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1987,r13		! source line 1987
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_726 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_726  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	1988,r13		! source line 1988
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	1988,r13		! source line 1988
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_727
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_728
	.word	8
	.word	4
	.word	_Label_729
	.word	-12
	.word	4
	.word	_Label_730
	.word	-16
	.word	4
	.word	0
_Label_727:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_728:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_212_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_212_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_2986:
	push	r0
	sub	r1,1,r1
	bne	_Label_2986
	mov	2582,r13		! source line 2582
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_731 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_731  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0AS",r10
!   _temp_732 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_732) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_734 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_734) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_733 = *_temp_734  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_732 = _temp_733  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0AS",r10
!   _temp_735 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_735) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_737 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_737) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_736 = *_temp_737  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_735 = _temp_736  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0AS",r10
!   _temp_738 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_738) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_740 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_740) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_739 = *_temp_740  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_738 = _temp_739  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2589,r13		! source line 2589
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_212_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_741
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_742
	.word	8
	.word	4
	.word	_Label_743
	.word	12
	.word	4
	.word	_Label_744
	.word	-16
	.word	4
	.word	_Label_745
	.word	-9
	.word	1
	.word	_Label_746
	.word	-20
	.word	4
	.word	_Label_747
	.word	-24
	.word	4
	.word	_Label_748
	.word	-10
	.word	1
	.word	_Label_749
	.word	-28
	.word	4
	.word	_Label_750
	.word	-32
	.word	4
	.word	_Label_751
	.word	-11
	.word	1
	.word	_Label_752
	.word	-36
	.word	4
	.word	_Label_753
	.word	-12
	.word	1
	.word	_Label_754
	.word	-40
	.word	4
	.word	_Label_755
	.word	-44
	.word	4
	.word	0
_Label_741:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_742:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_743:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_744:
	.byte	'?'
	.ascii	"_temp_740\0"
	.align
_Label_745:
	.byte	'C'
	.ascii	"_temp_739\0"
	.align
_Label_746:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_747:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_748:
	.byte	'C'
	.ascii	"_temp_736\0"
	.align
_Label_749:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_750:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_751:
	.byte	'C'
	.ascii	"_temp_733\0"
	.align
_Label_752:
	.byte	'?'
	.ascii	"_temp_732\0"
	.align
_Label_753:
	.byte	'C'
	.ascii	"_temp_731\0"
	.align
_Label_754:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_755:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_211_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_211_printFCB,r1
	push	r1
	mov	3,r1
_Label_2987:
	push	r0
	sub	r1,1,r1
	bne	_Label_2987
	mov	2592,r13		! source line 2592
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_757 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_756 = *_temp_757  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_756  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2593,r13		! source line 2593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2594,r13		! source line 2594
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2594,r13		! source line 2594
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_211_printFCB:
	.word	_sourceFileName
	.word	_Label_758
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_759
	.word	8
	.word	4
	.word	_Label_760
	.word	-12
	.word	4
	.word	_Label_761
	.word	-16
	.word	4
	.word	0
_Label_758:
	.ascii	"printFCB\0"
	.align
_Label_759:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_760:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_761:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_210_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_210_printOpen,r1
	push	r1
	mov	4,r1
_Label_2988:
	push	r0
	sub	r1,1,r1
	bne	_Label_2988
	mov	2597,r13		! source line 2597
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_762 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_762  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2598,r13		! source line 2598
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_763 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_763  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2599,r13		! source line 2599
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_764 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_764  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2600,r13		! source line 2600
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2601,r13		! source line 2601
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2601,r13		! source line 2601
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_210_printOpen:
	.word	_sourceFileName
	.word	_Label_765
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_766
	.word	8
	.word	4
	.word	_Label_767
	.word	-12
	.word	4
	.word	_Label_768
	.word	-16
	.word	4
	.word	_Label_769
	.word	-20
	.word	4
	.word	0
_Label_765:
	.ascii	"printOpen\0"
	.align
_Label_766:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_767:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_770
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_770:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_771
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_771:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_2989:
	push	r0
	sub	r1,1,r1
	bne	_Label_2989
	mov	231,r13		! source line 231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_773		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_773
!	jmp	_Label_772
_Label_772:
! THEN...
	mov	233,r13		! source line 233
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_774 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_774  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	233,r13		! source line 233
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_773:
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	236,r13		! source line 236
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_776
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_777
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_778
	.word	12
	.word	4
	.word	_Label_779
	.word	-12
	.word	4
	.word	_Label_780
	.word	-16
	.word	4
	.word	0
_Label_776:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_777:
	.ascii	"Pself\0"
	.align
_Label_778:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_775\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_774\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_2990:
	push	r0
	sub	r1,1,r1
	bne	_Label_2990
	mov	241,r13		! source line 241
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	245,r13		! source line 245
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_782		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_782
!	jmp	_Label_781
_Label_781:
! THEN...
	mov	247,r13		! source line 247
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_783 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_783  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	247,r13		! source line 247
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_782:
! ASSIGNMENT STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_785		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_785
!	jmp	_Label_784
_Label_784:
! THEN...
	mov	251,r13		! source line 251
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
	mov	251,r13		! source line 251
	mov	"\0\0SE",r10
!   _temp_786 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_787 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_787 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0SE",r10
!   _temp_788 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_785:
! ASSIGNMENT STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	255,r13		! source line 255
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_789
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_790
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_791
	.word	-12
	.word	4
	.word	_Label_792
	.word	-16
	.word	4
	.word	_Label_793
	.word	-20
	.word	4
	.word	_Label_794
	.word	-24
	.word	4
	.word	_Label_795
	.word	-28
	.word	4
	.word	_Label_796
	.word	-32
	.word	4
	.word	0
_Label_789:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_790:
	.ascii	"Pself\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_788\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_787\0"
	.align
_Label_793:
	.byte	'?'
	.ascii	"_temp_786\0"
	.align
_Label_794:
	.byte	'?'
	.ascii	"_temp_783\0"
	.align
_Label_795:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_796:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_2991:
	push	r0
	sub	r1,1,r1
	bne	_Label_2991
	mov	260,r13		! source line 260
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	263,r13		! source line 263
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_798		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_798
!	jmp	_Label_797
_Label_797:
! THEN...
	mov	265,r13		! source line 265
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_799 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_799  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	265,r13		! source line 265
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_798:
! ASSIGNMENT STATEMENT...
	mov	267,r13		! source line 267
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_801		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_801
!	jmp	_Label_800
_Label_800:
! THEN...
	mov	269,r13		! source line 269
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   _temp_802 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_801:
! ASSIGNMENT STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	272,r13		! source line 272
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	272,r13		! source line 272
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_803
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_804
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_805
	.word	-12
	.word	4
	.word	_Label_806
	.word	-16
	.word	4
	.word	_Label_807
	.word	-20
	.word	4
	.word	0
_Label_803:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_804:
	.ascii	"Pself\0"
	.align
_Label_805:
	.byte	'?'
	.ascii	"_temp_802\0"
	.align
_Label_806:
	.byte	'?'
	.ascii	"_temp_799\0"
	.align
_Label_807:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_808
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_808:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_809
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_809:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_2992:
	push	r0
	sub	r1,1,r1
	bne	_Label_2992
	mov	295,r13		! source line 295
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_811
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_812
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_813
	.word	-12
	.word	4
	.word	0
_Label_811:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_812:
	.ascii	"Pself\0"
	.align
_Label_813:
	.byte	'?'
	.ascii	"_temp_810\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_2993:
	push	r0
	sub	r1,1,r1
	bne	_Label_2993
	mov	301,r13		! source line 301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	304,r13		! source line 304
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_815		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_815
!	jmp	_Label_814
_Label_814:
! THEN...
	mov	305,r13		! source line 305
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_816 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_816  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	305,r13		! source line 305
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_815:
! ASSIGNMENT STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	307,r13		! source line 307
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_820		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_820
!   _temp_819 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_821
_Label_820:
!   _temp_819 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_821:
!   if _temp_819 then goto _Label_818 else goto _Label_817
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_817
	jmp	_Label_818
_Label_817:
! THEN...
	mov	309,r13		! source line 309
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_822
_Label_818:
! ELSE...
	mov	311,r13		! source line 311
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   _temp_823 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_822:
! ASSIGNMENT STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	314,r13		! source line 314
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_824
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_825
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_826
	.word	-16
	.word	4
	.word	_Label_827
	.word	-9
	.word	1
	.word	_Label_828
	.word	-20
	.word	4
	.word	_Label_829
	.word	-24
	.word	4
	.word	0
_Label_824:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_825:
	.ascii	"Pself\0"
	.align
_Label_826:
	.byte	'?'
	.ascii	"_temp_823\0"
	.align
_Label_827:
	.byte	'C'
	.ascii	"_temp_819\0"
	.align
_Label_828:
	.byte	'?'
	.ascii	"_temp_816\0"
	.align
_Label_829:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_2994:
	push	r0
	sub	r1,1,r1
	bne	_Label_2994
	mov	319,r13		! source line 319
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_831		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_831
!	jmp	_Label_830
_Label_830:
! THEN...
	mov	324,r13		! source line 324
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_832 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_832  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	324,r13		! source line 324
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_831:
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	326,r13		! source line 326
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0AS",r10
	mov	327,r13		! source line 327
	mov	"\0\0SE",r10
!   _temp_833 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_835		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_835
!	jmp	_Label_834
_Label_834:
! THEN...
	mov	329,r13		! source line 329
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_836 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_836 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0SE",r10
!   _temp_837 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	331,r13		! source line 331
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_838
_Label_835:
! ELSE...
	mov	333,r13		! source line 333
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_838:
! ASSIGNMENT STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	335,r13		! source line 335
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_839
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_840
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_841
	.word	-12
	.word	4
	.word	_Label_842
	.word	-16
	.word	4
	.word	_Label_843
	.word	-20
	.word	4
	.word	_Label_844
	.word	-24
	.word	4
	.word	_Label_845
	.word	-28
	.word	4
	.word	_Label_846
	.word	-32
	.word	4
	.word	0
_Label_839:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_840:
	.ascii	"Pself\0"
	.align
_Label_841:
	.byte	'?'
	.ascii	"_temp_837\0"
	.align
_Label_842:
	.byte	'?'
	.ascii	"_temp_836\0"
	.align
_Label_843:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_832\0"
	.align
_Label_845:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_846:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_2995:
	push	r0
	sub	r1,1,r1
	bne	_Label_2995
	mov	340,r13		! source line 340
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_849		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_849
!	jmp	_Label_848
_Label_848:
!   _temp_847 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_850
_Label_849:
!   _temp_847 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_850:
!   ReturnResult: _temp_847  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_851
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_852
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_853
	.word	-9
	.word	1
	.word	0
_Label_851:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_852:
	.ascii	"Pself\0"
	.align
_Label_853:
	.byte	'C'
	.ascii	"_temp_847\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_854
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_854:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_855
	.word	_sourceFileName
	.word	153		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_855:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_2996:
	push	r0
	sub	r1,1,r1
	bne	_Label_2996
	mov	381,r13		! source line 381
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	382,r13		! source line 382
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_857
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_858
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_859
	.word	-12
	.word	4
	.word	0
_Label_857:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_858:
	.ascii	"Pself\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_856\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_2997:
	push	r0
	sub	r1,1,r1
	bne	_Label_2997
	mov	387,r13		! source line 387
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	390,r13		! source line 390
	mov	"\0\0IF",r10
	mov	390,r13		! source line 390
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_862  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_862 then goto _Label_861 else goto _Label_860
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_860
	jmp	_Label_861
_Label_860:
! THEN...
	mov	391,r13		! source line 391
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_863 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_863  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	391,r13		! source line 391
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_861:
! ASSIGNMENT STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	393,r13		! source line 393
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   _temp_864 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_865
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_866
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_867
	.word	12
	.word	4
	.word	_Label_868
	.word	-16
	.word	4
	.word	_Label_869
	.word	-20
	.word	4
	.word	_Label_870
	.word	-9
	.word	1
	.word	_Label_871
	.word	-24
	.word	4
	.word	0
_Label_865:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_866:
	.ascii	"Pself\0"
	.align
_Label_867:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_868:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_869:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_870:
	.byte	'C'
	.ascii	"_temp_862\0"
	.align
_Label_871:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_2998:
	push	r0
	sub	r1,1,r1
	bne	_Label_2998
	mov	403,r13		! source line 403
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	407,r13		! source line 407
	mov	"\0\0IF",r10
	mov	407,r13		! source line 407
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_874  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_874 then goto _Label_873 else goto _Label_872
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_872
	jmp	_Label_873
_Label_872:
! THEN...
	mov	408,r13		! source line 408
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_875 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_875  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	408,r13		! source line 408
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_873:
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	410,r13		! source line 410
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0AS",r10
	mov	411,r13		! source line 411
	mov	"\0\0SE",r10
!   _temp_876 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_878		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_878
!	jmp	_Label_877
_Label_877:
! THEN...
	mov	413,r13		! source line 413
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_879 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_879 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0SE",r10
!   _temp_880 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_878:
! ASSIGNMENT STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	416,r13		! source line 416
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_881
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_882
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_883
	.word	12
	.word	4
	.word	_Label_884
	.word	-16
	.word	4
	.word	_Label_885
	.word	-20
	.word	4
	.word	_Label_886
	.word	-24
	.word	4
	.word	_Label_887
	.word	-28
	.word	4
	.word	_Label_888
	.word	-9
	.word	1
	.word	_Label_889
	.word	-32
	.word	4
	.word	_Label_890
	.word	-36
	.word	4
	.word	0
_Label_881:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_882:
	.ascii	"Pself\0"
	.align
_Label_883:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_884:
	.byte	'?'
	.ascii	"_temp_880\0"
	.align
_Label_885:
	.byte	'?'
	.ascii	"_temp_879\0"
	.align
_Label_886:
	.byte	'?'
	.ascii	"_temp_876\0"
	.align
_Label_887:
	.byte	'?'
	.ascii	"_temp_875\0"
	.align
_Label_888:
	.byte	'C'
	.ascii	"_temp_874\0"
	.align
_Label_889:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_890:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_2999:
	push	r0
	sub	r1,1,r1
	bne	_Label_2999
	mov	421,r13		! source line 421
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0IF",r10
	mov	425,r13		! source line 425
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_893  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_893 then goto _Label_892 else goto _Label_891
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_891
	jmp	_Label_892
_Label_891:
! THEN...
	mov	426,r13		! source line 426
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_894 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_894  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	426,r13		! source line 426
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_892:
! ASSIGNMENT STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	428,r13		! source line 428
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0WH",r10
_Label_895:
!	jmp	_Label_896
_Label_896:
	mov	429,r13		! source line 429
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0AS",r10
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_898 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_899
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_899
	jmp	_Label_900
_Label_899:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0BR",r10
	jmp	_Label_897
! END IF...
_Label_900:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_901 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_901 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_902 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_895
_Label_897:
! ASSIGNMENT STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	437,r13		! source line 437
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_903
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_904
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_905
	.word	12
	.word	4
	.word	_Label_906
	.word	-16
	.word	4
	.word	_Label_907
	.word	-20
	.word	4
	.word	_Label_908
	.word	-24
	.word	4
	.word	_Label_909
	.word	-28
	.word	4
	.word	_Label_910
	.word	-9
	.word	1
	.word	_Label_911
	.word	-32
	.word	4
	.word	_Label_912
	.word	-36
	.word	4
	.word	0
_Label_903:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_904:
	.ascii	"Pself\0"
	.align
_Label_905:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_906:
	.byte	'?'
	.ascii	"_temp_902\0"
	.align
_Label_907:
	.byte	'?'
	.ascii	"_temp_901\0"
	.align
_Label_908:
	.byte	'?'
	.ascii	"_temp_898\0"
	.align
_Label_909:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_910:
	.byte	'C'
	.ascii	"_temp_893\0"
	.align
_Label_911:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_912:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_913
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_913:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_914
	.word	_sourceFileName
	.word	166		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_914:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_3000:
	push	r0
	sub	r1,1,r1
	bne	_Label_3000
	mov	448,r13		! source line 448
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	453,r13		! source line 453
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	454,r13		! source line 454
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0AS",r10
!   _temp_915 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_915) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_915 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	457,r13		! source line 457
	mov	"\0\0AS",r10
!   _temp_916 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_916 [0 ] into _temp_917
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
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
	store	r2,[r14+-180]
!   Data Move: *_temp_917 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0AS",r10
!   _temp_918 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_918 [999 ] into _temp_919
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
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
	store	r2,[r14+-172]
!   Data Move: *_temp_919 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
!   _temp_920 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_920 [999 ] into _temp_921
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
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
	store	r2,[r14+-164]
!   stackTop = _temp_921		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_922 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_924 = &_temp_923
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_924 = _temp_924 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_926:
!   Data Move: *_temp_924 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_924 = _temp_924 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_925 = _temp_925 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_925) then goto _Label_926
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_926
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_927 = &_temp_923
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3001
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3001:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_922 = *_temp_927  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3002:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3002
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0AS",r10
!   _temp_928 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_930 = &_temp_929
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_930 = _temp_930 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_932:
!   Data Move: *_temp_930 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_930 = _temp_930 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_931 = _temp_931 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_931) then goto _Label_932
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_932
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_933 = &_temp_929
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3003
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3003:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_928 = *_temp_933  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3004:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3004
! RETURN STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_934
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_935
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_936
	.word	12
	.word	4
	.word	_Label_937
	.word	-12
	.word	4
	.word	_Label_938
	.word	-16
	.word	4
	.word	_Label_939
	.word	-20
	.word	4
	.word	_Label_940
	.word	-84
	.word	64
	.word	_Label_941
	.word	-88
	.word	4
	.word	_Label_942
	.word	-92
	.word	4
	.word	_Label_943
	.word	-96
	.word	4
	.word	_Label_944
	.word	-100
	.word	4
	.word	_Label_945
	.word	-156
	.word	56
	.word	_Label_946
	.word	-160
	.word	4
	.word	_Label_947
	.word	-164
	.word	4
	.word	_Label_948
	.word	-168
	.word	4
	.word	_Label_949
	.word	-172
	.word	4
	.word	_Label_950
	.word	-176
	.word	4
	.word	_Label_951
	.word	-180
	.word	4
	.word	_Label_952
	.word	-184
	.word	4
	.word	_Label_953
	.word	-188
	.word	4
	.word	0
_Label_934:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_935:
	.ascii	"Pself\0"
	.align
_Label_936:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_931\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_930\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_941:
	.byte	'?'
	.ascii	"_temp_928\0"
	.align
_Label_942:
	.byte	'?'
	.ascii	"_temp_927\0"
	.align
_Label_943:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_944:
	.byte	'?'
	.ascii	"_temp_924\0"
	.align
_Label_945:
	.byte	'?'
	.ascii	"_temp_923\0"
	.align
_Label_946:
	.byte	'?'
	.ascii	"_temp_922\0"
	.align
_Label_947:
	.byte	'?'
	.ascii	"_temp_921\0"
	.align
_Label_948:
	.byte	'?'
	.ascii	"_temp_920\0"
	.align
_Label_949:
	.byte	'?'
	.ascii	"_temp_919\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_918\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_917\0"
	.align
_Label_952:
	.byte	'?'
	.ascii	"_temp_916\0"
	.align
_Label_953:
	.byte	'?'
	.ascii	"_temp_915\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_3005:
	push	r0
	sub	r1,1,r1
	bne	_Label_3005
	mov	467,r13		! source line 467
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	478,r13		! source line 478
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	480,r13		! source line 480
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	481,r13		! source line 481
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_954 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_954  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_956 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_955  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	486,r13		! source line 486
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_957
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_958
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_959
	.word	12
	.word	4
	.word	_Label_960
	.word	16
	.word	4
	.word	_Label_961
	.word	-12
	.word	4
	.word	_Label_962
	.word	-16
	.word	4
	.word	_Label_963
	.word	-20
	.word	4
	.word	_Label_964
	.word	-24
	.word	4
	.word	_Label_965
	.word	-28
	.word	4
	.word	0
_Label_957:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_958:
	.ascii	"Pself\0"
	.align
_Label_959:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_960:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_961:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_962:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_963:
	.byte	'?'
	.ascii	"_temp_954\0"
	.align
_Label_964:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_965:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_3006:
	push	r0
	sub	r1,1,r1
	bne	_Label_3006
	mov	491,r13		! source line 491
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	507,r13		! source line 507
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_968 == _P_Kernel_currentThread then goto _Label_967		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_967
!	jmp	_Label_966
_Label_966:
! THEN...
	mov	508,r13		! source line 508
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_969 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_969  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	508,r13		! source line 508
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_967:
! ASSIGNMENT STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	510,r13		! source line 510
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0AS",r10
	mov	514,r13		! source line 514
	mov	"\0\0SE",r10
!   _temp_970 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_972		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_972
!	jmp	_Label_971
_Label_971:
! THEN...
	mov	519,r13		! source line 519
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_974		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_974
!	jmp	_Label_973
_Label_973:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_975 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_975  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	520,r13		! source line 520
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_974:
! ASSIGNMENT STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_977 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_976  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	524,r13		! source line 524
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_972:
! ASSIGNMENT STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	526,r13		! source line 526
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	526,r13		! source line 526
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_978
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_979
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_980
	.word	-12
	.word	4
	.word	_Label_981
	.word	-16
	.word	4
	.word	_Label_982
	.word	-20
	.word	4
	.word	_Label_983
	.word	-24
	.word	4
	.word	_Label_984
	.word	-28
	.word	4
	.word	_Label_985
	.word	-32
	.word	4
	.word	_Label_986
	.word	-36
	.word	4
	.word	_Label_987
	.word	-40
	.word	4
	.word	_Label_988
	.word	-44
	.word	4
	.word	0
_Label_978:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_979:
	.ascii	"Pself\0"
	.align
_Label_980:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_981:
	.byte	'?'
	.ascii	"_temp_976\0"
	.align
_Label_982:
	.byte	'?'
	.ascii	"_temp_975\0"
	.align
_Label_983:
	.byte	'?'
	.ascii	"_temp_970\0"
	.align
_Label_984:
	.byte	'?'
	.ascii	"_temp_969\0"
	.align
_Label_985:
	.byte	'?'
	.ascii	"_temp_968\0"
	.align
_Label_986:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_987:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_988:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_3007:
	push	r0
	sub	r1,1,r1
	bne	_Label_3007
	mov	531,r13		! source line 531
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	543,r13		! source line 543
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_990		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_990
!	jmp	_Label_989
_Label_989:
! THEN...
	mov	544,r13		! source line 544
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_991 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_991  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	544,r13		! source line 544
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_990:
! IF STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_994 == _P_Kernel_currentThread then goto _Label_993		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_993
!	jmp	_Label_992
_Label_992:
! THEN...
	mov	548,r13		! source line 548
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_995 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_995  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	548,r13		! source line 548
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_993:
! ASSIGNMENT STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	554,r13		! source line 554
	mov	"\0\0AS",r10
	mov	554,r13		! source line 554
	mov	"\0\0SE",r10
!   _temp_996 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_997
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_997
	jmp	_Label_998
_Label_997:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_999 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_999  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	556,r13		! source line 556
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_998:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	558,r13		! source line 558
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	558,r13		! source line 558
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_1000
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1001
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1002
	.word	-12
	.word	4
	.word	_Label_1003
	.word	-16
	.word	4
	.word	_Label_1004
	.word	-20
	.word	4
	.word	_Label_1005
	.word	-24
	.word	4
	.word	_Label_1006
	.word	-28
	.word	4
	.word	_Label_1007
	.word	-32
	.word	4
	.word	0
_Label_1000:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1001:
	.ascii	"Pself\0"
	.align
_Label_1002:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1003:
	.byte	'?'
	.ascii	"_temp_996\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_995\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_994\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_991\0"
	.align
_Label_1007:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_3008:
	push	r0
	sub	r1,1,r1
	bne	_Label_3008
	mov	563,r13		! source line 563
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0IF",r10
!   _temp_1011 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1011 [0 ] into _temp_1012
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1010 = *_temp_1012  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1010 == 606348324 then goto _Label_1009		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1009
!	jmp	_Label_1008
_Label_1008:
! THEN...
	mov	570,r13		! source line 570
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1013 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1013  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	570,r13		! source line 570
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1014
_Label_1009:
! ELSE...
	mov	571,r13		! source line 571
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0IF",r10
!   _temp_1018 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1018 [999 ] into _temp_1019
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
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
	store	r2,[r14+-16]
!   Data Move: _temp_1017 = *_temp_1019  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1017 == 606348324 then goto _Label_1016		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1016
!	jmp	_Label_1015
_Label_1015:
! THEN...
	mov	572,r13		! source line 572
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1020 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1020  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	572,r13		! source line 572
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1016:
! END IF...
_Label_1014:
! RETURN STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_1021
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1022
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1023
	.word	-12
	.word	4
	.word	_Label_1024
	.word	-16
	.word	4
	.word	_Label_1025
	.word	-20
	.word	4
	.word	_Label_1026
	.word	-24
	.word	4
	.word	_Label_1027
	.word	-28
	.word	4
	.word	_Label_1028
	.word	-32
	.word	4
	.word	_Label_1029
	.word	-36
	.word	4
	.word	_Label_1030
	.word	-40
	.word	4
	.word	0
_Label_1021:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1022:
	.ascii	"Pself\0"
	.align
_Label_1023:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1024:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1025:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1026:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1027:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1028:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1029:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
_Label_1030:
	.byte	'?'
	.ascii	"_temp_1010\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_3009:
	push	r0
	sub	r1,1,r1
	bne	_Label_3009
	mov	578,r13		! source line 578
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	584,r13		! source line 584
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	584,r13		! source line 584
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1031 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1031  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	585,r13		! source line 585
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	586,r13		! source line 586
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1032 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1032  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	587,r13		! source line 587
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1033  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	588,r13		! source line 588
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1034 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1034  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	589,r13		! source line 589
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1035 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1035  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	591,r13		! source line 591
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1040 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1041 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1040  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1036:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1041 then goto _Label_1039		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1039
_Label_1037:
	mov	591,r13		! source line 591
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1042 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1042  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1043 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1043  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1044 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1044  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1046 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1046 [i ] into _temp_1047
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
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
	store	r2,[r14+-140]
!   Data Move: _temp_1045 = *_temp_1047  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1045  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	595,r13		! source line 595
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1048 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1048  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	596,r13		! source line 596
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1050 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1050 [i ] into _temp_1051
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
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
	store	r2,[r14+-124]
!   Data Move: _temp_1049 = *_temp_1051  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1049  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	597,r13		! source line 597
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1052 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1052  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1038:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1036
! END FOR
_Label_1039:
! CALL STATEMENT...
!   _temp_1053 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-116]
!   _temp_1054 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1053  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1054  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1055 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-108]
!   _temp_1057 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1057 [0 ] into _temp_1058
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
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
	store	r2,[r14+-96]
!   _temp_1056 = _temp_1058		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1055  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1056  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	602,r13		! source line 602
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1061
	cmp	r1,2
	be	_Label_1062
	cmp	r1,3
	be	_Label_1063
	cmp	r1,4
	be	_Label_1064
	cmp	r1,5
	be	_Label_1065
	jmp	_Label_1059
! CASE 1...
_Label_1061:
! CALL STATEMENT...
!   _temp_1066 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1066  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	604,r13		! source line 604
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	605,r13		! source line 605
	mov	"\0\0BR",r10
	jmp	_Label_1060
! CASE 2...
_Label_1062:
! CALL STATEMENT...
!   _temp_1067 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1067  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	607,r13		! source line 607
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	608,r13		! source line 608
	mov	"\0\0BR",r10
	jmp	_Label_1060
! CASE 3...
_Label_1063:
! CALL STATEMENT...
!   _temp_1068 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1068  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	610,r13		! source line 610
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	611,r13		! source line 611
	mov	"\0\0BR",r10
	jmp	_Label_1060
! CASE 4...
_Label_1064:
! CALL STATEMENT...
!   _temp_1069 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1069  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	613,r13		! source line 613
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	614,r13		! source line 614
	mov	"\0\0BR",r10
	jmp	_Label_1060
! CASE 5...
_Label_1065:
! CALL STATEMENT...
!   _temp_1070 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1070  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	616,r13		! source line 616
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0BR",r10
	jmp	_Label_1060
! DEFAULT CASE...
_Label_1059:
! CALL STATEMENT...
!   _temp_1071 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1071  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	619,r13		! source line 619
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1060:
! CALL STATEMENT...
!   _temp_1072 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1072  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	621,r13		! source line 621
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	623,r13		! source line 623
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1073 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1073  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	624,r13		! source line 624
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	625,r13		! source line 625
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1078 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1079 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1078  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1074:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1079 then goto _Label_1077		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1077
_Label_1075:
	mov	625,r13		! source line 625
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1080 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1080  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	626,r13		! source line 626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1081 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1081  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	627,r13		! source line 627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1082 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1082  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	628,r13		! source line 628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1084 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1084 [i ] into _temp_1085
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   Data Move: _temp_1083 = *_temp_1085  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1083  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	629,r13		! source line 629
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1086 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1086  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	630,r13		! source line 630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1088 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1088 [i ] into _temp_1089
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
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
	store	r2,[r14+-16]
!   Data Move: _temp_1087 = *_temp_1089  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1087  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	631,r13		! source line 631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1090 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1090  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	632,r13		! source line 632
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1076:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1074
! END FOR
_Label_1077:
! ASSIGNMENT STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	634,r13		! source line 634
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1091
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1092
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1093
	.word	-12
	.word	4
	.word	_Label_1094
	.word	-16
	.word	4
	.word	_Label_1095
	.word	-20
	.word	4
	.word	_Label_1096
	.word	-24
	.word	4
	.word	_Label_1097
	.word	-28
	.word	4
	.word	_Label_1098
	.word	-32
	.word	4
	.word	_Label_1099
	.word	-36
	.word	4
	.word	_Label_1100
	.word	-40
	.word	4
	.word	_Label_1101
	.word	-44
	.word	4
	.word	_Label_1102
	.word	-48
	.word	4
	.word	_Label_1103
	.word	-52
	.word	4
	.word	_Label_1104
	.word	-56
	.word	4
	.word	_Label_1105
	.word	-60
	.word	4
	.word	_Label_1106
	.word	-64
	.word	4
	.word	_Label_1107
	.word	-68
	.word	4
	.word	_Label_1108
	.word	-72
	.word	4
	.word	_Label_1109
	.word	-76
	.word	4
	.word	_Label_1110
	.word	-80
	.word	4
	.word	_Label_1111
	.word	-84
	.word	4
	.word	_Label_1112
	.word	-88
	.word	4
	.word	_Label_1113
	.word	-92
	.word	4
	.word	_Label_1114
	.word	-96
	.word	4
	.word	_Label_1115
	.word	-100
	.word	4
	.word	_Label_1116
	.word	-104
	.word	4
	.word	_Label_1117
	.word	-108
	.word	4
	.word	_Label_1118
	.word	-112
	.word	4
	.word	_Label_1119
	.word	-116
	.word	4
	.word	_Label_1120
	.word	-120
	.word	4
	.word	_Label_1121
	.word	-124
	.word	4
	.word	_Label_1122
	.word	-128
	.word	4
	.word	_Label_1123
	.word	-132
	.word	4
	.word	_Label_1124
	.word	-136
	.word	4
	.word	_Label_1125
	.word	-140
	.word	4
	.word	_Label_1126
	.word	-144
	.word	4
	.word	_Label_1127
	.word	-148
	.word	4
	.word	_Label_1128
	.word	-152
	.word	4
	.word	_Label_1129
	.word	-156
	.word	4
	.word	_Label_1130
	.word	-160
	.word	4
	.word	_Label_1131
	.word	-164
	.word	4
	.word	_Label_1132
	.word	-168
	.word	4
	.word	_Label_1133
	.word	-172
	.word	4
	.word	_Label_1134
	.word	-176
	.word	4
	.word	_Label_1135
	.word	-180
	.word	4
	.word	_Label_1136
	.word	-184
	.word	4
	.word	_Label_1137
	.word	-188
	.word	4
	.word	_Label_1138
	.word	-192
	.word	4
	.word	_Label_1139
	.word	-196
	.word	4
	.word	0
_Label_1091:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1092:
	.ascii	"Pself\0"
	.align
_Label_1093:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1094:
	.byte	'?'
	.ascii	"_temp_1089\0"
	.align
_Label_1095:
	.byte	'?'
	.ascii	"_temp_1088\0"
	.align
_Label_1096:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1097:
	.byte	'?'
	.ascii	"_temp_1086\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1085\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1084\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1083\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1082\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1081\0"
	.align
_Label_1103:
	.byte	'?'
	.ascii	"_temp_1080\0"
	.align
_Label_1104:
	.byte	'?'
	.ascii	"_temp_1079\0"
	.align
_Label_1105:
	.byte	'?'
	.ascii	"_temp_1078\0"
	.align
_Label_1106:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1107:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1108:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1109:
	.byte	'?'
	.ascii	"_temp_1070\0"
	.align
_Label_1110:
	.byte	'?'
	.ascii	"_temp_1069\0"
	.align
_Label_1111:
	.byte	'?'
	.ascii	"_temp_1068\0"
	.align
_Label_1112:
	.byte	'?'
	.ascii	"_temp_1067\0"
	.align
_Label_1113:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1114:
	.byte	'?'
	.ascii	"_temp_1058\0"
	.align
_Label_1115:
	.byte	'?'
	.ascii	"_temp_1057\0"
	.align
_Label_1116:
	.byte	'?'
	.ascii	"_temp_1056\0"
	.align
_Label_1117:
	.byte	'?'
	.ascii	"_temp_1055\0"
	.align
_Label_1118:
	.byte	'?'
	.ascii	"_temp_1054\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1053\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1049\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1048\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1047\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1046\0"
	.align
_Label_1127:
	.byte	'?'
	.ascii	"_temp_1045\0"
	.align
_Label_1128:
	.byte	'?'
	.ascii	"_temp_1044\0"
	.align
_Label_1129:
	.byte	'?'
	.ascii	"_temp_1043\0"
	.align
_Label_1130:
	.byte	'?'
	.ascii	"_temp_1042\0"
	.align
_Label_1131:
	.byte	'?'
	.ascii	"_temp_1041\0"
	.align
_Label_1132:
	.byte	'?'
	.ascii	"_temp_1040\0"
	.align
_Label_1133:
	.byte	'?'
	.ascii	"_temp_1035\0"
	.align
_Label_1134:
	.byte	'?'
	.ascii	"_temp_1034\0"
	.align
_Label_1135:
	.byte	'?'
	.ascii	"_temp_1033\0"
	.align
_Label_1136:
	.byte	'?'
	.ascii	"_temp_1032\0"
	.align
_Label_1137:
	.byte	'?'
	.ascii	"_temp_1031\0"
	.align
_Label_1138:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1139:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1140
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1140:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1141
	.word	_sourceFileName
	.word	193		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1141:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11478,r1
_Label_3010:
	push	r0
	sub	r1,1,r1
	bne	_Label_3010
	mov	689,r13		! source line 689
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1142 = _StringConst_107
	set	_StringConst_107,r1
	set	-45908,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1142  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	695,r13		! source line 695
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	698,r13		! source line 698
	mov	"\0\0AS",r10
!   _temp_1143 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45904,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1145 = &_temp_1144
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-4256]
!   _temp_1145 = _temp_1145 + 4
	load	[r14+-4256],r1
	add	r1,4,r1
	store	r1,[r14+-4256]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1147 = zeros  (sizeInBytes=4164)
	add	r14,-4248,r4
	mov	1041,r3
_Label_3011:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3011
!   _temp_1147 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4248]
	mov	10,r1
	store	r1,[r14+-4252]
_Label_1149:
!   Data Move: *_temp_1145 = _temp_1147  (sizeInBytes=4164)
	add	r14,-4248,r5
	load	[r14+-4256],r4
	mov	1041,r3
_Label_3012:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3012
!   _temp_1145 = _temp_1145 + 4164
	load	[r14+-4256],r1
	add	r1,4164,r1
	store	r1,[r14+-4256]
!   _temp_1146 = _temp_1146 + -1
	load	[r14+-4252],r1
	add	r1,-1,r1
	store	r1,[r14+-4252]
!   if intNotZero (_temp_1146) then goto _Label_1149
	load	[r14+-4252],r1
	cmp	r1,r0
	bne	_Label_1149
!   Initialize the array size...
	mov	10,r1
	set	-45900,r2
	store	r1,[r14+r2]
!   _temp_1150 = &_temp_1144
	set	-45900,r1
	add	r14,r1,r1
	store	r1,[r14+-80]
!   make sure array has size 10
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3013
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3013:
!   make sure array has size 10
	load	[r14+-80],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1143 = *_temp_1150  (sizeInBytes=41644)
	load	[r14+-80],r5
	set	-45904,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3014:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3014
! ASSIGNMENT STATEMENT...
	mov	699,r13		! source line 699
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	700,r13		! source line 700
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: threadManagerLock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   threadManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! ASSIGNMENT STATEMENT...
	mov	701,r13		! source line 701
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aThreadBecameFree = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aThreadBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! FOR STATEMENT...
	mov	704,r13		! source line 704
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1158 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1159 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1158  (sizeInBytes=4)
	load	[r14+-64],r1
	set	-45912,r2
	store	r1,[r14+r2]
_Label_1154:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1159 then goto _Label_1157		
	set	-45912,r1
	load	[r14+r1],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1157
_Label_1155:
	mov	704,r13		! source line 704
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	705,r13		! source line 705
	mov	"\0\0SE",r10
!   _temp_1160 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-56]
!   _temp_1161 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   Move address of _temp_1161 [i ] into _temp_1162
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_1160  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	706,r13		! source line 706
	mov	"\0\0AS",r10
!   _temp_1163 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1163 [i ] into _temp_1164
!     make sure index expr is >= 0
	set	-45912,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1165 = _temp_1164 + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1165 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	707,r13		! source line 707
	mov	"\0\0SE",r10
!   _temp_1167 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1167 [i ] into _temp_1168
!     make sure index expr is >= 0
	set	-45912,r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1166 = _temp_1168		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   _temp_1169 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_1166  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1156:
!   i = i + 1
	set	-45912,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45912,r2
	store	r1,[r14+r2]
	jmp	_Label_1154
! END FOR
_Label_1157:
! SEND STATEMENT...
	mov	711,r13		! source line 711
	mov	"\0\0SE",r10
!   _temp_1170 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	712,r13		! source line 712
	mov	"\0\0SE",r10
!   _temp_1171 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	712,r13		! source line 712
	mov	"\0\0RE",r10
	set	45916,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1172
	.word	4		! total size of parameters
	.word	45912		! frame size = 45912
	.word	_Label_1173
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1174
	.word	-12
	.word	4
	.word	_Label_1175
	.word	-16
	.word	4
	.word	_Label_1176
	.word	-20
	.word	4
	.word	_Label_1177
	.word	-24
	.word	4
	.word	_Label_1178
	.word	-28
	.word	4
	.word	_Label_1179
	.word	-32
	.word	4
	.word	_Label_1180
	.word	-36
	.word	4
	.word	_Label_1181
	.word	-40
	.word	4
	.word	_Label_1182
	.word	-44
	.word	4
	.word	_Label_1183
	.word	-48
	.word	4
	.word	_Label_1184
	.word	-52
	.word	4
	.word	_Label_1185
	.word	-56
	.word	4
	.word	_Label_1186
	.word	-60
	.word	4
	.word	_Label_1187
	.word	-64
	.word	4
	.word	_Label_1188
	.word	-68
	.word	4
	.word	_Label_1189
	.word	-72
	.word	4
	.word	_Label_1190
	.word	-76
	.word	4
	.word	_Label_1191
	.word	-80
	.word	4
	.word	_Label_1192
	.word	-84
	.word	4
	.word	_Label_1193
	.word	-4248
	.word	4164
	.word	_Label_1194
	.word	-4252
	.word	4
	.word	_Label_1195
	.word	-4256
	.word	4
	.word	_Label_1196
	.word	-45900
	.word	41644
	.word	_Label_1197
	.word	-45904
	.word	4
	.word	_Label_1198
	.word	-45908
	.word	4
	.word	_Label_1199
	.word	-45912
	.word	4
	.word	0
_Label_1172:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1173:
	.ascii	"Pself\0"
	.align
_Label_1174:
	.byte	'?'
	.ascii	"_temp_1171\0"
	.align
_Label_1175:
	.byte	'?'
	.ascii	"_temp_1170\0"
	.align
_Label_1176:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1177:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1178:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1179:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1180:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1181:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1182:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1183:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1184:
	.byte	'?'
	.ascii	"_temp_1161\0"
	.align
_Label_1185:
	.byte	'?'
	.ascii	"_temp_1160\0"
	.align
_Label_1186:
	.byte	'?'
	.ascii	"_temp_1159\0"
	.align
_Label_1187:
	.byte	'?'
	.ascii	"_temp_1158\0"
	.align
_Label_1188:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1199:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_3015:
	push	r0
	sub	r1,1,r1
	bne	_Label_3015
	mov	718,r13		! source line 718
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	725,r13		! source line 725
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1200 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1200  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	726,r13		! source line 726
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	727,r13		! source line 727
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1205 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1206 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1205  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1201:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1206 then goto _Label_1204		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1204
_Label_1202:
	mov	727,r13		! source line 727
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1207 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1207  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	729,r13		! source line 729
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1208 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1208  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	730,r13		! source line 730
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1210 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1210 [i ] into _temp_1211
!     make sure index expr is >= 0
	load	[r14+-56],r2
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
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1209 = _temp_1211		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1209  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	731,r13		! source line 731
	mov	"\0\0CA",r10
	call	_function_215_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1203:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1201
! END FOR
_Label_1204:
! CALL STATEMENT...
!   _temp_1212 = _StringConst_112
	set	_StringConst_112,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1212  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	734,r13		! source line 734
	mov	"\0\0SE",r10
!   _temp_1213 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1214 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1213  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	735,r13		! source line 735
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	736,r13		! source line 736
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1215
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1216
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1217
	.word	-12
	.word	4
	.word	_Label_1218
	.word	-16
	.word	4
	.word	_Label_1219
	.word	-20
	.word	4
	.word	_Label_1220
	.word	-24
	.word	4
	.word	_Label_1221
	.word	-28
	.word	4
	.word	_Label_1222
	.word	-32
	.word	4
	.word	_Label_1223
	.word	-36
	.word	4
	.word	_Label_1224
	.word	-40
	.word	4
	.word	_Label_1225
	.word	-44
	.word	4
	.word	_Label_1226
	.word	-48
	.word	4
	.word	_Label_1227
	.word	-52
	.word	4
	.word	_Label_1228
	.word	-56
	.word	4
	.word	_Label_1229
	.word	-60
	.word	4
	.word	0
_Label_1215:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1216:
	.ascii	"Pself\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1214\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1213\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1212\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1211\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1210\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1209\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1208\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1207\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1206\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1205\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1200\0"
	.align
_Label_1228:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1229:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_3016:
	push	r0
	sub	r1,1,r1
	bne	_Label_3016
	mov	741,r13		! source line 741
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	750,r13		! source line 750
	mov	"\0\0SE",r10
!   _temp_1230 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	755,r13		! source line 755
	mov	"\0\0WH",r10
_Label_1231:
	mov	755,r13		! source line 755
	mov	"\0\0SE",r10
!   _temp_1234 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1232 else goto _Label_1233
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1233
	jmp	_Label_1232
_Label_1232:
	mov	755,r13		! source line 755
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	756,r13		! source line 756
	mov	"\0\0SE",r10
!   _temp_1235 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1236 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1235  sizeInBytes=4
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
	jmp	_Label_1231
_Label_1233:
! ASSIGNMENT STATEMENT...
	mov	760,r13		! source line 760
	mov	"\0\0AS",r10
	mov	760,r13		! source line 760
	mov	"\0\0SE",r10
!   _temp_1237 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=rThreadPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0AS",r10
!   if intIsZero (rThreadPtr) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1238 = rThreadPtr + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1238 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	764,r13		! source line 764
	mov	"\0\0SE",r10
!   _temp_1239 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	765,r13		! source line 765
	mov	"\0\0RE",r10
!   ReturnResult: rThreadPtr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1240
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1241
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1242
	.word	-12
	.word	4
	.word	_Label_1243
	.word	-16
	.word	4
	.word	_Label_1244
	.word	-20
	.word	4
	.word	_Label_1245
	.word	-24
	.word	4
	.word	_Label_1246
	.word	-28
	.word	4
	.word	_Label_1247
	.word	-32
	.word	4
	.word	_Label_1248
	.word	-36
	.word	4
	.word	_Label_1249
	.word	-40
	.word	4
	.word	0
_Label_1240:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1241:
	.ascii	"Pself\0"
	.align
_Label_1242:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1243:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1244:
	.byte	'?'
	.ascii	"_temp_1237\0"
	.align
_Label_1245:
	.byte	'?'
	.ascii	"_temp_1236\0"
	.align
_Label_1246:
	.byte	'?'
	.ascii	"_temp_1235\0"
	.align
_Label_1247:
	.byte	'?'
	.ascii	"_temp_1234\0"
	.align
_Label_1248:
	.byte	'?'
	.ascii	"_temp_1230\0"
	.align
_Label_1249:
	.byte	'P'
	.ascii	"rThreadPtr\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_3017:
	push	r0
	sub	r1,1,r1
	bne	_Label_3017
	mov	770,r13		! source line 770
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	776,r13		! source line 776
	mov	"\0\0SE",r10
!   _temp_1250 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	779,r13		! source line 779
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1251 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1251 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0SE",r10
!   _temp_1252 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0SE",r10
!   _temp_1253 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1254 = &aThreadBecameFree
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1253  sizeInBytes=4
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
	mov	786,r13		! source line 786
	mov	"\0\0SE",r10
!   _temp_1255 = &threadManagerLock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	786,r13		! source line 786
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1256
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1257
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1258
	.word	12
	.word	4
	.word	_Label_1259
	.word	-12
	.word	4
	.word	_Label_1260
	.word	-16
	.word	4
	.word	_Label_1261
	.word	-20
	.word	4
	.word	_Label_1262
	.word	-24
	.word	4
	.word	_Label_1263
	.word	-28
	.word	4
	.word	_Label_1264
	.word	-32
	.word	4
	.word	0
_Label_1256:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1257:
	.ascii	"Pself\0"
	.align
_Label_1258:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1259:
	.byte	'?'
	.ascii	"_temp_1255\0"
	.align
_Label_1260:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1261:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1262:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1263:
	.byte	'?'
	.ascii	"_temp_1251\0"
	.align
_Label_1264:
	.byte	'?'
	.ascii	"_temp_1250\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1265
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1265:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1266
	.word	_sourceFileName
	.word	214		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1266:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_3018:
	push	r0
	sub	r1,1,r1
	bne	_Label_3018
	mov	799,r13		! source line 799
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	800,r13		! source line 800
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	801,r13		! source line 801
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	802,r13		! source line 802
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3019:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3019
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0SE",r10
!   _temp_1268 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	803,r13		! source line 803
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1269
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1270
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1271
	.word	-12
	.word	4
	.word	_Label_1272
	.word	-16
	.word	4
	.word	0
_Label_1269:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1270:
	.ascii	"Pself\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1268\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1267\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_3020:
	push	r0
	sub	r1,1,r1
	bne	_Label_3020
	mov	813,r13		! source line 813
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1273) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	819,r13		! source line 819
	mov	"\0\0SE",r10
!   _temp_1274 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1275 = _StringConst_113
	set	_StringConst_113,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1275  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	820,r13		! source line 820
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	821,r13		! source line 821
	mov	"\0\0CA",r10
	call	_function_215_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	831,r13		! source line 831
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	831,r13		! source line 831
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1276
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1277
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1278
	.word	-12
	.word	4
	.word	_Label_1279
	.word	-16
	.word	4
	.word	_Label_1280
	.word	-20
	.word	4
	.word	0
_Label_1276:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1277:
	.ascii	"Pself\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1275\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1274\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1273\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_3021:
	push	r0
	sub	r1,1,r1
	bne	_Label_3021
	mov	836,r13		! source line 836
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1281 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1281  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1282  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1283 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1283  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1284 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1284  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	844,r13		! source line 844
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	845,r13		! source line 845
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1286		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1286
!	jmp	_Label_1285
_Label_1285:
! THEN...
	mov	846,r13		! source line 846
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1287 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1287  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	846,r13		! source line 846
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1288
_Label_1286:
! ELSE...
	mov	847,r13		! source line 847
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	847,r13		! source line 847
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1290		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1290
!	jmp	_Label_1289
_Label_1289:
! THEN...
	mov	848,r13		! source line 848
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1291 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1291  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	848,r13		! source line 848
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1292
_Label_1290:
! ELSE...
	mov	849,r13		! source line 849
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	849,r13		! source line 849
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1294		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1294
!	jmp	_Label_1293
_Label_1293:
! THEN...
	mov	850,r13		! source line 850
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1295 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1295  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	850,r13		! source line 850
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1296
_Label_1294:
! ELSE...
	mov	852,r13		! source line 852
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1297 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1297  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	852,r13		! source line 852
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1296:
! END IF...
_Label_1292:
! END IF...
_Label_1288:
! CALL STATEMENT...
!   _temp_1298 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1298  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	854,r13		! source line 854
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	855,r13		! source line 855
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1299 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1299  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	856,r13		! source line 856
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	857,r13		! source line 857
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	858,r13		! source line 858
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	858,r13		! source line 858
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1300
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1301
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1302
	.word	-12
	.word	4
	.word	_Label_1303
	.word	-16
	.word	4
	.word	_Label_1304
	.word	-20
	.word	4
	.word	_Label_1305
	.word	-24
	.word	4
	.word	_Label_1306
	.word	-28
	.word	4
	.word	_Label_1307
	.word	-32
	.word	4
	.word	_Label_1308
	.word	-36
	.word	4
	.word	_Label_1309
	.word	-40
	.word	4
	.word	_Label_1310
	.word	-44
	.word	4
	.word	_Label_1311
	.word	-48
	.word	4
	.word	0
_Label_1300:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1301:
	.ascii	"Pself\0"
	.align
_Label_1302:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1303:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1304:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1305:
	.byte	'?'
	.ascii	"_temp_1295\0"
	.align
_Label_1306:
	.byte	'?'
	.ascii	"_temp_1291\0"
	.align
_Label_1307:
	.byte	'?'
	.ascii	"_temp_1287\0"
	.align
_Label_1308:
	.byte	'?'
	.ascii	"_temp_1284\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1283\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1282\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1281\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1312
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1312:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1313
	.word	_sourceFileName
	.word	234		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1313:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	369,r1
_Label_3022:
	push	r0
	sub	r1,1,r1
	bne	_Label_3022
	mov	869,r13		! source line 869
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1314 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-1472]
!   Prepare Argument: offset=8  value=_temp_1314  sizeInBytes=4
	load	[r14+-1472],r1
	store	r1,[r15+0]
!   Call the function
	mov	878,r13		! source line 878
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	881,r13		! source line 881
	mov	"\0\0AS",r10
!   _temp_1315 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1468]
!   NEW ARRAY Constructor...
!   _temp_1317 = &_temp_1316
	add	r14,-1464,r1
	store	r1,[r14+-220]
!   _temp_1317 = _temp_1317 + 4
	load	[r14+-220],r1
	add	r1,4,r1
	store	r1,[r14+-220]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1319 = zeros  (sizeInBytes=124)
	add	r14,-212,r4
	mov	31,r3
_Label_3023:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3023
!   _temp_1319 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-212]
	mov	10,r1
	store	r1,[r14+-216]
_Label_1321:
!   Data Move: *_temp_1317 = _temp_1319  (sizeInBytes=124)
	add	r14,-212,r5
	load	[r14+-220],r4
	mov	31,r3
_Label_3024:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3024
!   _temp_1317 = _temp_1317 + 124
	load	[r14+-220],r1
	add	r1,124,r1
	store	r1,[r14+-220]
!   _temp_1318 = _temp_1318 + -1
	load	[r14+-216],r1
	add	r1,-1,r1
	store	r1,[r14+-216]
!   if intNotZero (_temp_1318) then goto _Label_1321
	load	[r14+-216],r1
	cmp	r1,r0
	bne	_Label_1321
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1464]
!   _temp_1322 = &_temp_1316
	add	r14,-1464,r1
	store	r1,[r14+-84]
!   make sure array has size 10
	load	[r14+-1468],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3025
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3025:
!   make sure array has size 10
	load	[r14+-84],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1315 = *_temp_1322  (sizeInBytes=1244)
	load	[r14+-84],r5
	load	[r14+-1468],r4
	mov	311,r3
_Label_3026:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3026
! ASSIGNMENT STATEMENT...
	mov	882,r13		! source line 882
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! FOR STATEMENT...
	mov	884,r13		! source line 884
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1328 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-76]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1329 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-72]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1328  (sizeInBytes=4)
	load	[r14+-76],r1
	store	r1,[r14+-1476]
_Label_1324:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1329 then goto _Label_1327		
	load	[r14+-1476],r1
	load	[r14+-72],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1327
_Label_1325:
	mov	884,r13		! source line 884
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	885,r13		! source line 885
	mov	"\0\0SE",r10
!   _temp_1330 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-68]
!   Move address of _temp_1330 [i ] into _temp_1331
!     make sure index expr is >= 0
	load	[r14+-1476],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-68],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	886,r13		! source line 886
	mov	"\0\0AS",r10
!   _temp_1332 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Move address of _temp_1332 [i ] into _temp_1333
!     make sure index expr is >= 0
	load	[r14+-1476],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   _temp_1334 = _temp_1333 + 20
	load	[r14+-56],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_1334 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-52],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	887,r13		! source line 887
	mov	"\0\0SE",r10
!   _temp_1336 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1336 [i ] into _temp_1337
!     make sure index expr is >= 0
	load	[r14+-1476],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_1335 = _temp_1337		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   _temp_1338 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1335  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1326:
!   i = i + 1
	load	[r14+-1476],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1476]
	jmp	_Label_1324
! END FOR
_Label_1327:
! ASSIGNMENT STATEMENT...
	mov	891,r13		! source line 891
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! ASSIGNMENT STATEMENT...
	mov	892,r13		! source line 892
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! ASSIGNMENT STATEMENT...
	mov	893,r13		! source line 893
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0SE",r10
!   _temp_1342 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0SE",r10
!   _temp_1343 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
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
	mov	897,r13		! source line 897
	mov	"\0\0SE",r10
!   _temp_1344 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0AS",r10
!   nextPid = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! RETURN STATEMENT...
	mov	899,r13		! source line 899
	mov	"\0\0RE",r10
	add	r15,1480,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1345
	.word	4		! total size of parameters
	.word	1476		! frame size = 1476
	.word	_Label_1346
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1347
	.word	-12
	.word	4
	.word	_Label_1348
	.word	-16
	.word	4
	.word	_Label_1349
	.word	-20
	.word	4
	.word	_Label_1350
	.word	-24
	.word	4
	.word	_Label_1351
	.word	-28
	.word	4
	.word	_Label_1352
	.word	-32
	.word	4
	.word	_Label_1353
	.word	-36
	.word	4
	.word	_Label_1354
	.word	-40
	.word	4
	.word	_Label_1355
	.word	-44
	.word	4
	.word	_Label_1356
	.word	-48
	.word	4
	.word	_Label_1357
	.word	-52
	.word	4
	.word	_Label_1358
	.word	-56
	.word	4
	.word	_Label_1359
	.word	-60
	.word	4
	.word	_Label_1360
	.word	-64
	.word	4
	.word	_Label_1361
	.word	-68
	.word	4
	.word	_Label_1362
	.word	-72
	.word	4
	.word	_Label_1363
	.word	-76
	.word	4
	.word	_Label_1364
	.word	-80
	.word	4
	.word	_Label_1365
	.word	-84
	.word	4
	.word	_Label_1366
	.word	-88
	.word	4
	.word	_Label_1367
	.word	-212
	.word	124
	.word	_Label_1368
	.word	-216
	.word	4
	.word	_Label_1369
	.word	-220
	.word	4
	.word	_Label_1370
	.word	-1464
	.word	1244
	.word	_Label_1371
	.word	-1468
	.word	4
	.word	_Label_1372
	.word	-1472
	.word	4
	.word	_Label_1373
	.word	-1476
	.word	4
	.word	0
_Label_1345:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1346:
	.ascii	"Pself\0"
	.align
_Label_1347:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1348:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1349:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
_Label_1350:
	.byte	'?'
	.ascii	"_temp_1341\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1340\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1339\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1338\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1337\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1336\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1335\0"
	.align
_Label_1357:
	.byte	'?'
	.ascii	"_temp_1334\0"
	.align
_Label_1358:
	.byte	'?'
	.ascii	"_temp_1333\0"
	.align
_Label_1359:
	.byte	'?'
	.ascii	"_temp_1332\0"
	.align
_Label_1360:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1361:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1362:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1323\0"
	.align
_Label_1365:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1366:
	.byte	'?'
	.ascii	"_temp_1320\0"
	.align
_Label_1367:
	.byte	'?'
	.ascii	"_temp_1319\0"
	.align
_Label_1368:
	.byte	'?'
	.ascii	"_temp_1318\0"
	.align
_Label_1369:
	.byte	'?'
	.ascii	"_temp_1317\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1316\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1315\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1314\0"
	.align
_Label_1373:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_3027:
	push	r0
	sub	r1,1,r1
	bne	_Label_3027
	mov	905,r13		! source line 905
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	912,r13		! source line 912
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	912,r13		! source line 912
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1374 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1374  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	913,r13		! source line 913
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	914,r13		! source line 914
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1379 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1380 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1379  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1375:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1380 then goto _Label_1378		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1378
_Label_1376:
	mov	914,r13		! source line 914
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1381 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1381  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	915,r13		! source line 915
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	916,r13		! source line 916
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1382 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1382  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	917,r13		! source line 917
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	918,r13		! source line 918
	mov	"\0\0SE",r10
!   _temp_1383 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1383 [i ] into _temp_1384
!     make sure index expr is >= 0
	load	[r14+-52],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1377:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1375
! END FOR
_Label_1378:
! CALL STATEMENT...
!   _temp_1385 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1385  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	920,r13		! source line 920
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	921,r13		! source line 921
	mov	"\0\0SE",r10
!   _temp_1386 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1387 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1386  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	922,r13		! source line 922
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	923,r13		! source line 923
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	923,r13		! source line 923
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	923,r13		! source line 923
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1388
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1389
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1390
	.word	-12
	.word	4
	.word	_Label_1391
	.word	-16
	.word	4
	.word	_Label_1392
	.word	-20
	.word	4
	.word	_Label_1393
	.word	-24
	.word	4
	.word	_Label_1394
	.word	-28
	.word	4
	.word	_Label_1395
	.word	-32
	.word	4
	.word	_Label_1396
	.word	-36
	.word	4
	.word	_Label_1397
	.word	-40
	.word	4
	.word	_Label_1398
	.word	-44
	.word	4
	.word	_Label_1399
	.word	-48
	.word	4
	.word	_Label_1400
	.word	-52
	.word	4
	.word	_Label_1401
	.word	-56
	.word	4
	.word	0
_Label_1388:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1389:
	.ascii	"Pself\0"
	.align
_Label_1390:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1391:
	.byte	'?'
	.ascii	"_temp_1386\0"
	.align
_Label_1392:
	.byte	'?'
	.ascii	"_temp_1385\0"
	.align
_Label_1393:
	.byte	'?'
	.ascii	"_temp_1384\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1382\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1381\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1380\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1400:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1401:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_3028:
	push	r0
	sub	r1,1,r1
	bne	_Label_3028
	mov	928,r13		! source line 928
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	935,r13		! source line 935
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1402 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1402  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	937,r13		! source line 937
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1407 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1408 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1407  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1403:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1408 then goto _Label_1406		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1406
_Label_1404:
	mov	937,r13		! source line 937
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1409 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1409  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	938,r13		! source line 938
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	939,r13		! source line 939
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	940,r13		! source line 940
	mov	"\0\0SE",r10
!   _temp_1410 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1410 [i ] into _temp_1411
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1405:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1403
! END FOR
_Label_1406:
! CALL STATEMENT...
!   _temp_1412 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1412  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0SE",r10
!   _temp_1413 = _function_214_PrintObjectAddr
	set	_function_214_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1414 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1413  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	944,r13		! source line 944
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	945,r13		! source line 945
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	945,r13		! source line 945
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	945,r13		! source line 945
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1415
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1416
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1417
	.word	-12
	.word	4
	.word	_Label_1418
	.word	-16
	.word	4
	.word	_Label_1419
	.word	-20
	.word	4
	.word	_Label_1420
	.word	-24
	.word	4
	.word	_Label_1421
	.word	-28
	.word	4
	.word	_Label_1422
	.word	-32
	.word	4
	.word	_Label_1423
	.word	-36
	.word	4
	.word	_Label_1424
	.word	-40
	.word	4
	.word	_Label_1425
	.word	-44
	.word	4
	.word	_Label_1426
	.word	-48
	.word	4
	.word	_Label_1427
	.word	-52
	.word	4
	.word	0
_Label_1415:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1416:
	.ascii	"Pself\0"
	.align
_Label_1417:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1418:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1419:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1420:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1421:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1422:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1423:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1424:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1425:
	.byte	'?'
	.ascii	"_temp_1402\0"
	.align
_Label_1426:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1427:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_3029:
	push	r0
	sub	r1,1,r1
	bne	_Label_3029
	mov	950,r13		! source line 950
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	959,r13		! source line 959
	mov	"\0\0SE",r10
!   _temp_1428 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	962,r13		! source line 962
	mov	"\0\0WH",r10
_Label_1429:
	mov	962,r13		! source line 962
	mov	"\0\0SE",r10
!   _temp_1432 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1430 else goto _Label_1431
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1431
	jmp	_Label_1430
_Label_1430:
	mov	962,r13		! source line 962
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	963,r13		! source line 963
	mov	"\0\0SE",r10
!   _temp_1433 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1434 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1433  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1429
_Label_1431:
! ASSIGNMENT STATEMENT...
	mov	967,r13		! source line 967
	mov	"\0\0AS",r10
	mov	967,r13		! source line 967
	mov	"\0\0SE",r10
!   _temp_1435 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=rProcessPtr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	968,r13		! source line 968
	mov	"\0\0AS",r10
!   if intIsZero (rProcessPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1436 = rProcessPtr + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1436 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0AS",r10
!   if intIsZero (rProcessPtr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1437 = rProcessPtr + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1437 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0SE",r10
!   _temp_1438 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	977,r13		! source line 977
	mov	"\0\0RE",r10
!   ReturnResult: rProcessPtr  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1439
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1440
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1441
	.word	-12
	.word	4
	.word	_Label_1442
	.word	-16
	.word	4
	.word	_Label_1443
	.word	-20
	.word	4
	.word	_Label_1444
	.word	-24
	.word	4
	.word	_Label_1445
	.word	-28
	.word	4
	.word	_Label_1446
	.word	-32
	.word	4
	.word	_Label_1447
	.word	-36
	.word	4
	.word	_Label_1448
	.word	-40
	.word	4
	.word	_Label_1449
	.word	-44
	.word	4
	.word	0
_Label_1439:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1440:
	.ascii	"Pself\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1438\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1437\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1436\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1449:
	.byte	'P'
	.ascii	"rProcessPtr\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_3030:
	push	r0
	sub	r1,1,r1
	bne	_Label_3030
	mov	982,r13		! source line 982
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	988,r13		! source line 988
	mov	"\0\0SE",r10
!   _temp_1450 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	991,r13		! source line 991
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1451 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1451 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	992,r13		! source line 992
	mov	"\0\0SE",r10
!   _temp_1452 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0SE",r10
!   _temp_1453 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1454 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1453  sizeInBytes=4
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
	mov	998,r13		! source line 998
	mov	"\0\0SE",r10
!   _temp_1455 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	998,r13		! source line 998
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1456
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1457
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1458
	.word	12
	.word	4
	.word	_Label_1459
	.word	-12
	.word	4
	.word	_Label_1460
	.word	-16
	.word	4
	.word	_Label_1461
	.word	-20
	.word	4
	.word	_Label_1462
	.word	-24
	.word	4
	.word	_Label_1463
	.word	-28
	.word	4
	.word	_Label_1464
	.word	-32
	.word	4
	.word	0
_Label_1456:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1457:
	.ascii	"Pself\0"
	.align
_Label_1458:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1455\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1454\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1453\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1452\0"
	.align
_Label_1463:
	.byte	'?'
	.ascii	"_temp_1451\0"
	.align
_Label_1464:
	.byte	'?'
	.ascii	"_temp_1450\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1465
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1465:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1466
	.word	_sourceFileName
	.word	257		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1466:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_3031:
	push	r0
	sub	r1,1,r1
	bne	_Label_3031
	mov	1084,r13		! source line 1084
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1467 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1467  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1090,r13		! source line 1090
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1091,r13		! source line 1091
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1092,r13		! source line 1092
	mov	"\0\0SE",r10
!   _temp_1469 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1093,r13		! source line 1093
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1094,r13		! source line 1094
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1095,r13		! source line 1095
	mov	"\0\0SE",r10
!   _temp_1471 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1096,r13		! source line 1096
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1097,r13		! source line 1097
	mov	"\0\0SE",r10
!   _temp_1473 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1478 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1479 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1478  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1474:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1479 then goto _Label_1477		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1477
_Label_1475:
	mov	1103,r13		! source line 1103
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1482 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1482) then goto _Label_1481
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1481
!	jmp	_Label_1480
_Label_1480:
! THEN...
	mov	1107,r13		! source line 1107
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1483 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1483  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1107,r13		! source line 1107
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1481:
!   Increment the FOR-LOOP index variable and jump back
_Label_1476:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1474
! END FOR
_Label_1477:
! RETURN STATEMENT...
	mov	1103,r13		! source line 1103
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1484
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1485
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1486
	.word	-12
	.word	4
	.word	_Label_1487
	.word	-16
	.word	4
	.word	_Label_1488
	.word	-20
	.word	4
	.word	_Label_1489
	.word	-24
	.word	4
	.word	_Label_1490
	.word	-28
	.word	4
	.word	_Label_1491
	.word	-32
	.word	4
	.word	_Label_1492
	.word	-36
	.word	4
	.word	_Label_1493
	.word	-40
	.word	4
	.word	_Label_1494
	.word	-44
	.word	4
	.word	_Label_1495
	.word	-48
	.word	4
	.word	_Label_1496
	.word	-52
	.word	4
	.word	_Label_1497
	.word	-56
	.word	4
	.word	0
_Label_1484:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1485:
	.ascii	"Pself\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1483\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1482\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1479\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1478\0"
	.align
_Label_1490:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1491:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1492:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1493:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1494:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1495:
	.byte	'?'
	.ascii	"_temp_1468\0"
	.align
_Label_1496:
	.byte	'?'
	.ascii	"_temp_1467\0"
	.align
_Label_1497:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_3032:
	push	r0
	sub	r1,1,r1
	bne	_Label_3032
	mov	1114,r13		! source line 1114
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1118,r13		! source line 1118
	mov	"\0\0SE",r10
!   _temp_1498 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1499 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1499  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1119,r13		! source line 1119
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1500 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1500  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1120,r13		! source line 1120
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1501 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1501  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1121,r13		! source line 1121
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1122,r13		! source line 1122
	mov	"\0\0SE",r10
!   _temp_1502 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1123,r13		! source line 1123
	mov	"\0\0SE",r10
!   _temp_1503 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1123,r13		! source line 1123
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1504
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1505
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1506
	.word	-12
	.word	4
	.word	_Label_1507
	.word	-16
	.word	4
	.word	_Label_1508
	.word	-20
	.word	4
	.word	_Label_1509
	.word	-24
	.word	4
	.word	_Label_1510
	.word	-28
	.word	4
	.word	_Label_1511
	.word	-32
	.word	4
	.word	0
_Label_1504:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1505:
	.ascii	"Pself\0"
	.align
_Label_1506:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_3033:
	push	r0
	sub	r1,1,r1
	bne	_Label_3033
	mov	1128,r13		! source line 1128
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0SE",r10
!   _temp_1512 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1139,r13		! source line 1139
	mov	"\0\0WH",r10
_Label_1513:
!   if numberFreeFrames >= 1 then goto _Label_1515		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1515
!	jmp	_Label_1514
_Label_1514:
	mov	1139,r13		! source line 1139
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1140,r13		! source line 1140
	mov	"\0\0SE",r10
!   _temp_1516 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1517 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1516  sizeInBytes=4
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
	jmp	_Label_1513
_Label_1515:
! ASSIGNMENT STATEMENT...
	mov	1144,r13		! source line 1144
	mov	"\0\0AS",r10
	mov	1144,r13		! source line 1144
	mov	"\0\0SE",r10
!   _temp_1518 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1145,r13		! source line 1145
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1148,r13		! source line 1148
	mov	"\0\0SE",r10
!   _temp_1519 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1151,r13		! source line 1151
	mov	"\0\0AS",r10
!   _temp_1520 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1520		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1153,r13		! source line 1153
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1521
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1522
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1523
	.word	-12
	.word	4
	.word	_Label_1524
	.word	-16
	.word	4
	.word	_Label_1525
	.word	-20
	.word	4
	.word	_Label_1526
	.word	-24
	.word	4
	.word	_Label_1527
	.word	-28
	.word	4
	.word	_Label_1528
	.word	-32
	.word	4
	.word	_Label_1529
	.word	-36
	.word	4
	.word	_Label_1530
	.word	-40
	.word	4
	.word	0
_Label_1521:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1522:
	.ascii	"Pself\0"
	.align
_Label_1523:
	.byte	'?'
	.ascii	"_temp_1520\0"
	.align
_Label_1524:
	.byte	'?'
	.ascii	"_temp_1519\0"
	.align
_Label_1525:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1526:
	.byte	'?'
	.ascii	"_temp_1517\0"
	.align
_Label_1527:
	.byte	'?'
	.ascii	"_temp_1516\0"
	.align
_Label_1528:
	.byte	'?'
	.ascii	"_temp_1512\0"
	.align
_Label_1529:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1530:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	15,r1
_Label_3034:
	push	r0
	sub	r1,1,r1
	bne	_Label_3034
	mov	1158,r13		! source line 1158
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1163,r13		! source line 1163
	mov	"\0\0SE",r10
!   _temp_1531 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0WH",r10
_Label_1532:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1534		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1534
!	jmp	_Label_1533
_Label_1533:
	mov	1166,r13		! source line 1166
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1167,r13		! source line 1167
	mov	"\0\0SE",r10
!   _temp_1535 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1536 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1535  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1532
_Label_1534:
! FOR STATEMENT...
	mov	1171,r13		! source line 1171
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1541 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1542 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1541  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1537:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1542 then goto _Label_1540		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1540
_Label_1538:
	mov	1171,r13		! source line 1171
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1173,r13		! source line 1173
	mov	"\0\0AS",r10
	mov	1173,r13		! source line 1173
	mov	"\0\0SE",r10
!   _temp_1543 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=newFrameIndex  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1175,r13		! source line 1175
	mov	"\0\0AS",r10
!   _temp_1544 = newFrameIndex * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   newFrameAddr = 1048576 + _temp_1544		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1177,r13		! source line 1177
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newFrameAddr  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1178,r13		! source line 1178
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
!   Increment the FOR-LOOP index variable and jump back
_Label_1539:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1537
! END FOR
_Label_1540:
! ASSIGNMENT STATEMENT...
	mov	1181,r13		! source line 1181
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1545 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1545 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0SE",r10
!   _temp_1546 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1183,r13		! source line 1183
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1547
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1548
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1549
	.word	12
	.word	4
	.word	_Label_1550
	.word	16
	.word	4
	.word	_Label_1551
	.word	-12
	.word	4
	.word	_Label_1552
	.word	-16
	.word	4
	.word	_Label_1553
	.word	-20
	.word	4
	.word	_Label_1554
	.word	-24
	.word	4
	.word	_Label_1555
	.word	-28
	.word	4
	.word	_Label_1556
	.word	-32
	.word	4
	.word	_Label_1557
	.word	-36
	.word	4
	.word	_Label_1558
	.word	-40
	.word	4
	.word	_Label_1559
	.word	-44
	.word	4
	.word	_Label_1560
	.word	-48
	.word	4
	.word	_Label_1561
	.word	-52
	.word	4
	.word	_Label_1562
	.word	-56
	.word	4
	.word	0
_Label_1547:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1548:
	.ascii	"Pself\0"
	.align
_Label_1549:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1550:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1546\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1555:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1556:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1557:
	.byte	'?'
	.ascii	"_temp_1536\0"
	.align
_Label_1558:
	.byte	'?'
	.ascii	"_temp_1535\0"
	.align
_Label_1559:
	.byte	'?'
	.ascii	"_temp_1531\0"
	.align
_Label_1560:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1561:
	.byte	'I'
	.ascii	"newFrameIndex\0"
	.align
_Label_1562:
	.byte	'I'
	.ascii	"newFrameAddr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	16,r1
_Label_3035:
	push	r0
	sub	r1,1,r1
	bne	_Label_3035
	mov	1189,r13		! source line 1189
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0SE",r10
!   _temp_1563 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1195,r13		! source line 1195
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1564 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Data Move: numFramesReturned = *_temp_1564  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-64]
! FOR STATEMENT...
	mov	1198,r13		! source line 1198
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1569 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1570 = numFramesReturned - 1		(int)
	load	[r14+-64],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1569  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-52]
_Label_1565:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1570 then goto _Label_1568		
	load	[r14+-52],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1568
_Label_1566:
	mov	1198,r13		! source line 1198
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1199,r13		! source line 1199
	mov	"\0\0AS",r10
	mov	1199,r13		! source line 1199
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	1200,r13		! source line 1200
	mov	"\0\0AS",r10
!   _temp_1571 = frameAddr - 1048576		(int)
	load	[r14+-56],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   bitNumber = _temp_1571 div 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
! SEND STATEMENT...
	mov	1201,r13		! source line 1201
	mov	"\0\0SE",r10
!   _temp_1572 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1567:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1565
! END FOR
_Label_1568:
! ASSIGNMENT STATEMENT...
	mov	1205,r13		! source line 1205
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + numFramesReturned		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-64],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1206,r13		! source line 1206
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1573 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1573 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-24],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1208,r13		! source line 1208
	mov	"\0\0SE",r10
!   _temp_1574 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1575 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1574  sizeInBytes=4
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
	mov	1211,r13		! source line 1211
	mov	"\0\0SE",r10
!   _temp_1576 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1211,r13		! source line 1211
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1577
	.word	8		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_1578
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1579
	.word	12
	.word	4
	.word	_Label_1580
	.word	-12
	.word	4
	.word	_Label_1581
	.word	-16
	.word	4
	.word	_Label_1582
	.word	-20
	.word	4
	.word	_Label_1583
	.word	-24
	.word	4
	.word	_Label_1584
	.word	-28
	.word	4
	.word	_Label_1585
	.word	-32
	.word	4
	.word	_Label_1586
	.word	-36
	.word	4
	.word	_Label_1587
	.word	-40
	.word	4
	.word	_Label_1588
	.word	-44
	.word	4
	.word	_Label_1589
	.word	-48
	.word	4
	.word	_Label_1590
	.word	-52
	.word	4
	.word	_Label_1591
	.word	-56
	.word	4
	.word	_Label_1592
	.word	-60
	.word	4
	.word	_Label_1593
	.word	-64
	.word	4
	.word	0
_Label_1577:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1578:
	.ascii	"Pself\0"
	.align
_Label_1579:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1576\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1575\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1574\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1571\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1570\0"
	.align
_Label_1587:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1588:
	.byte	'?'
	.ascii	"_temp_1564\0"
	.align
_Label_1589:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1590:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1591:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1592:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
_Label_1593:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1594
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1594:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1595
	.word	_sourceFileName
	.word	276		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1595:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_3036:
	push	r0
	sub	r1,1,r1
	bne	_Label_3036
	mov	1223,r13		! source line 1223
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1227,r13		! source line 1227
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0AS",r10
!   _temp_1596 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1598 = &_temp_1597
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1598 = _temp_1598 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1600:
!   Data Move: *_temp_1598 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1598 = _temp_1598 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1599 = _temp_1599 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1599) then goto _Label_1600
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1600
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1601 = &_temp_1597
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3037
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3037:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1596 = *_temp_1601  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3038:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3038
! RETURN STATEMENT...
	mov	1228,r13		! source line 1228
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1602
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1603
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1604
	.word	-12
	.word	4
	.word	_Label_1605
	.word	-16
	.word	4
	.word	_Label_1606
	.word	-20
	.word	4
	.word	_Label_1607
	.word	-104
	.word	84
	.word	_Label_1608
	.word	-108
	.word	4
	.word	0
_Label_1602:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1603:
	.ascii	"Pself\0"
	.align
_Label_1604:
	.byte	'?'
	.ascii	"_temp_1601\0"
	.align
_Label_1605:
	.byte	'?'
	.ascii	"_temp_1599\0"
	.align
_Label_1606:
	.byte	'?'
	.ascii	"_temp_1598\0"
	.align
_Label_1607:
	.byte	'?'
	.ascii	"_temp_1597\0"
	.align
_Label_1608:
	.byte	'?'
	.ascii	"_temp_1596\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_3039:
	push	r0
	sub	r1,1,r1
	bne	_Label_3039
	mov	1233,r13		! source line 1233
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1609 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1609  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1238,r13		! source line 1238
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1610 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1610  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1239,r13		! source line 1239
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1240,r13		! source line 1240
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1615 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1616 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1615  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1611:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1616 then goto _Label_1614		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1614
_Label_1612:
	mov	1240,r13		! source line 1240
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1617 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1617  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1241,r13		! source line 1241
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1619 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1619 [i ] into _temp_1620
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
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
	store	r2,[r14+-136]
!   _temp_1618 = _temp_1620		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1618  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1242,r13		! source line 1242
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1621 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1621  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1243,r13		! source line 1243
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1623 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1623 [i ] into _temp_1624
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
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
	store	r2,[r14+-120]
!   Data Move: _temp_1622 = *_temp_1624  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1622  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1244,r13		! source line 1244
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1625 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1625  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1245,r13		! source line 1245
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1626 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1626  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1246,r13		! source line 1246
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1627 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1627  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1247,r13		! source line 1247
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1248,r13		! source line 1248
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1629) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1628  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1628  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1248,r13		! source line 1248
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1630 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1630  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1249,r13		! source line 1249
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1250,r13		! source line 1250
	mov	"\0\0IF",r10
	mov	1250,r13		! source line 1250
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1634) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1633  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1633) then goto _Label_1632
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1632
!	jmp	_Label_1631
_Label_1631:
! THEN...
	mov	1251,r13		! source line 1251
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1251,r13		! source line 1251
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1636) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1635  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1635  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1251,r13		! source line 1251
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1637
_Label_1632:
! ELSE...
	mov	1253,r13		! source line 1253
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1638 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1638  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1253,r13		! source line 1253
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1637:
! CALL STATEMENT...
!   _temp_1639 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1639  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1255,r13		! source line 1255
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1256,r13		! source line 1256
	mov	"\0\0IF",r10
	mov	1256,r13		! source line 1256
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1642) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1640 else goto _Label_1641
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1641
	jmp	_Label_1640
_Label_1640:
! THEN...
	mov	1257,r13		! source line 1257
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1643 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1643  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1257,r13		! source line 1257
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1644
_Label_1641:
! ELSE...
	mov	1259,r13		! source line 1259
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1645 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1645  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1259,r13		! source line 1259
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1644:
! CALL STATEMENT...
!   _temp_1646 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1646  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1261,r13		! source line 1261
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1262,r13		! source line 1262
	mov	"\0\0IF",r10
	mov	1262,r13		! source line 1262
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1649) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1647 else goto _Label_1648
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1648
	jmp	_Label_1647
_Label_1647:
! THEN...
	mov	1263,r13		! source line 1263
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1650 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1650  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1651
_Label_1648:
! ELSE...
	mov	1265,r13		! source line 1265
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1652 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1652  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1265,r13		! source line 1265
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1651:
! CALL STATEMENT...
!   _temp_1653 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1653  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1268,r13		! source line 1268
	mov	"\0\0IF",r10
	mov	1268,r13		! source line 1268
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1656) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1654 else goto _Label_1655
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1655
	jmp	_Label_1654
_Label_1654:
! THEN...
	mov	1269,r13		! source line 1269
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1657 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1657  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1658
_Label_1655:
! ELSE...
	mov	1271,r13		! source line 1271
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1659 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1659  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1271,r13		! source line 1271
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1658:
! CALL STATEMENT...
!   _temp_1660 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1660  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1273,r13		! source line 1273
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1274,r13		! source line 1274
	mov	"\0\0IF",r10
	mov	1274,r13		! source line 1274
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1663) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1661 else goto _Label_1662
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1662
	jmp	_Label_1661
_Label_1661:
! THEN...
	mov	1275,r13		! source line 1275
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1664 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1664  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1275,r13		! source line 1275
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1665
_Label_1662:
! ELSE...
	mov	1277,r13		! source line 1277
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1666 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1666  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1277,r13		! source line 1277
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1665:
! CALL STATEMENT...
!   Call the function
	mov	1279,r13		! source line 1279
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1613:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1611
! END FOR
_Label_1614:
! RETURN STATEMENT...
	mov	1240,r13		! source line 1240
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1667
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1668
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1669
	.word	-12
	.word	4
	.word	_Label_1670
	.word	-16
	.word	4
	.word	_Label_1671
	.word	-20
	.word	4
	.word	_Label_1672
	.word	-24
	.word	4
	.word	_Label_1673
	.word	-28
	.word	4
	.word	_Label_1674
	.word	-32
	.word	4
	.word	_Label_1675
	.word	-36
	.word	4
	.word	_Label_1676
	.word	-40
	.word	4
	.word	_Label_1677
	.word	-44
	.word	4
	.word	_Label_1678
	.word	-48
	.word	4
	.word	_Label_1679
	.word	-52
	.word	4
	.word	_Label_1680
	.word	-56
	.word	4
	.word	_Label_1681
	.word	-60
	.word	4
	.word	_Label_1682
	.word	-64
	.word	4
	.word	_Label_1683
	.word	-68
	.word	4
	.word	_Label_1684
	.word	-72
	.word	4
	.word	_Label_1685
	.word	-76
	.word	4
	.word	_Label_1686
	.word	-80
	.word	4
	.word	_Label_1687
	.word	-84
	.word	4
	.word	_Label_1688
	.word	-88
	.word	4
	.word	_Label_1689
	.word	-92
	.word	4
	.word	_Label_1690
	.word	-96
	.word	4
	.word	_Label_1691
	.word	-100
	.word	4
	.word	_Label_1692
	.word	-104
	.word	4
	.word	_Label_1693
	.word	-108
	.word	4
	.word	_Label_1694
	.word	-112
	.word	4
	.word	_Label_1695
	.word	-116
	.word	4
	.word	_Label_1696
	.word	-120
	.word	4
	.word	_Label_1697
	.word	-124
	.word	4
	.word	_Label_1698
	.word	-128
	.word	4
	.word	_Label_1699
	.word	-132
	.word	4
	.word	_Label_1700
	.word	-136
	.word	4
	.word	_Label_1701
	.word	-140
	.word	4
	.word	_Label_1702
	.word	-144
	.word	4
	.word	_Label_1703
	.word	-148
	.word	4
	.word	_Label_1704
	.word	-152
	.word	4
	.word	_Label_1705
	.word	-156
	.word	4
	.word	_Label_1706
	.word	-160
	.word	4
	.word	_Label_1707
	.word	-164
	.word	4
	.word	_Label_1708
	.word	-168
	.word	4
	.word	0
_Label_1667:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1668:
	.ascii	"Pself\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1666\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1657\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1656\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1652\0"
	.align
_Label_1678:
	.byte	'?'
	.ascii	"_temp_1650\0"
	.align
_Label_1679:
	.byte	'?'
	.ascii	"_temp_1649\0"
	.align
_Label_1680:
	.byte	'?'
	.ascii	"_temp_1646\0"
	.align
_Label_1681:
	.byte	'?'
	.ascii	"_temp_1645\0"
	.align
_Label_1682:
	.byte	'?'
	.ascii	"_temp_1643\0"
	.align
_Label_1683:
	.byte	'?'
	.ascii	"_temp_1642\0"
	.align
_Label_1684:
	.byte	'?'
	.ascii	"_temp_1639\0"
	.align
_Label_1685:
	.byte	'?'
	.ascii	"_temp_1638\0"
	.align
_Label_1686:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1687:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1688:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1689:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1690:
	.byte	'?'
	.ascii	"_temp_1630\0"
	.align
_Label_1691:
	.byte	'?'
	.ascii	"_temp_1629\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1628\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1627\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1624\0"
	.align
_Label_1697:
	.byte	'?'
	.ascii	"_temp_1623\0"
	.align
_Label_1698:
	.byte	'?'
	.ascii	"_temp_1622\0"
	.align
_Label_1699:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1700:
	.byte	'?'
	.ascii	"_temp_1620\0"
	.align
_Label_1701:
	.byte	'?'
	.ascii	"_temp_1619\0"
	.align
_Label_1702:
	.byte	'?'
	.ascii	"_temp_1618\0"
	.align
_Label_1703:
	.byte	'?'
	.ascii	"_temp_1617\0"
	.align
_Label_1704:
	.byte	'?'
	.ascii	"_temp_1616\0"
	.align
_Label_1705:
	.byte	'?'
	.ascii	"_temp_1615\0"
	.align
_Label_1706:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1707:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1708:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_3040:
	push	r0
	sub	r1,1,r1
	bne	_Label_3040
	mov	1285,r13		! source line 1285
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1290,r13		! source line 1290
	mov	"\0\0RE",r10
!   _temp_1711 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1711 [entry ] into _temp_1712
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1710 = *_temp_1712  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1709 = _temp_1710 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1709  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1713
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1714
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1715
	.word	12
	.word	4
	.word	_Label_1716
	.word	-12
	.word	4
	.word	_Label_1717
	.word	-16
	.word	4
	.word	_Label_1718
	.word	-20
	.word	4
	.word	_Label_1719
	.word	-24
	.word	4
	.word	0
_Label_1713:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1714:
	.ascii	"Pself\0"
	.align
_Label_1715:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1716:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1717:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1718:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1719:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_3041:
	push	r0
	sub	r1,1,r1
	bne	_Label_3041
	mov	1295,r13		! source line 1295
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1299,r13		! source line 1299
	mov	"\0\0RE",r10
!   _temp_1722 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1722 [entry ] into _temp_1723
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1721 = *_temp_1723  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1720 = _temp_1721 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1720  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1724
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1725
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1726
	.word	12
	.word	4
	.word	_Label_1727
	.word	-12
	.word	4
	.word	_Label_1728
	.word	-16
	.word	4
	.word	_Label_1729
	.word	-20
	.word	4
	.word	_Label_1730
	.word	-24
	.word	4
	.word	0
_Label_1724:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1725:
	.ascii	"Pself\0"
	.align
_Label_1726:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1727:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1728:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1729:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1730:
	.byte	'?'
	.ascii	"_temp_1720\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_3042:
	push	r0
	sub	r1,1,r1
	bne	_Label_3042
	mov	1304,r13		! source line 1304
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1309,r13		! source line 1309
	mov	"\0\0AS",r10
!   _temp_1731 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1731 [entry ] into _temp_1732
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1736 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1736 [entry ] into _temp_1737
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1735 = *_temp_1737  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1734 = _temp_1735 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1733 = _temp_1734 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1732 = _temp_1733  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1309,r13		! source line 1309
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1738
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1739
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1740
	.word	12
	.word	4
	.word	_Label_1741
	.word	16
	.word	4
	.word	_Label_1742
	.word	-12
	.word	4
	.word	_Label_1743
	.word	-16
	.word	4
	.word	_Label_1744
	.word	-20
	.word	4
	.word	_Label_1745
	.word	-24
	.word	4
	.word	_Label_1746
	.word	-28
	.word	4
	.word	_Label_1747
	.word	-32
	.word	4
	.word	_Label_1748
	.word	-36
	.word	4
	.word	0
_Label_1738:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1739:
	.ascii	"Pself\0"
	.align
_Label_1740:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1741:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1742:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1743:
	.byte	'?'
	.ascii	"_temp_1736\0"
	.align
_Label_1744:
	.byte	'?'
	.ascii	"_temp_1735\0"
	.align
_Label_1745:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1746:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1747:
	.byte	'?'
	.ascii	"_temp_1732\0"
	.align
_Label_1748:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_3043:
	push	r0
	sub	r1,1,r1
	bne	_Label_3043
	mov	1314,r13		! source line 1314
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1318,r13		! source line 1318
	mov	"\0\0RE",r10
!   _temp_1752 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1752 [entry ] into _temp_1753
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
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
	store	r2,[r14+-16]
!   Data Move: _temp_1751 = *_temp_1753  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1750 = _temp_1751 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1750) then goto _Label_1754
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1754
!   _temp_1749 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1755
_Label_1754:
!   _temp_1749 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1755:
!   ReturnResult: _temp_1749  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1756
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1757
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1758
	.word	12
	.word	4
	.word	_Label_1759
	.word	-16
	.word	4
	.word	_Label_1760
	.word	-20
	.word	4
	.word	_Label_1761
	.word	-24
	.word	4
	.word	_Label_1762
	.word	-28
	.word	4
	.word	_Label_1763
	.word	-9
	.word	1
	.word	0
_Label_1756:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1757:
	.ascii	"Pself\0"
	.align
_Label_1758:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1753\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1750\0"
	.align
_Label_1763:
	.byte	'C'
	.ascii	"_temp_1749\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_3044:
	push	r0
	sub	r1,1,r1
	bne	_Label_3044
	mov	1323,r13		! source line 1323
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1327,r13		! source line 1327
	mov	"\0\0RE",r10
!   _temp_1767 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1767 [entry ] into _temp_1768
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
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
	store	r2,[r14+-16]
!   Data Move: _temp_1766 = *_temp_1768  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1765 = _temp_1766 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1765) then goto _Label_1769
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1769
!   _temp_1764 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1770
_Label_1769:
!   _temp_1764 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1770:
!   ReturnResult: _temp_1764  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1771
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1772
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1773
	.word	12
	.word	4
	.word	_Label_1774
	.word	-16
	.word	4
	.word	_Label_1775
	.word	-20
	.word	4
	.word	_Label_1776
	.word	-24
	.word	4
	.word	_Label_1777
	.word	-28
	.word	4
	.word	_Label_1778
	.word	-9
	.word	1
	.word	0
_Label_1771:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1772:
	.ascii	"Pself\0"
	.align
_Label_1773:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1768\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1767\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1766\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1765\0"
	.align
_Label_1778:
	.byte	'C'
	.ascii	"_temp_1764\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_3045:
	push	r0
	sub	r1,1,r1
	bne	_Label_3045
	mov	1332,r13		! source line 1332
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1336,r13		! source line 1336
	mov	"\0\0RE",r10
!   _temp_1782 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1782 [entry ] into _temp_1783
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
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
	store	r2,[r14+-16]
!   Data Move: _temp_1781 = *_temp_1783  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1780 = _temp_1781 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1780) then goto _Label_1784
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1784
!   _temp_1779 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1785
_Label_1784:
!   _temp_1779 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1785:
!   ReturnResult: _temp_1779  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1786
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1787
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1788
	.word	12
	.word	4
	.word	_Label_1789
	.word	-16
	.word	4
	.word	_Label_1790
	.word	-20
	.word	4
	.word	_Label_1791
	.word	-24
	.word	4
	.word	_Label_1792
	.word	-28
	.word	4
	.word	_Label_1793
	.word	-9
	.word	1
	.word	0
_Label_1786:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1787:
	.ascii	"Pself\0"
	.align
_Label_1788:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1783\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1782\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1781\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1780\0"
	.align
_Label_1793:
	.byte	'C'
	.ascii	"_temp_1779\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_3046:
	push	r0
	sub	r1,1,r1
	bne	_Label_3046
	mov	1341,r13		! source line 1341
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1345,r13		! source line 1345
	mov	"\0\0RE",r10
!   _temp_1797 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1797 [entry ] into _temp_1798
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
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
	store	r2,[r14+-16]
!   Data Move: _temp_1796 = *_temp_1798  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1795 = _temp_1796 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1795) then goto _Label_1799
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1799
!   _temp_1794 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1800
_Label_1799:
!   _temp_1794 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1800:
!   ReturnResult: _temp_1794  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1801
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1802
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1803
	.word	12
	.word	4
	.word	_Label_1804
	.word	-16
	.word	4
	.word	_Label_1805
	.word	-20
	.word	4
	.word	_Label_1806
	.word	-24
	.word	4
	.word	_Label_1807
	.word	-28
	.word	4
	.word	_Label_1808
	.word	-9
	.word	1
	.word	0
_Label_1801:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1802:
	.ascii	"Pself\0"
	.align
_Label_1803:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1796\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1795\0"
	.align
_Label_1808:
	.byte	'C'
	.ascii	"_temp_1794\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_3047:
	push	r0
	sub	r1,1,r1
	bne	_Label_3047
	mov	1350,r13		! source line 1350
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1354,r13		! source line 1354
	mov	"\0\0AS",r10
!   _temp_1809 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1809 [entry ] into _temp_1810
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1813 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1813 [entry ] into _temp_1814
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1812 = *_temp_1814  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1811 = _temp_1812 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1810 = _temp_1811  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1354,r13		! source line 1354
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1815
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1816
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1817
	.word	12
	.word	4
	.word	_Label_1818
	.word	-12
	.word	4
	.word	_Label_1819
	.word	-16
	.word	4
	.word	_Label_1820
	.word	-20
	.word	4
	.word	_Label_1821
	.word	-24
	.word	4
	.word	_Label_1822
	.word	-28
	.word	4
	.word	_Label_1823
	.word	-32
	.word	4
	.word	0
_Label_1815:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1816:
	.ascii	"Pself\0"
	.align
_Label_1817:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1814\0"
	.align
_Label_1819:
	.byte	'?'
	.ascii	"_temp_1813\0"
	.align
_Label_1820:
	.byte	'?'
	.ascii	"_temp_1812\0"
	.align
_Label_1821:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1822:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1823:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_3048:
	push	r0
	sub	r1,1,r1
	bne	_Label_3048
	mov	1359,r13		! source line 1359
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1363,r13		! source line 1363
	mov	"\0\0AS",r10
!   _temp_1824 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1824 [entry ] into _temp_1825
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1828 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1828 [entry ] into _temp_1829
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1827 = *_temp_1829  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1826 = _temp_1827 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1825 = _temp_1826  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1363,r13		! source line 1363
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1830
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1831
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1832
	.word	12
	.word	4
	.word	_Label_1833
	.word	-12
	.word	4
	.word	_Label_1834
	.word	-16
	.word	4
	.word	_Label_1835
	.word	-20
	.word	4
	.word	_Label_1836
	.word	-24
	.word	4
	.word	_Label_1837
	.word	-28
	.word	4
	.word	_Label_1838
	.word	-32
	.word	4
	.word	0
_Label_1830:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1831:
	.ascii	"Pself\0"
	.align
_Label_1832:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1829\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1828\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1827\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1826\0"
	.align
_Label_1837:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1838:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_3049:
	push	r0
	sub	r1,1,r1
	bne	_Label_3049
	mov	1368,r13		! source line 1368
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1372,r13		! source line 1372
	mov	"\0\0AS",r10
!   _temp_1839 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1839 [entry ] into _temp_1840
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1843 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1843 [entry ] into _temp_1844
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1842 = *_temp_1844  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1841 = _temp_1842 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1840 = _temp_1841  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1372,r13		! source line 1372
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1845
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1846
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1847
	.word	12
	.word	4
	.word	_Label_1848
	.word	-12
	.word	4
	.word	_Label_1849
	.word	-16
	.word	4
	.word	_Label_1850
	.word	-20
	.word	4
	.word	_Label_1851
	.word	-24
	.word	4
	.word	_Label_1852
	.word	-28
	.word	4
	.word	_Label_1853
	.word	-32
	.word	4
	.word	0
_Label_1845:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1846:
	.ascii	"Pself\0"
	.align
_Label_1847:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1844\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1843\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1842\0"
	.align
_Label_1851:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1852:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1853:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_3050:
	push	r0
	sub	r1,1,r1
	bne	_Label_3050
	mov	1377,r13		! source line 1377
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0AS",r10
!   _temp_1854 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1854 [entry ] into _temp_1855
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1858 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1858 [entry ] into _temp_1859
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1857 = *_temp_1859  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1856 = _temp_1857 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1855 = _temp_1856  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1381,r13		! source line 1381
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1860
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1861
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1862
	.word	12
	.word	4
	.word	_Label_1863
	.word	-12
	.word	4
	.word	_Label_1864
	.word	-16
	.word	4
	.word	_Label_1865
	.word	-20
	.word	4
	.word	_Label_1866
	.word	-24
	.word	4
	.word	_Label_1867
	.word	-28
	.word	4
	.word	_Label_1868
	.word	-32
	.word	4
	.word	0
_Label_1860:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1861:
	.ascii	"Pself\0"
	.align
_Label_1862:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1859\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1858\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1857\0"
	.align
_Label_1866:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1867:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1868:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_3051:
	push	r0
	sub	r1,1,r1
	bne	_Label_3051
	mov	1386,r13		! source line 1386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0AS",r10
!   _temp_1869 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1869 [entry ] into _temp_1870
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1873 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1873 [entry ] into _temp_1874
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1872 = *_temp_1874  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1871 = _temp_1872 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1870 = _temp_1871  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1390,r13		! source line 1390
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1875
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1876
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1877
	.word	12
	.word	4
	.word	_Label_1878
	.word	-12
	.word	4
	.word	_Label_1879
	.word	-16
	.word	4
	.word	_Label_1880
	.word	-20
	.word	4
	.word	_Label_1881
	.word	-24
	.word	4
	.word	_Label_1882
	.word	-28
	.word	4
	.word	_Label_1883
	.word	-32
	.word	4
	.word	0
_Label_1875:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1876:
	.ascii	"Pself\0"
	.align
_Label_1877:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1874\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1873\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1872\0"
	.align
_Label_1881:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1882:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1883:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_3052:
	push	r0
	sub	r1,1,r1
	bne	_Label_3052
	mov	1395,r13		! source line 1395
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0AS",r10
!   _temp_1884 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1884 [entry ] into _temp_1885
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1888 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1888 [entry ] into _temp_1889
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1887 = *_temp_1889  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1886 = _temp_1887 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1885 = _temp_1886  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1399,r13		! source line 1399
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1890
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1891
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1892
	.word	12
	.word	4
	.word	_Label_1893
	.word	-12
	.word	4
	.word	_Label_1894
	.word	-16
	.word	4
	.word	_Label_1895
	.word	-20
	.word	4
	.word	_Label_1896
	.word	-24
	.word	4
	.word	_Label_1897
	.word	-28
	.word	4
	.word	_Label_1898
	.word	-32
	.word	4
	.word	0
_Label_1890:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1891:
	.ascii	"Pself\0"
	.align
_Label_1892:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1889\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1888\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1887\0"
	.align
_Label_1896:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1897:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1898:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_3053:
	push	r0
	sub	r1,1,r1
	bne	_Label_3053
	mov	1404,r13		! source line 1404
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1408,r13		! source line 1408
	mov	"\0\0AS",r10
!   _temp_1899 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1899 [entry ] into _temp_1900
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1903 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1903 [entry ] into _temp_1904
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1902 = *_temp_1904  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1901 = _temp_1902 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1900 = _temp_1901  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1408,r13		! source line 1408
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1905
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1906
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1907
	.word	12
	.word	4
	.word	_Label_1908
	.word	-12
	.word	4
	.word	_Label_1909
	.word	-16
	.word	4
	.word	_Label_1910
	.word	-20
	.word	4
	.word	_Label_1911
	.word	-24
	.word	4
	.word	_Label_1912
	.word	-28
	.word	4
	.word	_Label_1913
	.word	-32
	.word	4
	.word	0
_Label_1905:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1906:
	.ascii	"Pself\0"
	.align
_Label_1907:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1904\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1903\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1912:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1913:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_3054:
	push	r0
	sub	r1,1,r1
	bne	_Label_3054
	mov	1413,r13		! source line 1413
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0AS",r10
!   _temp_1914 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1914 [entry ] into _temp_1915
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   _temp_1918 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1918 [entry ] into _temp_1919
!     make sure index expr is >= 0
	load	[r14+12],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: _temp_1917 = *_temp_1919  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1916 = _temp_1917 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1915 = _temp_1916  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1417,r13		! source line 1417
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_1920
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1921
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1922
	.word	12
	.word	4
	.word	_Label_1923
	.word	-12
	.word	4
	.word	_Label_1924
	.word	-16
	.word	4
	.word	_Label_1925
	.word	-20
	.word	4
	.word	_Label_1926
	.word	-24
	.word	4
	.word	_Label_1927
	.word	-28
	.word	4
	.word	_Label_1928
	.word	-32
	.word	4
	.word	0
_Label_1920:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_1921:
	.ascii	"Pself\0"
	.align
_Label_1922:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1919\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1918\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1927:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1928:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_3055:
	push	r0
	sub	r1,1,r1
	bne	_Label_3055
	mov	1422,r13		! source line 1422
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1930 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1930 [0 ] into _temp_1931
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
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
	store	r2,[r14+-16]
!   _temp_1929 = _temp_1931		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1932 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1929  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1932  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1428,r13		! source line 1428
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1428,r13		! source line 1428
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_1933
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1934
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1935
	.word	-12
	.word	4
	.word	_Label_1936
	.word	-16
	.word	4
	.word	_Label_1937
	.word	-20
	.word	4
	.word	_Label_1938
	.word	-24
	.word	4
	.word	0
_Label_1933:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_1934:
	.ascii	"Pself\0"
	.align
_Label_1935:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_3056:
	push	r0
	sub	r1,1,r1
	bne	_Label_3056
	mov	1433,r13		! source line 1433
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1448,r13		! source line 1448
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1939
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1939
	jmp	_Label_1940
_Label_1939:
! THEN...
	mov	1449,r13		! source line 1449
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1449,r13		! source line 1449
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1941
_Label_1940:
! ELSE...
	mov	1450,r13		! source line 1450
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1450,r13		! source line 1450
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1943		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1943
!	jmp	_Label_1942
_Label_1942:
! THEN...
	mov	1451,r13		! source line 1451
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1451,r13		! source line 1451
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1943:
! END IF...
_Label_1941:
! ASSIGNMENT STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1454,r13		! source line 1454
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1457,r13		! source line 1457
	mov	"\0\0WH",r10
_Label_1944:
!	jmp	_Label_1945
_Label_1945:
	mov	1457,r13		! source line 1457
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1458,r13		! source line 1458
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1948		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1948
!	jmp	_Label_1947
_Label_1947:
! THEN...
	mov	1459,r13		! source line 1459
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1949 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1949  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1459,r13		! source line 1459
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1460,r13		! source line 1460
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1948:
! IF STATEMENT...
	mov	1462,r13		! source line 1462
	mov	"\0\0IF",r10
	mov	1462,r13		! source line 1462
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1953) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1952  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1952 then goto _Label_1951 else goto _Label_1950
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1950
	jmp	_Label_1951
_Label_1950:
! THEN...
	mov	1463,r13		! source line 1463
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1954 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1954  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1463,r13		! source line 1463
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1464,r13		! source line 1464
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1951:
! ASSIGNMENT STATEMENT...
	mov	1466,r13		! source line 1466
	mov	"\0\0AS",r10
	mov	1466,r13		! source line 1466
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1956) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1955  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_1955 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1468,r13		! source line 1468
	mov	"\0\0WH",r10
_Label_1957:
!   if offset >= 8192 then goto _Label_1959		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1959
!	jmp	_Label_1958
_Label_1958:
	mov	1468,r13		! source line 1468
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1471,r13		! source line 1471
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1960 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_1960  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1472,r13		! source line 1472
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_1962		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_1962
!	jmp	_Label_1961
_Label_1961:
! THEN...
	mov	1477,r13		! source line 1477
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1477,r13		! source line 1477
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1962:
! END WHILE...
	jmp	_Label_1957
_Label_1959:
! ASSIGNMENT STATEMENT...
	mov	1480,r13		! source line 1480
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1481,r13		! source line 1481
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_1944
_Label_1946:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_1963
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_1964
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1965
	.word	12
	.word	4
	.word	_Label_1966
	.word	16
	.word	4
	.word	_Label_1967
	.word	20
	.word	4
	.word	_Label_1968
	.word	-9
	.word	1
	.word	_Label_1969
	.word	-16
	.word	4
	.word	_Label_1970
	.word	-20
	.word	4
	.word	_Label_1971
	.word	-24
	.word	4
	.word	_Label_1972
	.word	-28
	.word	4
	.word	_Label_1973
	.word	-10
	.word	1
	.word	_Label_1974
	.word	-32
	.word	4
	.word	_Label_1975
	.word	-36
	.word	4
	.word	_Label_1976
	.word	-40
	.word	4
	.word	_Label_1977
	.word	-44
	.word	4
	.word	_Label_1978
	.word	-48
	.word	4
	.word	0
_Label_1963:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_1964:
	.ascii	"Pself\0"
	.align
_Label_1965:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_1966:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_1967:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_1968:
	.byte	'C'
	.ascii	"_temp_1960\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1956\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1955\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1954\0"
	.align
_Label_1972:
	.byte	'?'
	.ascii	"_temp_1953\0"
	.align
_Label_1973:
	.byte	'C'
	.ascii	"_temp_1952\0"
	.align
_Label_1974:
	.byte	'?'
	.ascii	"_temp_1949\0"
	.align
_Label_1975:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_1976:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_1977:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_1978:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_3057:
	push	r0
	sub	r1,1,r1
	bne	_Label_3057
	mov	1487,r13		! source line 1487
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_1979
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_1979
	jmp	_Label_1980
_Label_1979:
! THEN...
	mov	1499,r13		! source line 1499
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_1981
_Label_1980:
! ELSE...
	mov	1500,r13		! source line 1500
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_1983		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1983
!	jmp	_Label_1982
_Label_1982:
! THEN...
	mov	1501,r13		! source line 1501
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1983:
! END IF...
_Label_1981:
! ASSIGNMENT STATEMENT...
	mov	1503,r13		! source line 1503
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1504,r13		! source line 1504
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0WH",r10
_Label_1984:
!	jmp	_Label_1985
_Label_1985:
	mov	1505,r13		! source line 1505
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1506,r13		! source line 1506
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_1990		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_1990
	jmp	_Label_1987
_Label_1990:
	mov	1507,r13		! source line 1507
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1992) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_1991  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_1991 then goto _Label_1989 else goto _Label_1987
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_1987
	jmp	_Label_1989
_Label_1989:
	mov	1508,r13		! source line 1508
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_1994) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_1993  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_1993 then goto _Label_1988 else goto _Label_1987
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_1987
	jmp	_Label_1988
_Label_1987:
! THEN...
	mov	1509,r13		! source line 1509
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1509,r13		! source line 1509
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_1988:
! ASSIGNMENT STATEMENT...
	mov	1511,r13		! source line 1511
	mov	"\0\0AS",r10
	mov	1511,r13		! source line 1511
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1996) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1995  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_1995 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1512,r13		! source line 1512
	mov	"\0\0WH",r10
_Label_1997:
!   if offset >= 8192 then goto _Label_1999		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1999
!	jmp	_Label_1998
_Label_1998:
	mov	1512,r13		! source line 1512
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1513,r13		! source line 1513
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2000 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2000  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1514,r13		! source line 1514
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1515,r13		! source line 1515
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1516,r13		! source line 1516
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1517,r13		! source line 1517
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1518,r13		! source line 1518
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2002		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2002
!	jmp	_Label_2001
_Label_2001:
! THEN...
	mov	1519,r13		! source line 1519
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1519,r13		! source line 1519
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2002:
! END WHILE...
	jmp	_Label_1997
_Label_1999:
! ASSIGNMENT STATEMENT...
	mov	1522,r13		! source line 1522
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_1984
_Label_1986:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2003
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2004
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2005
	.word	12
	.word	4
	.word	_Label_2006
	.word	16
	.word	4
	.word	_Label_2007
	.word	20
	.word	4
	.word	_Label_2008
	.word	-9
	.word	1
	.word	_Label_2009
	.word	-16
	.word	4
	.word	_Label_2010
	.word	-20
	.word	4
	.word	_Label_2011
	.word	-24
	.word	4
	.word	_Label_2012
	.word	-10
	.word	1
	.word	_Label_2013
	.word	-28
	.word	4
	.word	_Label_2014
	.word	-11
	.word	1
	.word	_Label_2015
	.word	-32
	.word	4
	.word	_Label_2016
	.word	-36
	.word	4
	.word	_Label_2017
	.word	-40
	.word	4
	.word	_Label_2018
	.word	-44
	.word	4
	.word	0
_Label_2003:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2004:
	.ascii	"Pself\0"
	.align
_Label_2005:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2006:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2007:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2008:
	.byte	'C'
	.ascii	"_temp_2000\0"
	.align
_Label_2009:
	.byte	'?'
	.ascii	"_temp_1996\0"
	.align
_Label_2010:
	.byte	'?'
	.ascii	"_temp_1995\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_1994\0"
	.align
_Label_2012:
	.byte	'C'
	.ascii	"_temp_1993\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_2014:
	.byte	'C'
	.ascii	"_temp_1991\0"
	.align
_Label_2015:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2016:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2017:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2018:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_3058:
	push	r0
	sub	r1,1,r1
	bne	_Label_3058
	mov	1529,r13		! source line 1529
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1553,r13		! source line 1553
	mov	"\0\0IF",r10
	mov	1553,r13		! source line 1553
	mov	"\0\0SE",r10
!   _temp_2022 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2023) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2022  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2021  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2021 >= 4 then goto _Label_2020		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2020
!	jmp	_Label_2019
_Label_2019:
! THEN...
	mov	1556,r13		! source line 1556
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1556,r13		! source line 1556
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2020:
! IF STATEMENT...
	mov	1560,r13		! source line 1560
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2025		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2025
!	jmp	_Label_2024
_Label_2024:
! THEN...
	mov	1561,r13		! source line 1561
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1561,r13		! source line 1561
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2025:
! ASSIGNMENT STATEMENT...
	mov	1564,r13		! source line 1564
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1566,r13		! source line 1566
	mov	"\0\0RE",r10
	mov	1566,r13		! source line 1566
	mov	"\0\0SE",r10
!   _temp_2028 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2027 = _temp_2028 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2029 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2030) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2027  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2029  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2026  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2026  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2031
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2032
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2033
	.word	12
	.word	4
	.word	_Label_2034
	.word	16
	.word	4
	.word	_Label_2035
	.word	20
	.word	4
	.word	_Label_2036
	.word	-12
	.word	4
	.word	_Label_2037
	.word	-16
	.word	4
	.word	_Label_2038
	.word	-20
	.word	4
	.word	_Label_2039
	.word	-24
	.word	4
	.word	_Label_2040
	.word	-28
	.word	4
	.word	_Label_2041
	.word	-32
	.word	4
	.word	_Label_2042
	.word	-36
	.word	4
	.word	_Label_2043
	.word	-40
	.word	4
	.word	_Label_2044
	.word	-44
	.word	4
	.word	0
_Label_2031:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2032:
	.ascii	"Pself\0"
	.align
_Label_2033:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2034:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2035:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2036:
	.byte	'?'
	.ascii	"_temp_2030\0"
	.align
_Label_2037:
	.byte	'?'
	.ascii	"_temp_2029\0"
	.align
_Label_2038:
	.byte	'?'
	.ascii	"_temp_2028\0"
	.align
_Label_2039:
	.byte	'?'
	.ascii	"_temp_2027\0"
	.align
_Label_2040:
	.byte	'?'
	.ascii	"_temp_2026\0"
	.align
_Label_2041:
	.byte	'?'
	.ascii	"_temp_2023\0"
	.align
_Label_2042:
	.byte	'?'
	.ascii	"_temp_2022\0"
	.align
_Label_2043:
	.byte	'?'
	.ascii	"_temp_2021\0"
	.align
_Label_2044:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2045
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2045:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2046
	.word	_sourceFileName
	.word	311		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2046:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3059:
	push	r0
	sub	r1,1,r1
	bne	_Label_3059
	mov	2018,r13		! source line 2018
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2047 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2047  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2019,r13		! source line 2019
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2027,r13		! source line 2027
	mov	"\0\0SE",r10
!   _temp_2049 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0SE",r10
!   _temp_2051 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2029,r13		! source line 2029
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2052
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2053
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2054
	.word	-12
	.word	4
	.word	_Label_2055
	.word	-16
	.word	4
	.word	_Label_2056
	.word	-20
	.word	4
	.word	_Label_2057
	.word	-24
	.word	4
	.word	_Label_2058
	.word	-28
	.word	4
	.word	0
_Label_2052:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2053:
	.ascii	"Pself\0"
	.align
_Label_2054:
	.byte	'?'
	.ascii	"_temp_2051\0"
	.align
_Label_2055:
	.byte	'?'
	.ascii	"_temp_2050\0"
	.align
_Label_2056:
	.byte	'?'
	.ascii	"_temp_2049\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_2048\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_2047\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3060:
	push	r0
	sub	r1,1,r1
	bne	_Label_3060
	mov	2034,r13		! source line 2034
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0SE",r10
!   _temp_2059 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2048,r13		! source line 2048
	mov	"\0\0WH",r10
_Label_2060:
!	jmp	_Label_2061
_Label_2061:
	mov	2048,r13		! source line 2048
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2050,r13		! source line 2050
	mov	"\0\0SE",r10
!   _temp_2063 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2064) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2063  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2052,r13		! source line 2052
	mov	"\0\0SE",r10
!   _temp_2065 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2055,r13		! source line 2055
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2074 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2068
	cmp	r1,2
	be	_Label_2069
	cmp	r1,3
	be	_Label_2070
	cmp	r1,4
	be	_Label_2071
	cmp	r1,5
	be	_Label_2072
	cmp	r1,6
	be	_Label_2073
	jmp	_Label_2066
! CASE 1...
_Label_2068:
! SEND STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0SE",r10
!   _temp_2075 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2058,r13		! source line 2058
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2069:
! CALL STATEMENT...
!   _temp_2076 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2076  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2060,r13		! source line 2060
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2070:
! CALL STATEMENT...
!   _temp_2077 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2077  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2062,r13		! source line 2062
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2071:
! CALL STATEMENT...
!   _temp_2078 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2078  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2064,r13		! source line 2064
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2072:
! BREAK STATEMENT...
	mov	2068,r13		! source line 2068
	mov	"\0\0BR",r10
	jmp	_Label_2067
! CASE 6...
_Label_2073:
! CALL STATEMENT...
!   _temp_2079 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2079  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2070,r13		! source line 2070
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2066:
! CALL STATEMENT...
!   _temp_2080 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2080  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2072,r13		! source line 2072
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2067:
! END WHILE...
	jmp	_Label_2060
_Label_2062:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2081
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2082
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2083
	.word	12
	.word	4
	.word	_Label_2084
	.word	16
	.word	4
	.word	_Label_2085
	.word	20
	.word	4
	.word	_Label_2086
	.word	-12
	.word	4
	.word	_Label_2087
	.word	-16
	.word	4
	.word	_Label_2088
	.word	-20
	.word	4
	.word	_Label_2089
	.word	-24
	.word	4
	.word	_Label_2090
	.word	-28
	.word	4
	.word	_Label_2091
	.word	-32
	.word	4
	.word	_Label_2092
	.word	-36
	.word	4
	.word	_Label_2093
	.word	-40
	.word	4
	.word	_Label_2094
	.word	-44
	.word	4
	.word	_Label_2095
	.word	-48
	.word	4
	.word	_Label_2096
	.word	-52
	.word	4
	.word	0
_Label_2081:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2082:
	.ascii	"Pself\0"
	.align
_Label_2083:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2084:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2085:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2086:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2087:
	.byte	'?'
	.ascii	"_temp_2079\0"
	.align
_Label_2088:
	.byte	'?'
	.ascii	"_temp_2078\0"
	.align
_Label_2089:
	.byte	'?'
	.ascii	"_temp_2077\0"
	.align
_Label_2090:
	.byte	'?'
	.ascii	"_temp_2076\0"
	.align
_Label_2091:
	.byte	'?'
	.ascii	"_temp_2075\0"
	.align
_Label_2092:
	.byte	'?'
	.ascii	"_temp_2074\0"
	.align
_Label_2093:
	.byte	'?'
	.ascii	"_temp_2065\0"
	.align
_Label_2094:
	.byte	'?'
	.ascii	"_temp_2064\0"
	.align
_Label_2095:
	.byte	'?'
	.ascii	"_temp_2063\0"
	.align
_Label_2096:
	.byte	'?'
	.ascii	"_temp_2059\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2081,r13		! source line 2081
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2096,r13		! source line 2096
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2102,r13		! source line 2102
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2097
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2098
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2099
	.word	12
	.word	4
	.word	_Label_2100
	.word	16
	.word	4
	.word	_Label_2101
	.word	20
	.word	4
	.word	_Label_2102
	.word	24
	.word	4
	.word	0
_Label_2097:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2098:
	.ascii	"Pself\0"
	.align
_Label_2099:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2100:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2101:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2102:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3061:
	push	r0
	sub	r1,1,r1
	bne	_Label_3061
	mov	2107,r13		! source line 2107
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0SE",r10
!   _temp_2103 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0WH",r10
_Label_2104:
!	jmp	_Label_2105
_Label_2105:
	mov	2120,r13		! source line 2120
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2121,r13		! source line 2121
	mov	"\0\0SE",r10
!   _temp_2107 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2108) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2107  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2123,r13		! source line 2123
	mov	"\0\0SE",r10
!   _temp_2109 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2126,r13		! source line 2126
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2118 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2112
	cmp	r1,2
	be	_Label_2113
	cmp	r1,3
	be	_Label_2114
	cmp	r1,4
	be	_Label_2115
	cmp	r1,5
	be	_Label_2116
	cmp	r1,6
	be	_Label_2117
	jmp	_Label_2110
! CASE 1...
_Label_2112:
! SEND STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0SE",r10
!   _temp_2119 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2129,r13		! source line 2129
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2113:
! CALL STATEMENT...
!   _temp_2120 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2120  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2131,r13		! source line 2131
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2114:
! CALL STATEMENT...
!   _temp_2121 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2121  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2133,r13		! source line 2133
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2115:
! CALL STATEMENT...
!   _temp_2122 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2122  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2135,r13		! source line 2135
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2116:
! BREAK STATEMENT...
	mov	2139,r13		! source line 2139
	mov	"\0\0BR",r10
	jmp	_Label_2111
! CASE 6...
_Label_2117:
! CALL STATEMENT...
!   _temp_2123 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2123  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2141,r13		! source line 2141
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2110:
! CALL STATEMENT...
!   _temp_2124 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2124  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2143,r13		! source line 2143
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2111:
! END WHILE...
	jmp	_Label_2104
_Label_2106:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2125
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2126
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2127
	.word	12
	.word	4
	.word	_Label_2128
	.word	16
	.word	4
	.word	_Label_2129
	.word	20
	.word	4
	.word	_Label_2130
	.word	-12
	.word	4
	.word	_Label_2131
	.word	-16
	.word	4
	.word	_Label_2132
	.word	-20
	.word	4
	.word	_Label_2133
	.word	-24
	.word	4
	.word	_Label_2134
	.word	-28
	.word	4
	.word	_Label_2135
	.word	-32
	.word	4
	.word	_Label_2136
	.word	-36
	.word	4
	.word	_Label_2137
	.word	-40
	.word	4
	.word	_Label_2138
	.word	-44
	.word	4
	.word	_Label_2139
	.word	-48
	.word	4
	.word	_Label_2140
	.word	-52
	.word	4
	.word	0
_Label_2125:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2126:
	.ascii	"Pself\0"
	.align
_Label_2127:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2128:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2129:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2124\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2123\0"
	.align
_Label_2132:
	.byte	'?'
	.ascii	"_temp_2122\0"
	.align
_Label_2133:
	.byte	'?'
	.ascii	"_temp_2121\0"
	.align
_Label_2134:
	.byte	'?'
	.ascii	"_temp_2120\0"
	.align
_Label_2135:
	.byte	'?'
	.ascii	"_temp_2119\0"
	.align
_Label_2136:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2137:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2138:
	.byte	'?'
	.ascii	"_temp_2108\0"
	.align
_Label_2139:
	.byte	'?'
	.ascii	"_temp_2107\0"
	.align
_Label_2140:
	.byte	'?'
	.ascii	"_temp_2103\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2152,r13		! source line 2152
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2167,r13		! source line 2167
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2172,r13		! source line 2172
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2141
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2142
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2143
	.word	12
	.word	4
	.word	_Label_2144
	.word	16
	.word	4
	.word	_Label_2145
	.word	20
	.word	4
	.word	_Label_2146
	.word	24
	.word	4
	.word	0
_Label_2141:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2142:
	.ascii	"Pself\0"
	.align
_Label_2143:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2144:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2145:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2146:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2147
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2147:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2148
	.word	_sourceFileName
	.word	334		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2148:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3062:
	push	r0
	sub	r1,1,r1
	bne	_Label_3062
	mov	2183,r13		! source line 2183
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2149 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2149  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2190,r13		! source line 2190
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2192,r13		! source line 2192
	mov	"\0\0SE",r10
!   _temp_2151 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2195,r13		! source line 2195
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0SE",r10
!   _temp_2154 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2198,r13		! source line 2198
	mov	"\0\0AS",r10
!   _temp_2155 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2157 = &_temp_2156
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2157 = _temp_2157 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2159 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3063:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3063
!   _temp_2159 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2161:
!   Data Move: *_temp_2157 = _temp_2159  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3064:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3064
!   _temp_2157 = _temp_2157 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2158 = _temp_2158 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2158) then goto _Label_2161
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2161
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2162 = &_temp_2156
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3065
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3065:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2155 = *_temp_2162  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3066:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3066
! FOR STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2167 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2168 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2167  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2163:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2168 then goto _Label_2166		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2166
_Label_2164:
	mov	2200,r13		! source line 2200
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0AS",r10
!   _temp_2169 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2169 [i ] into _temp_2170
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2171 = _temp_2170 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2171 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0SE",r10
!   _temp_2172 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2172 [i ] into _temp_2173
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2203,r13		! source line 2203
	mov	"\0\0SE",r10
!   _temp_2175 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2175 [i ] into _temp_2176
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2174 = _temp_2176		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2177 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2174  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2165:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2163
! END FOR
_Label_2166:
! ASSIGNMENT STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0SE",r10
!   _temp_2180 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2210,r13		! source line 2210
	mov	"\0\0AS",r10
!   _temp_2181 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2183 = &_temp_2182
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2183 = _temp_2183 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2185 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3067:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3067
!   _temp_2185 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2187:
!   Data Move: *_temp_2183 = _temp_2185  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3068:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3068
!   _temp_2183 = _temp_2183 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2184 = _temp_2184 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2184) then goto _Label_2187
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2187
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2188 = &_temp_2182
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3069
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3069:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2181 = *_temp_2188  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3070:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3070
! FOR STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2193 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2194 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2193  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2189:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2194 then goto _Label_2192		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2192
_Label_2190:
	mov	2212,r13		! source line 2212
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0AS",r10
!   _temp_2195 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2195 [i ] into _temp_2196
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2197 = _temp_2196 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2197 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2214,r13		! source line 2214
	mov	"\0\0SE",r10
!   _temp_2199 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2199 [i ] into _temp_2200
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2198 = _temp_2200		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2201 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2198  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2191:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2189
! END FOR
_Label_2192:
! ASSIGNMENT STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3071:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3071
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2219,r13		! source line 2219
	mov	"\0\0AS",r10
!   _temp_2203 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2204 = _temp_2203 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2204 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0AS",r10
	mov	2224,r13		! source line 2224
	mov	"\0\0SE",r10
!   _temp_2205 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0SE",r10
!   _temp_2206 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2225,r13		! source line 2225
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2207
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2208
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2209
	.word	-12
	.word	4
	.word	_Label_2210
	.word	-16
	.word	4
	.word	_Label_2211
	.word	-20
	.word	4
	.word	_Label_2212
	.word	-24
	.word	4
	.word	_Label_2213
	.word	-28
	.word	4
	.word	_Label_2214
	.word	-32
	.word	4
	.word	_Label_2215
	.word	-36
	.word	4
	.word	_Label_2216
	.word	-40
	.word	4
	.word	_Label_2217
	.word	-44
	.word	4
	.word	_Label_2218
	.word	-48
	.word	4
	.word	_Label_2219
	.word	-52
	.word	4
	.word	_Label_2220
	.word	-56
	.word	4
	.word	_Label_2221
	.word	-60
	.word	4
	.word	_Label_2222
	.word	-64
	.word	4
	.word	_Label_2223
	.word	-68
	.word	4
	.word	_Label_2224
	.word	-72
	.word	4
	.word	_Label_2225
	.word	-100
	.word	28
	.word	_Label_2226
	.word	-104
	.word	4
	.word	_Label_2227
	.word	-108
	.word	4
	.word	_Label_2228
	.word	-392
	.word	284
	.word	_Label_2229
	.word	-396
	.word	4
	.word	_Label_2230
	.word	-400
	.word	4
	.word	_Label_2231
	.word	-404
	.word	4
	.word	_Label_2232
	.word	-408
	.word	4
	.word	_Label_2233
	.word	-412
	.word	4
	.word	_Label_2234
	.word	-416
	.word	4
	.word	_Label_2235
	.word	-420
	.word	4
	.word	_Label_2236
	.word	-424
	.word	4
	.word	_Label_2237
	.word	-428
	.word	4
	.word	_Label_2238
	.word	-432
	.word	4
	.word	_Label_2239
	.word	-436
	.word	4
	.word	_Label_2240
	.word	-440
	.word	4
	.word	_Label_2241
	.word	-444
	.word	4
	.word	_Label_2242
	.word	-448
	.word	4
	.word	_Label_2243
	.word	-452
	.word	4
	.word	_Label_2244
	.word	-456
	.word	4
	.word	_Label_2245
	.word	-460
	.word	4
	.word	_Label_2246
	.word	-500
	.word	40
	.word	_Label_2247
	.word	-504
	.word	4
	.word	_Label_2248
	.word	-508
	.word	4
	.word	_Label_2249
	.word	-912
	.word	404
	.word	_Label_2250
	.word	-916
	.word	4
	.word	_Label_2251
	.word	-920
	.word	4
	.word	_Label_2252
	.word	-924
	.word	4
	.word	_Label_2253
	.word	-928
	.word	4
	.word	_Label_2254
	.word	-932
	.word	4
	.word	_Label_2255
	.word	-936
	.word	4
	.word	_Label_2256
	.word	-940
	.word	4
	.word	_Label_2257
	.word	-944
	.word	4
	.word	0
_Label_2207:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2208:
	.ascii	"Pself\0"
	.align
_Label_2209:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2210:
	.byte	'?'
	.ascii	"_temp_2205\0"
	.align
_Label_2211:
	.byte	'?'
	.ascii	"_temp_2204\0"
	.align
_Label_2212:
	.byte	'?'
	.ascii	"_temp_2203\0"
	.align
_Label_2213:
	.byte	'?'
	.ascii	"_temp_2202\0"
	.align
_Label_2214:
	.byte	'?'
	.ascii	"_temp_2201\0"
	.align
_Label_2215:
	.byte	'?'
	.ascii	"_temp_2200\0"
	.align
_Label_2216:
	.byte	'?'
	.ascii	"_temp_2199\0"
	.align
_Label_2217:
	.byte	'?'
	.ascii	"_temp_2198\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2194\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2193\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2188\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2186\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2185\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2184\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2183\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2182\0"
	.align
_Label_2229:
	.byte	'?'
	.ascii	"_temp_2181\0"
	.align
_Label_2230:
	.byte	'?'
	.ascii	"_temp_2180\0"
	.align
_Label_2231:
	.byte	'?'
	.ascii	"_temp_2179\0"
	.align
_Label_2232:
	.byte	'?'
	.ascii	"_temp_2178\0"
	.align
_Label_2233:
	.byte	'?'
	.ascii	"_temp_2177\0"
	.align
_Label_2234:
	.byte	'?'
	.ascii	"_temp_2176\0"
	.align
_Label_2235:
	.byte	'?'
	.ascii	"_temp_2175\0"
	.align
_Label_2236:
	.byte	'?'
	.ascii	"_temp_2174\0"
	.align
_Label_2237:
	.byte	'?'
	.ascii	"_temp_2173\0"
	.align
_Label_2238:
	.byte	'?'
	.ascii	"_temp_2172\0"
	.align
_Label_2239:
	.byte	'?'
	.ascii	"_temp_2171\0"
	.align
_Label_2240:
	.byte	'?'
	.ascii	"_temp_2170\0"
	.align
_Label_2241:
	.byte	'?'
	.ascii	"_temp_2169\0"
	.align
_Label_2242:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2243:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2244:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2245:
	.byte	'?'
	.ascii	"_temp_2160\0"
	.align
_Label_2246:
	.byte	'?'
	.ascii	"_temp_2159\0"
	.align
_Label_2247:
	.byte	'?'
	.ascii	"_temp_2158\0"
	.align
_Label_2248:
	.byte	'?'
	.ascii	"_temp_2157\0"
	.align
_Label_2249:
	.byte	'?'
	.ascii	"_temp_2156\0"
	.align
_Label_2250:
	.byte	'?'
	.ascii	"_temp_2155\0"
	.align
_Label_2251:
	.byte	'?'
	.ascii	"_temp_2154\0"
	.align
_Label_2252:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2253:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2254:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2255:
	.byte	'?'
	.ascii	"_temp_2150\0"
	.align
_Label_2256:
	.byte	'?'
	.ascii	"_temp_2149\0"
	.align
_Label_2257:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3072:
	push	r0
	sub	r1,1,r1
	bne	_Label_3072
	mov	2232,r13		! source line 2232
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2234,r13		! source line 2234
	mov	"\0\0SE",r10
!   _temp_2258 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2259 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2259  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2235,r13		! source line 2235
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2236,r13		! source line 2236
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2264 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2265 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2264  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2260:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2265 then goto _Label_2263		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2263
_Label_2261:
	mov	2236,r13		! source line 2236
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2266 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2266  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2237,r13		! source line 2237
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2238,r13		! source line 2238
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2267 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2267  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2239,r13		! source line 2239
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2240,r13		! source line 2240
	mov	"\0\0SE",r10
!   _temp_2268 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2268 [i ] into _temp_2269
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2262:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2260
! END FOR
_Label_2263:
! CALL STATEMENT...
!   _temp_2270 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2270  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2242,r13		! source line 2242
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2243,r13		! source line 2243
	mov	"\0\0SE",r10
!   _temp_2271 = _function_211_printFCB
	set	_function_211_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2272 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2271  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2244,r13		! source line 2244
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2273 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2273  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2245,r13		! source line 2245
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2246,r13		! source line 2246
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2278 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2279 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2278  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2274:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2279 then goto _Label_2277		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2277
_Label_2275:
	mov	2246,r13		! source line 2246
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2280 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2280  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2247,r13		! source line 2247
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2248,r13		! source line 2248
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2281 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2281  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2249,r13		! source line 2249
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2283 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2283 [i ] into _temp_2284
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2282 = _temp_2284		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2282  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2250,r13		! source line 2250
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2285 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2285  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2251,r13		! source line 2251
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2252,r13		! source line 2252
	mov	"\0\0SE",r10
!   _temp_2286 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2286 [i ] into _temp_2287
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2276:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2274
! END FOR
_Label_2277:
! CALL STATEMENT...
!   _temp_2288 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2288  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2254,r13		! source line 2254
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0SE",r10
!   _temp_2289 = _function_210_printOpen
	set	_function_210_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2290 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2289  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2256,r13		! source line 2256
	mov	"\0\0SE",r10
!   _temp_2291 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2256,r13		! source line 2256
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2292
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2293
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2294
	.word	-12
	.word	4
	.word	_Label_2295
	.word	-16
	.word	4
	.word	_Label_2296
	.word	-20
	.word	4
	.word	_Label_2297
	.word	-24
	.word	4
	.word	_Label_2298
	.word	-28
	.word	4
	.word	_Label_2299
	.word	-32
	.word	4
	.word	_Label_2300
	.word	-36
	.word	4
	.word	_Label_2301
	.word	-40
	.word	4
	.word	_Label_2302
	.word	-44
	.word	4
	.word	_Label_2303
	.word	-48
	.word	4
	.word	_Label_2304
	.word	-52
	.word	4
	.word	_Label_2305
	.word	-56
	.word	4
	.word	_Label_2306
	.word	-60
	.word	4
	.word	_Label_2307
	.word	-64
	.word	4
	.word	_Label_2308
	.word	-68
	.word	4
	.word	_Label_2309
	.word	-72
	.word	4
	.word	_Label_2310
	.word	-76
	.word	4
	.word	_Label_2311
	.word	-80
	.word	4
	.word	_Label_2312
	.word	-84
	.word	4
	.word	_Label_2313
	.word	-88
	.word	4
	.word	_Label_2314
	.word	-92
	.word	4
	.word	_Label_2315
	.word	-96
	.word	4
	.word	_Label_2316
	.word	-100
	.word	4
	.word	_Label_2317
	.word	-104
	.word	4
	.word	_Label_2318
	.word	-108
	.word	4
	.word	_Label_2319
	.word	-112
	.word	4
	.word	_Label_2320
	.word	-116
	.word	4
	.word	0
_Label_2292:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2293:
	.ascii	"Pself\0"
	.align
_Label_2294:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2295:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2296:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2280\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2279\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2278\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2320:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3073:
	push	r0
	sub	r1,1,r1
	bne	_Label_3073
	mov	2261,r13		! source line 2261
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0AS",r10
	mov	2277,r13		! source line 2277
	mov	"\0\0SE",r10
!   _temp_2321 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2322
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2322
	jmp	_Label_2323
_Label_2322:
! THEN...
	mov	2279,r13		! source line 2279
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2279,r13		! source line 2279
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2323:
! SEND STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0SE",r10
!   _temp_2324 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0WH",r10
_Label_2325:
	mov	2284,r13		! source line 2284
	mov	"\0\0SE",r10
!   _temp_2328 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2326 else goto _Label_2327
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2327
	jmp	_Label_2326
_Label_2326:
	mov	2284,r13		! source line 2284
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2285,r13		! source line 2285
	mov	"\0\0SE",r10
!   _temp_2329 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2330 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2329  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2325
_Label_2327:
! ASSIGNMENT STATEMENT...
	mov	2287,r13		! source line 2287
	mov	"\0\0AS",r10
	mov	2287,r13		! source line 2287
	mov	"\0\0SE",r10
!   _temp_2331 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2332 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2332 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2291,r13		! source line 2291
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2333 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2333 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2294,r13		! source line 2294
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2334 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2334 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2296,r13		! source line 2296
	mov	"\0\0SE",r10
!   _temp_2335 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2297,r13		! source line 2297
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2336
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2337
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2338
	.word	12
	.word	4
	.word	_Label_2339
	.word	-12
	.word	4
	.word	_Label_2340
	.word	-16
	.word	4
	.word	_Label_2341
	.word	-20
	.word	4
	.word	_Label_2342
	.word	-24
	.word	4
	.word	_Label_2343
	.word	-28
	.word	4
	.word	_Label_2344
	.word	-32
	.word	4
	.word	_Label_2345
	.word	-36
	.word	4
	.word	_Label_2346
	.word	-40
	.word	4
	.word	_Label_2347
	.word	-44
	.word	4
	.word	_Label_2348
	.word	-48
	.word	4
	.word	_Label_2349
	.word	-52
	.word	4
	.word	_Label_2350
	.word	-56
	.word	4
	.word	0
_Label_2336:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2337:
	.ascii	"Pself\0"
	.align
_Label_2338:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2335\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2334\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2333\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2332\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2331\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2330\0"
	.align
_Label_2345:
	.byte	'?'
	.ascii	"_temp_2329\0"
	.align
_Label_2346:
	.byte	'?'
	.ascii	"_temp_2328\0"
	.align
_Label_2347:
	.byte	'?'
	.ascii	"_temp_2324\0"
	.align
_Label_2348:
	.byte	'?'
	.ascii	"_temp_2321\0"
	.align
_Label_2349:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2350:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3074:
	push	r0
	sub	r1,1,r1
	bne	_Label_3074
	mov	2302,r13		! source line 2302
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2327,r13		! source line 2327
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2332,r13		! source line 2332
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2352		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2352
!	jmp	_Label_2351
_Label_2351:
! THEN...
	mov	2333,r13		! source line 2333
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2353 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2353  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2333,r13		! source line 2333
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2352:
! ASSIGNMENT STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2340,r13		! source line 2340
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2343,r13		! source line 2343
	mov	"\0\0WH",r10
_Label_2354:
!   if numFiles <= 0 then goto _Label_2356		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2356
!	jmp	_Label_2355
_Label_2355:
	mov	2343,r13		! source line 2343
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2357 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2357  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2344,r13		! source line 2344
	mov	"\0\0CA",r10
	call	_function_212_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2345,r13		! source line 2345
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2358 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2358  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2346,r13		! source line 2346
	mov	"\0\0CA",r10
	call	_function_212_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2347,r13		! source line 2347
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2359 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2359  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2348,r13		! source line 2348
	mov	"\0\0CA",r10
	call	_function_212_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2349,r13		! source line 2349
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2350,r13		! source line 2350
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2363 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2363 then goto _Label_2361		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2361
!	jmp	_Label_2362
_Label_2362:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2365
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
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
!   _temp_2364 = _temp_2365		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2364  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2351,r13		! source line 2351
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2360 else goto _Label_2361
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2361
	jmp	_Label_2360
_Label_2360:
! THEN...
	mov	2352,r13		! source line 2352
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2352,r13		! source line 2352
	mov	"\0\0BR",r10
	jmp	_Label_2356
! END IF...
_Label_2361:
! ASSIGNMENT STATEMENT...
	mov	2354,r13		! source line 2354
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2355,r13		! source line 2355
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2354
_Label_2356:
! IF STATEMENT...
	mov	2359,r13		! source line 2359
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2367		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2367
!	jmp	_Label_2366
_Label_2366:
! THEN...
	mov	2360,r13		! source line 2360
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2360,r13		! source line 2360
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2367:
! SEND STATEMENT...
	mov	2363,r13		! source line 2363
	mov	"\0\0SE",r10
!   _temp_2368 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2373 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2374 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2373  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2369:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2374 then goto _Label_2372		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2372
_Label_2370:
	mov	2365,r13		! source line 2365
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0AS",r10
!   _temp_2375 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2375 [i ] into _temp_2376
!     make sure index expr is >= 0
	load	[r14+-136],r2
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
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2376		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2380 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2379 = *_temp_2380  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2379 != start then goto _Label_2378		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2378
!	jmp	_Label_2377
_Label_2377:
! THEN...
	mov	2368,r13		! source line 2368
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2381 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2384 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2383 = *_temp_2384  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2382 = _temp_2383 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2381 = _temp_2382  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0SE",r10
!   _temp_2385 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2370,r13		! source line 2370
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2378:
!   Increment the FOR-LOOP index variable and jump back
_Label_2371:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2369
! END FOR
_Label_2372:
! WHILE STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0WH",r10
_Label_2386:
	mov	2375,r13		! source line 2375
	mov	"\0\0SE",r10
!   _temp_2389 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2387 else goto _Label_2388
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2388
	jmp	_Label_2387
_Label_2387:
	mov	2375,r13		! source line 2375
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2376,r13		! source line 2376
	mov	"\0\0SE",r10
!   _temp_2390 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2391 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2390  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2386
_Label_2388:
! ASSIGNMENT STATEMENT...
	mov	2378,r13		! source line 2378
	mov	"\0\0AS",r10
	mov	2378,r13		! source line 2378
	mov	"\0\0SE",r10
!   _temp_2392 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2381,r13		! source line 2381
	mov	"\0\0SE",r10
!   _temp_2393 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2394 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2394 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2395 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2395 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2396 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2396 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2387,r13		! source line 2387
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2401 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2400 = *_temp_2401  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2400 < 0 then goto _Label_2399		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2399
	jmp	_Label_2397
_Label_2399:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2402 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2402 ) then goto _Label_2398		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2398
!	jmp	_Label_2397
_Label_2397:
! THEN...
	mov	2388,r13		! source line 2388
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2403 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2403  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2388,r13		! source line 2388
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2398:
! RETURN STATEMENT...
	mov	2390,r13		! source line 2390
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2404
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2405
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2406
	.word	12
	.word	4
	.word	_Label_2407
	.word	-12
	.word	4
	.word	_Label_2408
	.word	-16
	.word	4
	.word	_Label_2409
	.word	-20
	.word	4
	.word	_Label_2410
	.word	-24
	.word	4
	.word	_Label_2411
	.word	-28
	.word	4
	.word	_Label_2412
	.word	-32
	.word	4
	.word	_Label_2413
	.word	-36
	.word	4
	.word	_Label_2414
	.word	-40
	.word	4
	.word	_Label_2415
	.word	-44
	.word	4
	.word	_Label_2416
	.word	-48
	.word	4
	.word	_Label_2417
	.word	-52
	.word	4
	.word	_Label_2418
	.word	-56
	.word	4
	.word	_Label_2419
	.word	-60
	.word	4
	.word	_Label_2420
	.word	-64
	.word	4
	.word	_Label_2421
	.word	-68
	.word	4
	.word	_Label_2422
	.word	-72
	.word	4
	.word	_Label_2423
	.word	-76
	.word	4
	.word	_Label_2424
	.word	-80
	.word	4
	.word	_Label_2425
	.word	-84
	.word	4
	.word	_Label_2426
	.word	-88
	.word	4
	.word	_Label_2427
	.word	-92
	.word	4
	.word	_Label_2428
	.word	-96
	.word	4
	.word	_Label_2429
	.word	-100
	.word	4
	.word	_Label_2430
	.word	-104
	.word	4
	.word	_Label_2431
	.word	-108
	.word	4
	.word	_Label_2432
	.word	-112
	.word	4
	.word	_Label_2433
	.word	-116
	.word	4
	.word	_Label_2434
	.word	-120
	.word	4
	.word	_Label_2435
	.word	-124
	.word	4
	.word	_Label_2436
	.word	-128
	.word	4
	.word	_Label_2437
	.word	-132
	.word	4
	.word	_Label_2438
	.word	-136
	.word	4
	.word	_Label_2439
	.word	-140
	.word	4
	.word	_Label_2440
	.word	-144
	.word	4
	.word	_Label_2441
	.word	-148
	.word	4
	.word	_Label_2442
	.word	-152
	.word	4
	.word	_Label_2443
	.word	-156
	.word	4
	.word	_Label_2444
	.word	-160
	.word	4
	.word	0
_Label_2404:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2405:
	.ascii	"Pself\0"
	.align
_Label_2406:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2403\0"
	.align
_Label_2408:
	.byte	'?'
	.ascii	"_temp_2402\0"
	.align
_Label_2409:
	.byte	'?'
	.ascii	"_temp_2401\0"
	.align
_Label_2410:
	.byte	'?'
	.ascii	"_temp_2400\0"
	.align
_Label_2411:
	.byte	'?'
	.ascii	"_temp_2396\0"
	.align
_Label_2412:
	.byte	'?'
	.ascii	"_temp_2395\0"
	.align
_Label_2413:
	.byte	'?'
	.ascii	"_temp_2394\0"
	.align
_Label_2414:
	.byte	'?'
	.ascii	"_temp_2393\0"
	.align
_Label_2415:
	.byte	'?'
	.ascii	"_temp_2392\0"
	.align
_Label_2416:
	.byte	'?'
	.ascii	"_temp_2391\0"
	.align
_Label_2417:
	.byte	'?'
	.ascii	"_temp_2390\0"
	.align
_Label_2418:
	.byte	'?'
	.ascii	"_temp_2389\0"
	.align
_Label_2419:
	.byte	'?'
	.ascii	"_temp_2385\0"
	.align
_Label_2420:
	.byte	'?'
	.ascii	"_temp_2384\0"
	.align
_Label_2421:
	.byte	'?'
	.ascii	"_temp_2383\0"
	.align
_Label_2422:
	.byte	'?'
	.ascii	"_temp_2382\0"
	.align
_Label_2423:
	.byte	'?'
	.ascii	"_temp_2381\0"
	.align
_Label_2424:
	.byte	'?'
	.ascii	"_temp_2380\0"
	.align
_Label_2425:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2426:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2365\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2364\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2363\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2437:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2438:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2439:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2440:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2441:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2442:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2443:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2444:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3075:
	push	r0
	sub	r1,1,r1
	bne	_Label_3075
	mov	2403,r13		! source line 2403
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0IF",r10
!   _temp_2447 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2447 then goto _Label_2446		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2446
!	jmp	_Label_2445
_Label_2445:
! THEN...
	mov	2406,r13		! source line 2406
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2406,r13		! source line 2406
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2446:
! SEND STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0SE",r10
!   _temp_2448 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0SE",r10
!   _temp_2449 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2450 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2450  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2451 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2454 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2453 = *_temp_2454  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2452 = _temp_2453 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2451 = _temp_2452  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2458 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2457 = *_temp_2458  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2457 > 0 then goto _Label_2456		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2456
!	jmp	_Label_2455
_Label_2455:
! THEN...
	mov	2413,r13		! source line 2413
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0SE",r10
!   _temp_2459 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0SE",r10
!   _temp_2460 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2461 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2460  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2462 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2465 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2464 = *_temp_2465  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2463 = _temp_2464 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2462 = _temp_2463  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2469 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2468 = *_temp_2469  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2468 > 0 then goto _Label_2467		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2467
!	jmp	_Label_2466
_Label_2466:
! THEN...
	mov	2417,r13		! source line 2417
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0SE",r10
!   _temp_2470 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2418,r13		! source line 2418
	mov	"\0\0SE",r10
!   _temp_2471 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2472 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2471  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_2467:
! END IF...
_Label_2456:
! SEND STATEMENT...
	mov	2421,r13		! source line 2421
	mov	"\0\0SE",r10
!   _temp_2473 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	2421,r13		! source line 2421
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2474
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2475
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2476
	.word	12
	.word	4
	.word	_Label_2477
	.word	-12
	.word	4
	.word	_Label_2478
	.word	-16
	.word	4
	.word	_Label_2479
	.word	-20
	.word	4
	.word	_Label_2480
	.word	-24
	.word	4
	.word	_Label_2481
	.word	-28
	.word	4
	.word	_Label_2482
	.word	-32
	.word	4
	.word	_Label_2483
	.word	-36
	.word	4
	.word	_Label_2484
	.word	-40
	.word	4
	.word	_Label_2485
	.word	-44
	.word	4
	.word	_Label_2486
	.word	-48
	.word	4
	.word	_Label_2487
	.word	-52
	.word	4
	.word	_Label_2488
	.word	-56
	.word	4
	.word	_Label_2489
	.word	-60
	.word	4
	.word	_Label_2490
	.word	-64
	.word	4
	.word	_Label_2491
	.word	-68
	.word	4
	.word	_Label_2492
	.word	-72
	.word	4
	.word	_Label_2493
	.word	-76
	.word	4
	.word	_Label_2494
	.word	-80
	.word	4
	.word	_Label_2495
	.word	-84
	.word	4
	.word	_Label_2496
	.word	-88
	.word	4
	.word	_Label_2497
	.word	-92
	.word	4
	.word	_Label_2498
	.word	-96
	.word	4
	.word	_Label_2499
	.word	-100
	.word	4
	.word	_Label_2500
	.word	-104
	.word	4
	.word	0
_Label_2474:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2475:
	.ascii	"Pself\0"
	.align
_Label_2476:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2477:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2478:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2479:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2480:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2481:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2482:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2483:
	.byte	'?'
	.ascii	"_temp_2465\0"
	.align
_Label_2484:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2485:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2486:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2487:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2488:
	.byte	'?'
	.ascii	"_temp_2460\0"
	.align
_Label_2489:
	.byte	'?'
	.ascii	"_temp_2459\0"
	.align
_Label_2490:
	.byte	'?'
	.ascii	"_temp_2458\0"
	.align
_Label_2491:
	.byte	'?'
	.ascii	"_temp_2457\0"
	.align
_Label_2492:
	.byte	'?'
	.ascii	"_temp_2454\0"
	.align
_Label_2493:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2494:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2450\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2449\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2448\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2500:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3076:
	push	r0
	sub	r1,1,r1
	bne	_Label_3076
	mov	2426,r13		! source line 2426
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2431,r13		! source line 2431
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2504 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2503 = *_temp_2504  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2503) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2505 = _temp_2503 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2505 ) then goto _Label_2502		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2502
!	jmp	_Label_2501
_Label_2501:
! THEN...
	mov	2432,r13		! source line 2432
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2432,r13		! source line 2432
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2510 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2509 = *_temp_2510  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2509) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2511 = _temp_2509 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2508 = *_temp_2511  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2508 >= 0 then goto _Label_2507		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2507
!	jmp	_Label_2506
_Label_2506:
! THEN...
	mov	2433,r13		! source line 2433
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2512 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2512  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2433,r13		! source line 2433
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2507:
! ASSIGNMENT STATEMENT...
	mov	2435,r13		! source line 2435
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2514 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2513 = *_temp_2514  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2513) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2515 = _temp_2513 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2515 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2436,r13		! source line 2436
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2519 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2518 = *_temp_2519  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2518) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2520 = _temp_2518 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2517 = *_temp_2520  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2523 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2522 = *_temp_2523  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2522) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2524 = _temp_2522 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2521 = *_temp_2524  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2516 = _temp_2517 + _temp_2521		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2527 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2526 = *_temp_2527  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2526) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2528 = _temp_2526 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2525 = *_temp_2528  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2529 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2516  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2525  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2502:
! RETURN STATEMENT...
	mov	2431,r13		! source line 2431
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2530
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2531
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2532
	.word	12
	.word	4
	.word	_Label_2533
	.word	-12
	.word	4
	.word	_Label_2534
	.word	-16
	.word	4
	.word	_Label_2535
	.word	-20
	.word	4
	.word	_Label_2536
	.word	-24
	.word	4
	.word	_Label_2537
	.word	-28
	.word	4
	.word	_Label_2538
	.word	-32
	.word	4
	.word	_Label_2539
	.word	-36
	.word	4
	.word	_Label_2540
	.word	-40
	.word	4
	.word	_Label_2541
	.word	-44
	.word	4
	.word	_Label_2542
	.word	-48
	.word	4
	.word	_Label_2543
	.word	-52
	.word	4
	.word	_Label_2544
	.word	-56
	.word	4
	.word	_Label_2545
	.word	-60
	.word	4
	.word	_Label_2546
	.word	-64
	.word	4
	.word	_Label_2547
	.word	-68
	.word	4
	.word	_Label_2548
	.word	-72
	.word	4
	.word	_Label_2549
	.word	-76
	.word	4
	.word	_Label_2550
	.word	-80
	.word	4
	.word	_Label_2551
	.word	-84
	.word	4
	.word	_Label_2552
	.word	-88
	.word	4
	.word	_Label_2553
	.word	-92
	.word	4
	.word	_Label_2554
	.word	-96
	.word	4
	.word	_Label_2555
	.word	-100
	.word	4
	.word	_Label_2556
	.word	-104
	.word	4
	.word	_Label_2557
	.word	-108
	.word	4
	.word	0
_Label_2530:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2531:
	.ascii	"Pself\0"
	.align
_Label_2532:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2533:
	.byte	'?'
	.ascii	"_temp_2529\0"
	.align
_Label_2534:
	.byte	'?'
	.ascii	"_temp_2528\0"
	.align
_Label_2535:
	.byte	'?'
	.ascii	"_temp_2527\0"
	.align
_Label_2536:
	.byte	'?'
	.ascii	"_temp_2526\0"
	.align
_Label_2537:
	.byte	'?'
	.ascii	"_temp_2525\0"
	.align
_Label_2538:
	.byte	'?'
	.ascii	"_temp_2524\0"
	.align
_Label_2539:
	.byte	'?'
	.ascii	"_temp_2523\0"
	.align
_Label_2540:
	.byte	'?'
	.ascii	"_temp_2522\0"
	.align
_Label_2541:
	.byte	'?'
	.ascii	"_temp_2521\0"
	.align
_Label_2542:
	.byte	'?'
	.ascii	"_temp_2520\0"
	.align
_Label_2543:
	.byte	'?'
	.ascii	"_temp_2519\0"
	.align
_Label_2544:
	.byte	'?'
	.ascii	"_temp_2518\0"
	.align
_Label_2545:
	.byte	'?'
	.ascii	"_temp_2517\0"
	.align
_Label_2546:
	.byte	'?'
	.ascii	"_temp_2516\0"
	.align
_Label_2547:
	.byte	'?'
	.ascii	"_temp_2515\0"
	.align
_Label_2548:
	.byte	'?'
	.ascii	"_temp_2514\0"
	.align
_Label_2549:
	.byte	'?'
	.ascii	"_temp_2513\0"
	.align
_Label_2550:
	.byte	'?'
	.ascii	"_temp_2512\0"
	.align
_Label_2551:
	.byte	'?'
	.ascii	"_temp_2511\0"
	.align
_Label_2552:
	.byte	'?'
	.ascii	"_temp_2510\0"
	.align
_Label_2553:
	.byte	'?'
	.ascii	"_temp_2509\0"
	.align
_Label_2554:
	.byte	'?'
	.ascii	"_temp_2508\0"
	.align
_Label_2555:
	.byte	'?'
	.ascii	"_temp_2505\0"
	.align
_Label_2556:
	.byte	'?'
	.ascii	"_temp_2504\0"
	.align
_Label_2557:
	.byte	'?'
	.ascii	"_temp_2503\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3077:
	push	r0
	sub	r1,1,r1
	bne	_Label_3077
	mov	2445,r13		! source line 2445
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0SE",r10
!   _temp_2558 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2461,r13		! source line 2461
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2564		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2564
!   _temp_2563 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2565
_Label_2564:
!   _temp_2563 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2565:
!   if _temp_2563 then goto _Label_2562 else goto _Label_2559
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2559
	jmp	_Label_2562
_Label_2562:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2568 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2567 = *_temp_2568  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2567 == 0 then goto _Label_2569		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2569
!   _temp_2566 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2570
_Label_2569:
!   _temp_2566 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2570:
!   if _temp_2566 then goto _Label_2561 else goto _Label_2559
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2559
	jmp	_Label_2561
_Label_2561:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2573 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2572 = *_temp_2573  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2572) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2574 = _temp_2572 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2571 = *_temp_2574  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2571 >= 0 then goto _Label_2560		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2560
!	jmp	_Label_2559
_Label_2559:
! THEN...
	mov	2462,r13		! source line 2462
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2575 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2575  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2462,r13		! source line 2462
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2560:
! ASSIGNMENT STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2576 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2576  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2465,r13		! source line 2465
	mov	"\0\0WH",r10
_Label_2577:
!   if numBytes <= 0 then goto _Label_2579		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2579
!	jmp	_Label_2578
_Label_2578:
	mov	2465,r13		! source line 2465
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2475,r13		! source line 2475
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2583 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2582 = *_temp_2583  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2582 == sector then goto _Label_2581		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2581
!	jmp	_Label_2580
_Label_2580:
! THEN...
	mov	2480,r13		! source line 2480
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2480,r13		! source line 2480
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2584) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2482,r13		! source line 2482
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2587 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2586 = *_temp_2587  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2585 = sector + _temp_2586		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2589 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2588 = *_temp_2589  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2590 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2585  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2588  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2485,r13		! source line 2485
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2591 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2591 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2486,r13		! source line 2486
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2592 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2592 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2581:
! ASSIGNMENT STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2594 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2593 = *_temp_2594  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2593 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2489,r13		! source line 2489
	mov	"\0\0AS",r10
!   _temp_2595 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2595  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2489,r13		! source line 2489
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2493,r13		! source line 2493
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2495,r13		! source line 2495
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2496,r13		! source line 2496
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2577
_Label_2579:
! SEND STATEMENT...
	mov	2503,r13		! source line 2503
	mov	"\0\0SE",r10
!   _temp_2596 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2504,r13		! source line 2504
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2597
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2598
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2599
	.word	12
	.word	4
	.word	_Label_2600
	.word	16
	.word	4
	.word	_Label_2601
	.word	20
	.word	4
	.word	_Label_2602
	.word	24
	.word	4
	.word	_Label_2603
	.word	-16
	.word	4
	.word	_Label_2604
	.word	-20
	.word	4
	.word	_Label_2605
	.word	-24
	.word	4
	.word	_Label_2606
	.word	-28
	.word	4
	.word	_Label_2607
	.word	-32
	.word	4
	.word	_Label_2608
	.word	-36
	.word	4
	.word	_Label_2609
	.word	-40
	.word	4
	.word	_Label_2610
	.word	-44
	.word	4
	.word	_Label_2611
	.word	-48
	.word	4
	.word	_Label_2612
	.word	-52
	.word	4
	.word	_Label_2613
	.word	-56
	.word	4
	.word	_Label_2614
	.word	-60
	.word	4
	.word	_Label_2615
	.word	-64
	.word	4
	.word	_Label_2616
	.word	-68
	.word	4
	.word	_Label_2617
	.word	-72
	.word	4
	.word	_Label_2618
	.word	-76
	.word	4
	.word	_Label_2619
	.word	-80
	.word	4
	.word	_Label_2620
	.word	-84
	.word	4
	.word	_Label_2621
	.word	-88
	.word	4
	.word	_Label_2622
	.word	-92
	.word	4
	.word	_Label_2623
	.word	-96
	.word	4
	.word	_Label_2624
	.word	-100
	.word	4
	.word	_Label_2625
	.word	-104
	.word	4
	.word	_Label_2626
	.word	-9
	.word	1
	.word	_Label_2627
	.word	-10
	.word	1
	.word	_Label_2628
	.word	-108
	.word	4
	.word	_Label_2629
	.word	-112
	.word	4
	.word	_Label_2630
	.word	-116
	.word	4
	.word	_Label_2631
	.word	-120
	.word	4
	.word	_Label_2632
	.word	-124
	.word	4
	.word	_Label_2633
	.word	-128
	.word	4
	.word	0
_Label_2597:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2598:
	.ascii	"Pself\0"
	.align
_Label_2599:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2600:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2601:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2602:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2603:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2604:
	.byte	'?'
	.ascii	"_temp_2595\0"
	.align
_Label_2605:
	.byte	'?'
	.ascii	"_temp_2594\0"
	.align
_Label_2606:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2607:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2608:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
_Label_2609:
	.byte	'?'
	.ascii	"_temp_2590\0"
	.align
_Label_2610:
	.byte	'?'
	.ascii	"_temp_2589\0"
	.align
_Label_2611:
	.byte	'?'
	.ascii	"_temp_2588\0"
	.align
_Label_2612:
	.byte	'?'
	.ascii	"_temp_2587\0"
	.align
_Label_2613:
	.byte	'?'
	.ascii	"_temp_2586\0"
	.align
_Label_2614:
	.byte	'?'
	.ascii	"_temp_2585\0"
	.align
_Label_2615:
	.byte	'?'
	.ascii	"_temp_2584\0"
	.align
_Label_2616:
	.byte	'?'
	.ascii	"_temp_2583\0"
	.align
_Label_2617:
	.byte	'?'
	.ascii	"_temp_2582\0"
	.align
_Label_2618:
	.byte	'?'
	.ascii	"_temp_2576\0"
	.align
_Label_2619:
	.byte	'?'
	.ascii	"_temp_2575\0"
	.align
_Label_2620:
	.byte	'?'
	.ascii	"_temp_2574\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2573\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2572\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2571\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2568\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2567\0"
	.align
_Label_2626:
	.byte	'C'
	.ascii	"_temp_2566\0"
	.align
_Label_2627:
	.byte	'C'
	.ascii	"_temp_2563\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2629:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2630:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2631:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2632:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2633:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3078:
	push	r0
	sub	r1,1,r1
	bne	_Label_3078
	mov	2509,r13		! source line 2509
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0SE",r10
!   _temp_2634 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2526,r13		! source line 2526
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2640		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2640
!   _temp_2639 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2641
_Label_2640:
!   _temp_2639 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2641:
!   if _temp_2639 then goto _Label_2638 else goto _Label_2635
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2635
	jmp	_Label_2638
_Label_2638:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2644 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2643 = *_temp_2644  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2643 == 0 then goto _Label_2645		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2645
!   _temp_2642 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2646
_Label_2645:
!   _temp_2642 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2646:
!   if _temp_2642 then goto _Label_2637 else goto _Label_2635
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2635
	jmp	_Label_2637
_Label_2637:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2649 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2648 = *_temp_2649  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2648) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2650 = _temp_2648 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2647 = *_temp_2650  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2647 >= 0 then goto _Label_2636		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2636
!	jmp	_Label_2635
_Label_2635:
! THEN...
	mov	2527,r13		! source line 2527
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2651 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2651  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2527,r13		! source line 2527
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2636:
! ASSIGNMENT STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2652 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2652  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2530,r13		! source line 2530
	mov	"\0\0WH",r10
_Label_2653:
!   if numBytes <= 0 then goto _Label_2655		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2655
!	jmp	_Label_2654
_Label_2654:
	mov	2530,r13		! source line 2530
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2540,r13		! source line 2540
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2544,r13		! source line 2544
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2659 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2658 = *_temp_2659  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2658 == sector then goto _Label_2657		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2657
!	jmp	_Label_2656
_Label_2656:
! THEN...
	mov	2546,r13		! source line 2546
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2546,r13		! source line 2546
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2660) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2657:
! ASSIGNMENT STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2662 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2661 = *_temp_2662  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2661 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0AS",r10
!   _temp_2663 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2663  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2549,r13		! source line 2549
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2550,r13		! source line 2550
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2667 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2666 = *_temp_2667  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2666 != sector then goto _Label_2665		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2665
!	jmp	_Label_2664
_Label_2664:
	jmp	_Label_2668
_Label_2665:
! ELSE...
	mov	2552,r13		! source line 2552
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2552,r13		! source line 2552
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2671
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2671
	jmp	_Label_2670
_Label_2671:
!   if bytesToMove != 8192 then goto _Label_2670		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2670
!	jmp	_Label_2669
_Label_2669:
	jmp	_Label_2672
_Label_2670:
! ELSE...
	mov	2556,r13		! source line 2556
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2556,r13		! source line 2556
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2675 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2674 = *_temp_2675  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2673 = sector + _temp_2674		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2677 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2676 = *_temp_2677  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2678 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2673  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2676  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2672:
! END IF...
_Label_2668:
! ASSIGNMENT STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2679 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2679 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2561,r13		! source line 2561
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2680 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2680 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2565,r13		! source line 2565
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2568,r13		! source line 2568
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2653
_Label_2655:
! SEND STATEMENT...
	mov	2575,r13		! source line 2575
	mov	"\0\0SE",r10
!   _temp_2681 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2577,r13		! source line 2577
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2682
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2683
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2684
	.word	12
	.word	4
	.word	_Label_2685
	.word	16
	.word	4
	.word	_Label_2686
	.word	20
	.word	4
	.word	_Label_2687
	.word	24
	.word	4
	.word	_Label_2688
	.word	-16
	.word	4
	.word	_Label_2689
	.word	-20
	.word	4
	.word	_Label_2690
	.word	-24
	.word	4
	.word	_Label_2691
	.word	-28
	.word	4
	.word	_Label_2692
	.word	-32
	.word	4
	.word	_Label_2693
	.word	-36
	.word	4
	.word	_Label_2694
	.word	-40
	.word	4
	.word	_Label_2695
	.word	-44
	.word	4
	.word	_Label_2696
	.word	-48
	.word	4
	.word	_Label_2697
	.word	-52
	.word	4
	.word	_Label_2698
	.word	-56
	.word	4
	.word	_Label_2699
	.word	-60
	.word	4
	.word	_Label_2700
	.word	-64
	.word	4
	.word	_Label_2701
	.word	-68
	.word	4
	.word	_Label_2702
	.word	-72
	.word	4
	.word	_Label_2703
	.word	-76
	.word	4
	.word	_Label_2704
	.word	-80
	.word	4
	.word	_Label_2705
	.word	-84
	.word	4
	.word	_Label_2706
	.word	-88
	.word	4
	.word	_Label_2707
	.word	-92
	.word	4
	.word	_Label_2708
	.word	-96
	.word	4
	.word	_Label_2709
	.word	-100
	.word	4
	.word	_Label_2710
	.word	-104
	.word	4
	.word	_Label_2711
	.word	-108
	.word	4
	.word	_Label_2712
	.word	-112
	.word	4
	.word	_Label_2713
	.word	-9
	.word	1
	.word	_Label_2714
	.word	-10
	.word	1
	.word	_Label_2715
	.word	-116
	.word	4
	.word	_Label_2716
	.word	-120
	.word	4
	.word	_Label_2717
	.word	-124
	.word	4
	.word	_Label_2718
	.word	-128
	.word	4
	.word	_Label_2719
	.word	-132
	.word	4
	.word	_Label_2720
	.word	-136
	.word	4
	.word	0
_Label_2682:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2683:
	.ascii	"Pself\0"
	.align
_Label_2684:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2685:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2686:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2687:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2688:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2689:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2690:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2667\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2666\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2658\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2652\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2651\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2650\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2649\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2648\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2647\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2644\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2643\0"
	.align
_Label_2713:
	.byte	'C'
	.ascii	"_temp_2642\0"
	.align
_Label_2714:
	.byte	'C'
	.ascii	"_temp_2639\0"
	.align
_Label_2715:
	.byte	'?'
	.ascii	"_temp_2634\0"
	.align
_Label_2716:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2717:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2718:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2719:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2720:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2721
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2721:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2722
	.word	_sourceFileName
	.word	359		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2722:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3079:
	push	r0
	sub	r1,1,r1
	bne	_Label_3079
	mov	2613,r13		! source line 2613
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2615,r13		! source line 2615
	mov	"\0\0AS",r10
	mov	2615,r13		! source line 2615
	mov	"\0\0SE",r10
!   _temp_2723 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2616,r13		! source line 2616
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2617,r13		! source line 2617
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2618,r13		! source line 2618
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2724
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2725
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2726
	.word	-12
	.word	4
	.word	0
_Label_2724:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2725:
	.ascii	"Pself\0"
	.align
_Label_2726:
	.byte	'?'
	.ascii	"_temp_2723\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3080:
	push	r0
	sub	r1,1,r1
	bne	_Label_3080
	mov	2623,r13		! source line 2623
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2727 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2727  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2624,r13		! source line 2624
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2625,r13		! source line 2625
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2728 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2728  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2626,r13		! source line 2626
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2627,r13		! source line 2627
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2729 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2729  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2628,r13		! source line 2628
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2629,r13		! source line 2629
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2730 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2730  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2630,r13		! source line 2630
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2631,r13		! source line 2631
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2731 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2731  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2632,r13		! source line 2632
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2633,r13		! source line 2633
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2732 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2732  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2634,r13		! source line 2634
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2635,r13		! source line 2635
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2636,r13		! source line 2636
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2636,r13		! source line 2636
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2733
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2734
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2735
	.word	-12
	.word	4
	.word	_Label_2736
	.word	-16
	.word	4
	.word	_Label_2737
	.word	-20
	.word	4
	.word	_Label_2738
	.word	-24
	.word	4
	.word	_Label_2739
	.word	-28
	.word	4
	.word	_Label_2740
	.word	-32
	.word	4
	.word	0
_Label_2733:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2734:
	.ascii	"Pself\0"
	.align
_Label_2735:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2736:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2737:
	.byte	'?'
	.ascii	"_temp_2730\0"
	.align
_Label_2738:
	.byte	'?'
	.ascii	"_temp_2729\0"
	.align
_Label_2739:
	.byte	'?'
	.ascii	"_temp_2728\0"
	.align
_Label_2740:
	.byte	'?'
	.ascii	"_temp_2727\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2741
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2741:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2742
	.word	_sourceFileName
	.word	376		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2742:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3081:
	push	r0
	sub	r1,1,r1
	bne	_Label_3081
	mov	2647,r13		! source line 2647
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2743 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2743  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2648,r13		! source line 2648
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2649,r13		! source line 2649
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2744 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2744  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2650,r13		! source line 2650
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2746		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2746
!	jmp	_Label_2745
_Label_2745:
! THEN...
	mov	2652,r13		! source line 2652
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2652,r13		! source line 2652
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2747
_Label_2746:
! ELSE...
	mov	2654,r13		! source line 2654
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2748 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2748  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2654,r13		! source line 2654
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2747:
! RETURN STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2749
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2750
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2751
	.word	-12
	.word	4
	.word	_Label_2752
	.word	-16
	.word	4
	.word	_Label_2753
	.word	-20
	.word	4
	.word	0
_Label_2749:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2750:
	.ascii	"Pself\0"
	.align
_Label_2751:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2752:
	.byte	'?'
	.ascii	"_temp_2744\0"
	.align
_Label_2753:
	.byte	'?'
	.ascii	"_temp_2743\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3082:
	push	r0
	sub	r1,1,r1
	bne	_Label_3082
	mov	2660,r13		! source line 2660
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2670,r13		! source line 2670
	mov	"\0\0SE",r10
!   _temp_2754 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2755 = _temp_2754 + 4
	load	[r14+-36],r1
	add	r1,4,r1
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
	mov	2671,r13		! source line 2671
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0SE",r10
!   _temp_2756 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2757 = _temp_2756 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2674,r13		! source line 2674
	mov	"\0\0RE",r10
	mov	2674,r13		! source line 2674
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2760 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2759  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2758  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2758  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2761
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2762
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2763
	.word	12
	.word	4
	.word	_Label_2764
	.word	16
	.word	4
	.word	_Label_2765
	.word	-16
	.word	4
	.word	_Label_2766
	.word	-20
	.word	4
	.word	_Label_2767
	.word	-9
	.word	1
	.word	_Label_2768
	.word	-24
	.word	4
	.word	_Label_2769
	.word	-28
	.word	4
	.word	_Label_2770
	.word	-32
	.word	4
	.word	_Label_2771
	.word	-36
	.word	4
	.word	_Label_2772
	.word	-40
	.word	4
	.word	0
_Label_2761:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2762:
	.ascii	"Pself\0"
	.align
_Label_2763:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2764:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2765:
	.byte	'?'
	.ascii	"_temp_2760\0"
	.align
_Label_2766:
	.byte	'?'
	.ascii	"_temp_2759\0"
	.align
_Label_2767:
	.byte	'C'
	.ascii	"_temp_2758\0"
	.align
_Label_2768:
	.byte	'?'
	.ascii	"_temp_2757\0"
	.align
_Label_2769:
	.byte	'?'
	.ascii	"_temp_2756\0"
	.align
_Label_2770:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2771:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2772:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3083:
	push	r0
	sub	r1,1,r1
	bne	_Label_3083
	mov	2679,r13		! source line 2679
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2684,r13		! source line 2684
	mov	"\0\0IF",r10
	mov	2684,r13		! source line 2684
	mov	"\0\0SE",r10
!   _temp_2776 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2777) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2776  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2775  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2775 then goto _Label_2774 else goto _Label_2773
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2773
	jmp	_Label_2774
_Label_2773:
! THEN...
	mov	2685,r13		! source line 2685
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2778 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2778  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2685,r13		! source line 2685
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2774:
! RETURN STATEMENT...
	mov	2687,r13		! source line 2687
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2779
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2780
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2781
	.word	-16
	.word	4
	.word	_Label_2782
	.word	-20
	.word	4
	.word	_Label_2783
	.word	-24
	.word	4
	.word	_Label_2784
	.word	-9
	.word	1
	.word	_Label_2785
	.word	-28
	.word	4
	.word	0
_Label_2779:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2780:
	.ascii	"Pself\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2778\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2777\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2776\0"
	.align
_Label_2784:
	.byte	'C'
	.ascii	"_temp_2775\0"
	.align
_Label_2785:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3084:
	push	r0
	sub	r1,1,r1
	bne	_Label_3084
	mov	2692,r13		! source line 2692
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2718,r13		! source line 2718
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2789 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2788 = *_temp_2789  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2788) then goto _Label_2787
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2787
!	jmp	_Label_2786
_Label_2786:
! THEN...
	mov	2719,r13		! source line 2719
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2790 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2790  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2719,r13		! source line 2719
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2787:
! IF STATEMENT...
	mov	2723,r13		! source line 2723
	mov	"\0\0IF",r10
	mov	2723,r13		! source line 2723
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2794) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2793  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2793 == 1112300152 then goto _Label_2792		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2792
!	jmp	_Label_2791
_Label_2791:
! THEN...
	mov	2724,r13		! source line 2724
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2795 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2795  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2724,r13		! source line 2724
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2725,r13		! source line 2725
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2792:
! ASSIGNMENT STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0AS",r10
	mov	2729,r13		! source line 2729
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2796) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0AS",r10
	mov	2730,r13		! source line 2730
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2797) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0AS",r10
	mov	2731,r13		! source line 2731
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2798) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2732,r13		! source line 2732
	mov	"\0\0AS",r10
	mov	2732,r13		! source line 2732
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2799) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2733,r13		! source line 2733
	mov	"\0\0AS",r10
	mov	2733,r13		! source line 2733
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2800) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2734,r13		! source line 2734
	mov	"\0\0AS",r10
	mov	2734,r13		! source line 2734
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2801) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2737,r13		! source line 2737
	mov	"\0\0IF",r10
!   _temp_2804 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2804) then goto _Label_2803
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2803
!	jmp	_Label_2802
_Label_2802:
! THEN...
	mov	2738,r13		! source line 2738
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2805 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2805  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2738,r13		! source line 2738
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2739,r13		! source line 2739
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2803:
! ASSIGNMENT STATEMENT...
	mov	2741,r13		! source line 2741
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2745,r13		! source line 2745
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2807
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2807
!	jmp	_Label_2806
_Label_2806:
! THEN...
	mov	2746,r13		! source line 2746
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2808 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2808  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2746,r13		! source line 2746
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2747,r13		! source line 2747
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2807:
! IF STATEMENT...
	mov	2751,r13		! source line 2751
	mov	"\0\0IF",r10
!   _temp_2811 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2811) then goto _Label_2810
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2810
!	jmp	_Label_2809
_Label_2809:
! THEN...
	mov	2752,r13		! source line 2752
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2812 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2812  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2752,r13		! source line 2752
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2753,r13		! source line 2753
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2810:
! IF STATEMENT...
	mov	2755,r13		! source line 2755
	mov	"\0\0IF",r10
!   _temp_2815 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2815 then goto _Label_2814		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2814
!	jmp	_Label_2813
_Label_2813:
! THEN...
	mov	2756,r13		! source line 2756
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2816 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2816  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2756,r13		! source line 2756
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2757,r13		! source line 2757
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2814:
! ASSIGNMENT STATEMENT...
	mov	2759,r13		! source line 2759
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2762,r13		! source line 2762
	mov	"\0\0IF",r10
!   _temp_2819 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2819) then goto _Label_2818
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2818
!	jmp	_Label_2817
_Label_2817:
! THEN...
	mov	2763,r13		! source line 2763
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2820 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2820  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2763,r13		! source line 2763
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2764,r13		! source line 2764
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2818:
! IF STATEMENT...
	mov	2766,r13		! source line 2766
	mov	"\0\0IF",r10
!   _temp_2823 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2823 then goto _Label_2822		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2822
!	jmp	_Label_2821
_Label_2821:
! THEN...
	mov	2767,r13		! source line 2767
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2824 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2824  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2767,r13		! source line 2767
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2768,r13		! source line 2768
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2822:
! ASSIGNMENT STATEMENT...
	mov	2770,r13		! source line 2770
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2773,r13		! source line 2773
	mov	"\0\0AS",r10
!   _temp_2827 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2826 = _temp_2827 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2825 = _temp_2826 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2825 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2788,r13		! source line 2788
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2829		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2829
!	jmp	_Label_2828
_Label_2828:
! THEN...
	mov	2789,r13		! source line 2789
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2830 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2830  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2789,r13		! source line 2789
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2831 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2831  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2790,r13		! source line 2790
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2832 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2832  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2791,r13		! source line 2791
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2792,r13		! source line 2792
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2829:
! SEND STATEMENT...
	mov	2794,r13		! source line 2794
	mov	"\0\0SE",r10
!   _temp_2833 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2800,r13		! source line 2800
	mov	"\0\0IF",r10
	mov	2800,r13		! source line 2800
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2837) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2836  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2836 == 707406378 then goto _Label_2835		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2835
!	jmp	_Label_2834
_Label_2834:
! THEN...
	mov	2801,r13		! source line 2801
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2838 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2838  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2801,r13		! source line 2801
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0SE",r10
!   _temp_2839 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2803,r13		! source line 2803
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2835:
! ASSIGNMENT STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2844 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2845 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2844  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2840:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2845 then goto _Label_2843		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2843
_Label_2841:
	mov	2808,r13		! source line 2808
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2809,r13		! source line 2809
	mov	"\0\0AS",r10
	mov	2809,r13		! source line 2809
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2812,r13		! source line 2812
	mov	"\0\0IF",r10
	mov	2812,r13		! source line 2812
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2849) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2848  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2848 then goto _Label_2847 else goto _Label_2846
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2846
	jmp	_Label_2847
_Label_2846:
! THEN...
	mov	2813,r13		! source line 2813
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2850 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2850  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2813,r13		! source line 2813
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2814,r13		! source line 2814
	mov	"\0\0SE",r10
!   _temp_2851 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2815,r13		! source line 2815
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2847:
! SEND STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2818,r13		! source line 2818
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2842:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2840
! END FOR
_Label_2843:
! IF STATEMENT...
	mov	2822,r13		! source line 2822
	mov	"\0\0IF",r10
	mov	2822,r13		! source line 2822
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2855) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2854  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2854 == 707406378 then goto _Label_2853		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2853
!	jmp	_Label_2852
_Label_2852:
! THEN...
	mov	2823,r13		! source line 2823
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2856 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2856  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2823,r13		! source line 2823
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2824,r13		! source line 2824
	mov	"\0\0SE",r10
!   _temp_2857 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2825,r13		! source line 2825
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2853:
! FOR STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2862 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2863 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2862  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2858:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2863 then goto _Label_2861		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2861
_Label_2859:
	mov	2829,r13		! source line 2829
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2830,r13		! source line 2830
	mov	"\0\0AS",r10
	mov	2830,r13		! source line 2830
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2833,r13		! source line 2833
	mov	"\0\0IF",r10
	mov	2833,r13		! source line 2833
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2867) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2866  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2866 then goto _Label_2865 else goto _Label_2864
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2864
	jmp	_Label_2865
_Label_2864:
! THEN...
	mov	2834,r13		! source line 2834
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2868 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2868  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2834,r13		! source line 2834
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0SE",r10
!   _temp_2869 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2836,r13		! source line 2836
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2865:
! ASSIGNMENT STATEMENT...
	mov	2838,r13		! source line 2838
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2860:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2858
! END FOR
_Label_2861:
! IF STATEMENT...
	mov	2842,r13		! source line 2842
	mov	"\0\0IF",r10
	mov	2842,r13		! source line 2842
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2873) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2872  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2872 == 707406378 then goto _Label_2871		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2871
!	jmp	_Label_2870
_Label_2870:
! THEN...
	mov	2843,r13		! source line 2843
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2874 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2874  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2843,r13		! source line 2843
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2844,r13		! source line 2844
	mov	"\0\0SE",r10
!   _temp_2875 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2845,r13		! source line 2845
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2871:
! ASSIGNMENT STATEMENT...
	mov	2849,r13		! source line 2849
	mov	"\0\0AS",r10
	mov	2849,r13		! source line 2849
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	2853,r13		! source line 2853
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2856,r13		! source line 2856
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_2876
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2877
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2878
	.word	12
	.word	4
	.word	_Label_2879
	.word	-16
	.word	4
	.word	_Label_2880
	.word	-20
	.word	4
	.word	_Label_2881
	.word	-24
	.word	4
	.word	_Label_2882
	.word	-28
	.word	4
	.word	_Label_2883
	.word	-32
	.word	4
	.word	_Label_2884
	.word	-36
	.word	4
	.word	_Label_2885
	.word	-40
	.word	4
	.word	_Label_2886
	.word	-9
	.word	1
	.word	_Label_2887
	.word	-44
	.word	4
	.word	_Label_2888
	.word	-48
	.word	4
	.word	_Label_2889
	.word	-52
	.word	4
	.word	_Label_2890
	.word	-56
	.word	4
	.word	_Label_2891
	.word	-60
	.word	4
	.word	_Label_2892
	.word	-64
	.word	4
	.word	_Label_2893
	.word	-68
	.word	4
	.word	_Label_2894
	.word	-72
	.word	4
	.word	_Label_2895
	.word	-76
	.word	4
	.word	_Label_2896
	.word	-10
	.word	1
	.word	_Label_2897
	.word	-80
	.word	4
	.word	_Label_2898
	.word	-84
	.word	4
	.word	_Label_2899
	.word	-88
	.word	4
	.word	_Label_2900
	.word	-92
	.word	4
	.word	_Label_2901
	.word	-96
	.word	4
	.word	_Label_2902
	.word	-100
	.word	4
	.word	_Label_2903
	.word	-104
	.word	4
	.word	_Label_2904
	.word	-108
	.word	4
	.word	_Label_2905
	.word	-112
	.word	4
	.word	_Label_2906
	.word	-116
	.word	4
	.word	_Label_2907
	.word	-120
	.word	4
	.word	_Label_2908
	.word	-124
	.word	4
	.word	_Label_2909
	.word	-128
	.word	4
	.word	_Label_2910
	.word	-132
	.word	4
	.word	_Label_2911
	.word	-136
	.word	4
	.word	_Label_2912
	.word	-140
	.word	4
	.word	_Label_2913
	.word	-144
	.word	4
	.word	_Label_2914
	.word	-148
	.word	4
	.word	_Label_2915
	.word	-152
	.word	4
	.word	_Label_2916
	.word	-156
	.word	4
	.word	_Label_2917
	.word	-160
	.word	4
	.word	_Label_2918
	.word	-164
	.word	4
	.word	_Label_2919
	.word	-168
	.word	4
	.word	_Label_2920
	.word	-172
	.word	4
	.word	_Label_2921
	.word	-176
	.word	4
	.word	_Label_2922
	.word	-180
	.word	4
	.word	_Label_2923
	.word	-184
	.word	4
	.word	_Label_2924
	.word	-188
	.word	4
	.word	_Label_2925
	.word	-192
	.word	4
	.word	_Label_2926
	.word	-196
	.word	4
	.word	_Label_2927
	.word	-200
	.word	4
	.word	_Label_2928
	.word	-204
	.word	4
	.word	_Label_2929
	.word	-208
	.word	4
	.word	_Label_2930
	.word	-212
	.word	4
	.word	_Label_2931
	.word	-216
	.word	4
	.word	_Label_2932
	.word	-220
	.word	4
	.word	_Label_2933
	.word	-224
	.word	4
	.word	_Label_2934
	.word	-228
	.word	4
	.word	_Label_2935
	.word	-232
	.word	4
	.word	_Label_2936
	.word	-236
	.word	4
	.word	_Label_2937
	.word	-240
	.word	4
	.word	_Label_2938
	.word	-244
	.word	4
	.word	_Label_2939
	.word	-248
	.word	4
	.word	_Label_2940
	.word	-252
	.word	4
	.word	_Label_2941
	.word	-256
	.word	4
	.word	_Label_2942
	.word	-260
	.word	4
	.word	_Label_2943
	.word	-264
	.word	4
	.word	_Label_2944
	.word	-268
	.word	4
	.word	0
_Label_2876:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2877:
	.ascii	"Pself\0"
	.align
_Label_2878:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2879:
	.byte	'?'
	.ascii	"_temp_2875\0"
	.align
_Label_2880:
	.byte	'?'
	.ascii	"_temp_2874\0"
	.align
_Label_2881:
	.byte	'?'
	.ascii	"_temp_2873\0"
	.align
_Label_2882:
	.byte	'?'
	.ascii	"_temp_2872\0"
	.align
_Label_2883:
	.byte	'?'
	.ascii	"_temp_2869\0"
	.align
_Label_2884:
	.byte	'?'
	.ascii	"_temp_2868\0"
	.align
_Label_2885:
	.byte	'?'
	.ascii	"_temp_2867\0"
	.align
_Label_2886:
	.byte	'C'
	.ascii	"_temp_2866\0"
	.align
_Label_2887:
	.byte	'?'
	.ascii	"_temp_2863\0"
	.align
_Label_2888:
	.byte	'?'
	.ascii	"_temp_2862\0"
	.align
_Label_2889:
	.byte	'?'
	.ascii	"_temp_2857\0"
	.align
_Label_2890:
	.byte	'?'
	.ascii	"_temp_2856\0"
	.align
_Label_2891:
	.byte	'?'
	.ascii	"_temp_2855\0"
	.align
_Label_2892:
	.byte	'?'
	.ascii	"_temp_2854\0"
	.align
_Label_2893:
	.byte	'?'
	.ascii	"_temp_2851\0"
	.align
_Label_2894:
	.byte	'?'
	.ascii	"_temp_2850\0"
	.align
_Label_2895:
	.byte	'?'
	.ascii	"_temp_2849\0"
	.align
_Label_2896:
	.byte	'C'
	.ascii	"_temp_2848\0"
	.align
_Label_2897:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2898:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2899:
	.byte	'?'
	.ascii	"_temp_2839\0"
	.align
_Label_2900:
	.byte	'?'
	.ascii	"_temp_2838\0"
	.align
_Label_2901:
	.byte	'?'
	.ascii	"_temp_2837\0"
	.align
_Label_2902:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2903:
	.byte	'?'
	.ascii	"_temp_2833\0"
	.align
_Label_2904:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2905:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
_Label_2906:
	.byte	'?'
	.ascii	"_temp_2830\0"
	.align
_Label_2907:
	.byte	'?'
	.ascii	"_temp_2827\0"
	.align
_Label_2908:
	.byte	'?'
	.ascii	"_temp_2826\0"
	.align
_Label_2909:
	.byte	'?'
	.ascii	"_temp_2825\0"
	.align
_Label_2910:
	.byte	'?'
	.ascii	"_temp_2824\0"
	.align
_Label_2911:
	.byte	'?'
	.ascii	"_temp_2823\0"
	.align
_Label_2912:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2913:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2914:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2915:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
_Label_2916:
	.byte	'?'
	.ascii	"_temp_2812\0"
	.align
_Label_2917:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
_Label_2918:
	.byte	'?'
	.ascii	"_temp_2808\0"
	.align
_Label_2919:
	.byte	'?'
	.ascii	"_temp_2805\0"
	.align
_Label_2920:
	.byte	'?'
	.ascii	"_temp_2804\0"
	.align
_Label_2921:
	.byte	'?'
	.ascii	"_temp_2801\0"
	.align
_Label_2922:
	.byte	'?'
	.ascii	"_temp_2800\0"
	.align
_Label_2923:
	.byte	'?'
	.ascii	"_temp_2799\0"
	.align
_Label_2924:
	.byte	'?'
	.ascii	"_temp_2798\0"
	.align
_Label_2925:
	.byte	'?'
	.ascii	"_temp_2797\0"
	.align
_Label_2926:
	.byte	'?'
	.ascii	"_temp_2796\0"
	.align
_Label_2927:
	.byte	'?'
	.ascii	"_temp_2795\0"
	.align
_Label_2928:
	.byte	'?'
	.ascii	"_temp_2794\0"
	.align
_Label_2929:
	.byte	'?'
	.ascii	"_temp_2793\0"
	.align
_Label_2930:
	.byte	'?'
	.ascii	"_temp_2790\0"
	.align
_Label_2931:
	.byte	'?'
	.ascii	"_temp_2789\0"
	.align
_Label_2932:
	.byte	'?'
	.ascii	"_temp_2788\0"
	.align
_Label_2933:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_2934:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_2935:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_2936:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_2937:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_2938:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_2939:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_2940:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_2941:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2942:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_2943:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_2944:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
