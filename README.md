# Elixir Enum.each and Process.exit Bug

This example demonstrates an issue with using `Process.exit` inside an `Enum.each` loop in Elixir.  The code intends to iterate through a list, but prematurely terminates the process if a specific condition is met.

This behavior can be difficult to debug, especially in larger applications. The solution highlights a safer approach using other Elixir functionalities.

## Bug

The bug is in the `bug.ex` file. The `Process.exit` call within the `Enum.each` abruptly ends the process, preventing the final `IO.puts` from executing.

## Solution

The solution provided in `bugSolution.ex` demonstrates a more robust method using pattern matching and explicit early termination within the loop avoiding abrupt process exit and maintaining code readability.
