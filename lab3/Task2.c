code Main

  -- OS Class: Project 3
  --
  -- Jun Tai Luo
  -- 1003830526

  -- This package contains the following:
  --     Sleeping Barber
-----------------------------  Main  ---------------------------------

  function main ()
      InitializeScheduler ()
      sleepingbarber ()
      ThreadFinish ()
    endFunction

-----------------------------  Sleeping Barber --------------------------------
  -- In the Producer/Consumer and Dining Philosophers problems, we tried to print the activity
  -- of each thread in a different column so that you could see what each thread was doing.
  -- The actual events in this problem can be reduced to a single letter, such as:
  --
  --         E = Enter
  --         S = Sit in waiting chair
  --         B = Begin haircut
  --         F = Finish haircut
  --         L = Leave
  --         start = Barber begins haircut
  --         end = Barber ends haircut
  --
  -- The status of the chairs should be printed every time you print a line. If there are 5
  -- chairs, of which 2 are occupied, print 2 X's and 3 -'s.  For example:
  --
  --         XX---
  --

  enum Start, End

  var
    sb: SleepingBarber
    bStatus: int = End
    cStatus: array[nrCustomers] of char = 
             new array of char { nrCustomers of 'L' }
    -- Hint: Some variables are defined in "Task2.h".

    -- Semaphores and locks
    accessLock: Mutex -- to protect editing status variables
    barber: Semaphore -- is the barber ready to start
    barberDone: Semaphore -- keep the order
    customers: Semaphore -- number of customers waiting
    customerDone: Semaphore -- semaphore used to let customers signal finish

    barberThread: Thread
    customerThreads: array[nrCustomers] of Thread

  function sleepingbarber()
    var
      i: int

    -- print initial line
    for i = 0 to nrChairs
        printChar(' ')
    endFor
    print("Barber\t")
    for i = 0 to nrCustomers - 1
        printInt(i+1)
        printChar('\t')
    endFor
    nl()

    accessLock = new Mutex
    accessLock.Init()
    barber = new Semaphore
    barber.Init(0)
    barberDone = new Semaphore
    barberDone.Init(0)
    customers = new Semaphore
    customers.Init(0)
    customerDone = new Semaphore
    customerDone.Init(0)

    sb = new SleepingBarber
    sb.Init(bStatus, &cStatus, nrChairs)

    -- Remove the following line in your implementation
    -- This is only an example.
    -- sb.printExample()

    -- Add more code below.
    barberThread = new Thread
    barberThread.Init("barber")
    barberThread.Fork(barberWrapper, 0)
      
    customerThreads = new array of Thread {nrCustomers of new Thread}
    for i = 0 to nrCustomers - 1
      customerThreads[i].Init("Customer")
      customerThreads[i].Fork(customerWrapper, i)
    endFor

  endFunction

  function barberWrapper(arg: int)
    sb.barberFunc()
  endFunction

  function customerWrapper(i: int)
    sb.customerFunc(i)
  endFunction

  -- implementation of SleepingBarber class
  behavior SleepingBarber
    method Init(bStat: int, cStat: ptr to array of char, numOfChair: int)
      self.barberStatus = bStat
      self.customerStatus = cStat
      self.availChairs = numOfChair
    endMethod

    method barberFunc()
      while true
         customers.Down() -- wait for or get a customer 

         accessLock.Lock() -- when there is a customer, acquire lock, and begin
         self.availChairs = self.availChairs + 1 -- increase the number of free chairs
         self.barberStatus = Start -- indicate starting the haircut
         self.printBarberStatus()
         accessLock.Unlock()

         barber.Up()     -- barber is ready to start

         currentThread.Yield() -- simulate cutting the hair

         customerDone.Down() -- technically done, customer can print Finish haircut

         -- Update barber status
         accessLock.Lock()
         self.barberStatus = End
         self.printBarberStatus()
         accessLock.Unlock()

         barberDone.Up() -- barber done with the haircut, customer can leave now
      endWhile
    endMethod

    method customerFunc(i: int)
      var
         tries: int
         attempts: int
      
      tries = 3 -- each customer tries to get in three times before they quit
      attempts = 0

      while attempts < tries
         accessLock.Lock()

         -- customer enters and tries to get a seat
         self.customerStatus[i] = 'E'
         self.printCustomerStatus (i)

         if self.availChairs > 0
            -- takes a chair
            self.availChairs = self.availChairs - 1
            self.customerStatus[i] = 'S'
            self.printCustomerStatus(i)

            accessLock.Unlock()
            
            customers.Up() -- alert barber that one more customer is waiting

            barber.Down() -- wait for the barber to get ready

            -- return here when the barber is ready, get haircut
            -- changes customer state
            accessLock.Lock()
            self.customerStatus[i] = 'B'
            self.printCustomerStatus(i)
            accessLock.Unlock()

            -- finishes haircut
            accessLock.Lock()
            self.customerStatus[i] = 'F'
            self.printCustomerStatus(i)
            customerDone.Up()
            accessLock.Unlock()

            -- leaving
            barberDone.Down()
            accessLock.Lock()
            self.customerStatus[i] = 'L'
            self.printCustomerStatus(i)
            accessLock.Unlock()
         else
            self.customerStatus[i] = 'L'
            self.printCustomerStatus(i)
            accessLock.Unlock()
         endIf

         attempts = attempts + 1
         currentThread.Yield()

      endWhile

    endMethod

    method printExample()
      ----------------------------- Example -----------------------------
      -- This is an example of using print functions.
      -- You should not use this function in your implementation.

      -- Customer 1 enter.
      self.customerStatus[0] = 'E'
      self.printCustomerStatus(0)

      -- Customer 1 sit in waiting chair.
      self.customerStatus[0] = 'S'
      self.availChairs = self.availChairs - 1
      self.printCustomerStatus(0)

      -- Customer 2 enter.
      self.customerStatus[1] = 'E'
      self.printCustomerStatus(1)

      -- Customer 2 sit in waiting chair.
      self.customerStatus[1] = 'S'
      self.availChairs = self.availChairs - 1
      self.printCustomerStatus(1)

      -- Barber begins haircut. Customer begins haircut and chair becomes available.
      self.barberStatus = Start
      self.availChairs = self.availChairs + 1
      self.printBarberStatus()

      -- Customer 1 begins haircut.
      self.customerStatus[0] = 'B'
      self.printCustomerStatus(0)

      -- Barber ends haircut.
      self.barberStatus = End
      self.printBarberStatus()

      -- Customer 1 finish haircut.
      self.customerStatus[0] = 'F'
      self.printCustomerStatus(0)

      -- Customer 1 leave.
      self.customerStatus[0] = 'L'
      self.printCustomerStatus(0)

      -- Barber begins haircut. Customer begins haircut and chair becomes available.
      self.barberStatus = Start
      self.availChairs = self.availChairs + 1
      self.printBarberStatus()

      -- Customer 2 begins haircut.
      self.customerStatus[1] = 'B'
      self.printCustomerStatus(1)

      -- Barber ends haircut.
      self.barberStatus = End
      self.printBarberStatus()

      -- Customer 2 finish haircut.
      self.customerStatus[1] = 'F'
      self.printCustomerStatus(1)

      -- Customer 2 leave.
      self.customerStatus[1] = 'L'
      self.printCustomerStatus(1)
      -----------------------------  End  -----------------------------
    endMethod

    method printBarberStatus()
      self.printChairs()
      if self.barberStatus == Start
         print("Start\n")
      else
         print("End\n")
      endIf
    endMethod

    method printCustomerStatus(customer: int)
      var i: int
      self.printChairs()
      print("      \t")
      for i = 0 to nrCustomers - 1
        if (i != customer)
          printChar(' ')
        else
          printChar(self.customerStatus[i])
        endIf
        printChar('\t')
      endFor
      nl()
    endMethod

    method printChairs()
      var i: int
      for i = self.availChairs + 1 to nrChairs
        printChar('X')
      endFor
      for i = 1 to self.availChairs
        printChar('-')
      endFor
      printChar(' ')
    endMethod

  endBehavior

endCode
