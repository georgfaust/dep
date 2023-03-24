defmodule Dep do
  @path :code.priv_dir(:dep) ++ '/test.txt'
  def read_from_priv do
    path = :code.priv_dir(:dep) ++ '/test.txt'
    {@path, path, File.read!(@path)}
  end
end
