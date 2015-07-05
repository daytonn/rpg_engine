defmodule D20.Dice.D6 do
  def roll do
    D20.Dice.roll(6)
  end

  def rolls(count) do
    D20.Dice.rolls(count, 6)
  end
end
