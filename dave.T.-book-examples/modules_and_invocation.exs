IO.puts "Invoke elixir\n"

a= :"Elixir.IO"
a.puts('hi')

IO.puts "\n\n"



IO.puts "Invoke erlang\n"
:io.format("The number is ~3.1f~n", [5.678])
IO.puts "\n\n"



IO.puts "Module calling inner module \n"

defmodule Foo do
  defmodule Bar do
    def abc do
      'abc'
    end
  end

  def abc do
    Bar.abc
  end
end
IO.puts Foo.abc

IO.puts "\n\n"


IO.puts "Module importing Module \n"

defmodule Car do
  def cde do
    import Foo, only: [abc: 0]
    abc
  end

  def jkl do
    import Foo, only: :functions
    abc
  end

  def xyz do
    import Foo
    abc
  end
end
IO.puts Car.cde
IO.puts Car.jkl
IO.puts Car.xyz

IO.puts "\n\n"


