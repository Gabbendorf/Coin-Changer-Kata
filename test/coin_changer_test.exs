defmodule CoinChangerTest do
  use ExUnit.Case
  doctest CoinChanger

  test "does not change 1 penny" do
    assert CoinChanger.change(1, [], [2, 1]) == [1]
  end

  test "does not change 2 pence" do
    assert CoinChanger.change(2, [], [2, 1]) == [2]
  end

  test "does change 3 into 2+1 pennies" do
    assert CoinChanger.change(3, [], [2, 1]) == [1, 2]
  end

  test "does change 4 into 2+2 pennies" do
    assert CoinChanger.change(4, [], [2, 1]) == [2, 2]
  end

  test "does change 89 into 50+20+20+5+2+2 pennies" do
    assert CoinChanger.change(89, [], [50, 20, 10, 5, 2, 1]) == [2, 2, 5, 10, 20, 50]
  end

  test "does change 150 into 50+50+50 pennies" do
    assert CoinChanger.change(150, [], [50, 20, 10, 5, 2, 1]) == [50, 50, 50]
  end
end
