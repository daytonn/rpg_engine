defmodule D20.Dice do
  def roll do
    0
  end

  def roll(sides) do
    << a :: 32, b :: 32, c :: 32 >> = :crypto.rand_bytes(12)
    :random.seed(a, b, c)
    limit = sides - 1
    round(:random.uniform * limit) + 1
  end

  def rolls(count, sides) do
    rolls([], count, sides)
  end

  def rolls([count: count, sides: sides]) do
    rolls([], count, sides)
  end

  def rolls(%{count: count, sides: sides}) do
    rolls([], count, sides)
  end

  def rolls({count, sides}) do
    rolls([], count, sides)
  end

  def rolls(previous_rolls, count, sides) do
    if Enum.count(previous_rolls) == count do
      previous_rolls
    else
      rolls([roll(sides) | previous_rolls], count, sides)
    end
  end
end
