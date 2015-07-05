defmodule D20.Dice.D8 do
  def roll do
    D20.Dice.roll(8)
  end

  def rolls(count) do
    D20.Dice.rolls(count, 8)
  end
end
