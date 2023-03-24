defmodule Dep do
  def read_from_priv do
    File.read!(:code.priv_dir(:dep) ++ '/test.txt')
  end
end
