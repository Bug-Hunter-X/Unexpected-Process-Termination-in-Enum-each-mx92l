```elixir
list = [1, 2, 3, 4, 5]

result = Enum.reduce_while(list, :continue, fn
  x, :continue ->
    if x == 3 do
      {:halt, :done}
    else
      IO.puts(x)
      {:cont, :continue}
    end
  end)

IO.puts(result)
```