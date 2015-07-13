defmodule D20.FifthEdition.Class.Monk do
  import D20.Dice
  import D20.Money
  import Math
  import Enum

  def cantrips, do: []
  def spells, do: []
  def hit_dice(%{level: level}), do: [count: level, sides: 8]

  def starting_copper do
    rolls(count: 5, sides: 4)
      |> sum
      |> multiply(10)
      |> gp_to_cp
  end
end
