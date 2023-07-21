defmodule Dep do
  @privdir :code.priv_dir(:dep)
  @cwd File.cwd
  @dir __DIR__

  def run do
    IO.puts "-- priv"
    IO.inspect @privdir
    IO.inspect :code.priv_dir(:dep)
    IO.puts "-- read file in priv"
    IO.inspect File.read(@privdir ++ '/test.txt')
    IO.inspect File.read(:code.priv_dir(:dep) ++ '/test.txt')
    IO.puts "-- cwd"
    IO.inspect @cwd
    IO.inspect File.cwd
    IO.puts "-- __DIR__"
    IO.inspect @dir
    IO.inspect __DIR__
  end
end
