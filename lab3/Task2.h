header Main

  uses System, Thread, Synch

  const
    nrCustomers = 3
    nrChairs = 5

  functions
    main ()
    barberWrapper(arg: int)
    customerWrapper(i: int)

  class SleepingBarber
    superclass Object
    fields
      barberStatus: int
      customerStatus: ptr to array of char
      availChairs: int
    methods
      Init(bStat: int, cStat: ptr to array of char, numOfChair: int)
      barberFunc()
      customerFunc(i :int)
      printExample()
      printBarberStatus()
      printCustomerStatus(customer: int)
      printChairs()
  endClass
endHeader
