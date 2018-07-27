defmodule CoinChangerTest do
  use ExUnit.Case
  doctest CoinChanger

  test "does not change 1 penny" do
    assert CoinChanger.change(1, []) == [1]
  end

  test "does not change 2 pence" do
    assert CoinChanger.change(2, []) == [2]
  end

  test "changes 3 pence into 1+2" do
    assert CoinChanger.change(3, []) == [1, 2]
  end

  test "changes 150 pence into 50+50+50" do
    assert CoinChanger.change(150, []) == [50, 50, 50]
  end

  test "changes 88 pence into 1+2+5+10+20+50" do
    assert CoinChanger.change(88, []) == [1, 2, 5, 10, 20, 50]
  end
end
