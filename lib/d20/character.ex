defmodule D20.Character do
  defstruct level: 1,
    base_charisma: 0,
    base_constitution: 0,
    base_dexterity: 0,
    base_initiative: 0,
    base_intelligence: 0,
    base_strength: 0,
    base_wisdom: 0

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
