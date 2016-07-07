defmodule Foo do
  def recalculate do
    1..100
      |> Enum.map(&add_one(&1))
      |> Enum.map(&timer(&1, 5))
      |> Enum.each(&IO.puts(&1))
  end

  defp add_one(a) do
    a + 1
  end

  defp timer(a, b) do
    a * b
  end
end

Foo.recalculate
