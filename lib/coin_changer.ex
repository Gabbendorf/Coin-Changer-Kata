defmodule CoinChanger do

  @coins [50, 20, 10, 5, 2, 1]

  def change(amount, changes) do
    if exact_change?(amount) do
      update(changes, amount)
    else
      smaller_coin = Enum.find(@coins, fn(coin) -> coin < amount end)
      change(amount - smaller_coin, update(changes, smaller_coin))
    end
  end

  defp exact_change?(amount) do
    Enum.member?(@coins, amount)
  end

  defp update(changes, amount) do
    List.insert_at(changes, 0, amount)
  end
end
