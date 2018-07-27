defmodule CoinChanger do

  @coins [50, 20, 10, 5, 2, 1]

  def change(amount, changes) when amount in @coins, do: [amount | changes]

  def change(amount, changes) do
    smaller_coin = Enum.find(@coins, fn(coin) -> coin < amount end)
    change(amount - smaller_coin, [smaller_coin | changes])
  end
end
