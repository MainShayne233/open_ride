defmodule OpenRideBrokerTest do
  use ExUnit.Case
  doctest OpenRideBroker

  test "greets the world" do
    assert OpenRideBroker.hello() == :world
  end
end
