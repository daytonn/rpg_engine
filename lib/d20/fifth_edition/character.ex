defmodule D20.FifthEdition.Character do
  def strength_modifier(character) do
    ability_modifier(character.base_strength)
  end

  def dexterity_modifier(character) do
    ability_modifier(character.base_dexterity)
  end

  def constitution_modifier(character) do
    ability_modifier(character.base_constitution)
  end

  def intelligence_modifier(character) do
    ability_modifier(character.base_intelligence)
  end

  def wisdom_modifier(character) do
    ability_modifier(character.base_wisdom)
  end

  def charisma_modifier(character) do
    ability_modifier(character.base_charisma)
  end

  def ability_modifier(ability) do
    ability - 10 |> div(2)
  end
end
