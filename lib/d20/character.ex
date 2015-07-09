defmodule D20.Character do
  def bonus_at_level(1) do
    2
  end

  def bonus_at_level(level) do
    x = level - 1
    div(x, 4) + 2
  end

  def proficiency_bonus(character) do
    bonus_at_level(character.level)
  end
end
