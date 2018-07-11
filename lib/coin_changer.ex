defmodule CoinChanger do
  @moduledoc """
  Documentation for CoinChanger.
  """

  @coins [50, 20, 10, 5, 2, 1]

  def change(amount, changes) do
    if exactChange?(amount) do
      update(changes, amount)
    else
      smallerCoin = Enum.find(@coins, fn(coin) -> coin < amount end)
      change(amount - smallerCoin, update(changes, smallerCoin))
    end
  end

  defp exactChange?(amount) do
    Enum.member?(@coins, amount)
  end

  defp update(changes, amount) do
    List.insert_at(changes, 0, amount)
  end
end
