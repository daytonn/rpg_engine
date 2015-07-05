defmodule D20.Dice.D20 do
  def roll do
    D20.Dice.roll(20)
  end

  def rolls(count) do
    D20.Dice.rolls(count, 20)
  end
end
