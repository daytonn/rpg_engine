defmodule D20.Dice.D10 do
  def roll do
    D20.Dice.roll(10)
  end

  def rolls(count) do
    D20.Dice.rolls(count, 10)
  end
end

