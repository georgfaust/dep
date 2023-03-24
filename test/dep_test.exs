defmodule DepTest do
  use ExUnit.Case
  doctest Dep

  test "greets the world" do
    Dep.hello()
  end
end
