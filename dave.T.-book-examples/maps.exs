people = [
  %{ name: 'tomas', age: 27 },
  %{ name: 'zdenka', age: 30 },
  %{ name: 'foo', age: 2 }
]

IO.puts "for do"
IO.inspect(for person = %{ age: age } <- people, age > 20, do: person)


IO.puts "patern matching"
%{ name: 'tomas', age: his_age }  = %{ name: 'tomas', age: 27 }
IO.puts his_age

IO.puts "patern matching 2"
%{ 2=> state } = %{ 1 => :ok, 2 => :error }
IO.puts state
