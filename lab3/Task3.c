code Main

  -- OS Class: Project 3
  --
  -- Jun Tai Luo
  -- 1003830526

  -- This package contains the following:
  --     Gaming Parlor
-----------------------------  Main  ---------------------------------

  function main ()
      InitializeScheduler ()
      gamingparlor ()
      ThreadFinish ()
    endFunction

------------------------------- Gaming Parlor ----------------------------------
  var
    GP: GamingParlor = new GamingParlor
    lock: Mutex
    diceCondVar: Condition
    groupThreads: array [total_groups] of Thread
    -- Hint: Some variables are defined in "Task3.h".

  function gamingparlor()
    var
      i: int
    
    GP.Init()
      
    lock = new Mutex
    lock.Init() -- initialize mutex

    diceCondVar = new Condition
    diceCondVar.Init()
    
    groupThreads = new array of Thread {total_groups of new Thread}
    for i = 0 to total_groups -1
      groupThreads[i].Init("Customer")
      groupThreads[i].Fork(group, i)
    endFor

    -- Remove the following line in your implementation
    -- This is only an example.
    -- GP.PrintExample()
  
  endFunction

  function group(g: int)
    var i: int
    for i = 0 to 4
      GP.Request(group_names[g], dice_per_group[g]) -- ask for dice
      -- play
      currentThread.Yield()
      GP.Return(group_names[g], dice_per_group[g]) -- return dice
    endFor
  endFunction

  behavior GamingParlor

    method Init()
      dice_available = total_dice
    endMethod

    method Request(name: char, nr_of_dice: int)
      lock.Lock()
      self.Print(name, "requests", nr_of_dice)
      while dice_available < nr_of_dice
        diceCondVar.Wait(&lock) -- wait on the condition variable until more dice are available
      endWhile
      dice_available = dice_available - nr_of_dice
      self.Print(name, "proceeds with", nr_of_dice)
      lock.Unlock()
    endMethod

    method Return(name: char, nr_of_dice: int)
      lock.Lock()
      dice_available = dice_available + nr_of_dice
      self.Print(name, "releases and adds back", nr_of_dice)
      diceCondVar.Broadcast(&lock)
      lock.Unlock()
    endMethod

    method PrintExample()
      ----------------------------- Example -----------------------------
      -- This is an example of using print functions.
      -- You should not use this function in your implementation.

      -- A requests
      self.Request(group_names[0], 4)
      -- B requests
      self.Request(group_names[1], 4)
      -- B returns
      self.Return(group_names[1], 4)
      -- A returns
      self.Return(group_names[0], 4)
      -- C requests
      self.Request(group_names[2], 5)
      -- C returns
      self.Return(group_names[2], 5)

    endMethod

    method Print(name: char, str: String, nr_of_dice: int)
    --
    -- This method prints the current thread's name and the arguments.
    -- It also prints the current number of dice available.
    --
       printChar(name)
       print(" ")
       print(str)
       print(" ")
       printInt(nr_of_dice)
       nl()
       print("------------------------------Number of dice now avail = ")
       printInt(dice_available)
       nl()
    endMethod
  endBehavior

endCode
