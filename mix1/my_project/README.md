# MyProject

based on:

* elixir sips 004


lesson about:
* inclueds documentation
* mix
* how to compile to .beam

have a look at `lib/my_project.ex`


```
mix new my_project
cd my_projcect

vim lib/my_project.ex` # alterations

elixirc lib/my_project.ex

# that will create Elixir.MyProject.beam

iex
h(MyProject)
h(MyProject.publish)
```
to install dependency 
```
vim my_project/mix.exs  # alter the `dep` with tupple { :blabla, github: 'bla/blabla' }
mix deps.get 

we've installed `ex_doc` . now we can do `mix docs` that will generate
documentation in html

