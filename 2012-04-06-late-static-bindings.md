Lately I was working with a chain of multiple classes that were invoked by a chain manager. The problem was that we could easily fall into an infinite recursion. As there was no possibility to modify the chain manager, I had to come with an sloution that could be implemented in the step class. The easiest one seemed to be some kind of static property that blocks the execution. 

Here's the implementation:

    <?php
    abstract class ChainStep
    {
      protected static $executed;

      public function preExecute()
      {
        // Late static bindings FTW !
        if (static::$executed)
        {
          throw new ChainStepException('Step executed twice, risk of recursive call.');
        }
      }

      /**
       * Sets $executed to true to avoid multiple calls on same class
       */
      public function postExecute()
      {
        static::$executed = true;
      }
      
      /** other methods */
    }
  
The system didn't seem to work - every second class was failing on the first execution.

A little research revealed that **each static property used with late static bindings needs to be redeclared in the child class**. So much for code clarity. I'd really like having that mentioned in PHP documentation.

As there is no possibility to force a class to redeclare a property (something like _abstract protected static $executed_ would be great), there's not much you can do to make sure your fellow developer will use the function correctly. The only thing you can do is some Reflection magic and an exception with a verbose error message.

The code above awaits refactoring, but it works well. Late static bindings can be a very powerful tool, if used properly. However, the power comes at a price and sometimes in the end you find out that it wasn't worth it. 
