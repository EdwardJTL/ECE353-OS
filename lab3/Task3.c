code Main

  -- OS Class: Project 3
  --
  -- <PUT YOUR NAME HERE>
  --

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
    -- Hint: Some variables are defined in "Task3.h".

  function gamingparlor()
    GP.Init()

    -- Remove the following line in your implementation
    -- This is only an example.
    GP.PrintExample()

    -- Add more code below
  
  endFunction

  behavior GamingParlor

    method Init()
      dice_available = total_dice
    endMethod

    method Request(name: char, nr_of_dice: int)
      self.Print(name, "requests", nr_of_dice)
      while dice_available < nr_of_dice
        FatalError ("Needs to be implemented")
      endWhile
      dice_available = dice_available - nr_of_dice
      self.Print(name, "proceeds with", nr_of_dice)
    endMethod

    method Return(name: char, nr_of_dice: int)
      dice_available = dice_available + nr_of_dice
      self.Print(name, "releases and adds back", nr_of_dice)
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
