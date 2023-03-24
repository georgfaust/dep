defmodule Dep do
  @path :code.priv_dir(:dep) ++ '/test.txt'
  def read_from_priv do
    {@path, File.read!(@path)}
  end
end
