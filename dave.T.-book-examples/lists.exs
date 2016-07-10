a = [1 | [3,4]]
[head | tail] = a
IO.puts head

b = [1, 2, 3,4]
[head | tail] = b
IO.puts head

[head | tail] = tail
IO.puts head


defmodule Foo do
  def map([], _func) do; [] end
  def map([head | tail], func) do; [func.(head), map(tail, func)] end
end

#Enum.each([1,2,3,4], fn n -> IO.puts n end)

puts1_fuction = &IO.puts(&1)
puts2_function = fn a -> IO.puts a end

puts_fuction = &IO.puts(&1)

squares = Foo.map([1,2,3,4], &(&1*&1))

IO.puts "enire list"
IO.puts IO.inspect(squares)

IO.puts "enire list one more time"
puts1_fuction.(IO.inspect(squares))

IO.puts "flatten enire list"
puts1_fuction.(IO.inspect(List.flatten(squares)))

IO.puts "each squerae Puts"
Enum.map(List.flatten(squares), puts1_fuction )
