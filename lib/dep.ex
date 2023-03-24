defmodule Dep do
  def read_from_priv do
    path = :code.priv_dir(:dep) ++ '/test.txt'

    {path, File.read!(path)}
  end
end
