defmodule D20.Dice.D100 do
  def roll do
    D20.Dice.roll(100)
  end

  def rolls(count) do
    D20.Dice.rolls(count, 100)
  end
end
