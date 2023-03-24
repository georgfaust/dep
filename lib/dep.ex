defmodule Dep do
  @path :code.priv_dir(:dep) ++ '/test.txt'

  def path() do
    :code.priv_dir(:dep) ++ '/test.txt'
  end

  def read_from_priv do
    path = :code.priv_dir(:dep) ++ '/test.txt'

    %{
      attr: {@path, File.read(@path)},
      var: {path, File.read(path)},
      fun: {path(), File.read(path())}
    }
  end
end
