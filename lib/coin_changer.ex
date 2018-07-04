defmodule CoinChanger do
  @moduledoc """
  Documentation for CoinChanger.
  """

  def change(0, changes, _) do
    changes
  end

  def change(_, changes, []) do
    changes
  end

  def change(amount, changes, coins) do
    [coin | remaining_coins] = coins

    if coin <= amount do
      if amount - coin >= coin do
        change(amount - coin, [coin] ++ changes, coins)
      else
        change(amount - coin, [coin] ++ changes, remaining_coins)
      end
    else
      change(amount, changes, remaining_coins)
    end
  end
end
