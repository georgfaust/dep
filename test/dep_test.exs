defmodule DepTest do
  use ExUnit.Case
  doctest Dep

  test "greets the world" do
    Dep.read_from_priv() |> dbg
  end
end
