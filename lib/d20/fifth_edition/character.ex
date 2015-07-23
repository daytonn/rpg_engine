defmodule D20.FifthEdition.Character do
  import Enum
  import D20.Character

  def strength_modifier(character), do: ability_modifier(character, :strength)
  def dexterity_modifier(character), do: ability_modifier(character, :dexterity)
  def constitution_modifier(character), do: ability_modifier(character, :constitution)
  def intelligence_modifier(character), do: ability_modifier(character, :intelligence)
  def wisdom_modifier(character), do: ability_modifier(character, :wisdom)
  def charisma_modifier(character), do: ability_modifier(character, :charisma)

  def ability_modifier(character, ability) do
    base_ability = String.to_atom("base_#{ability}")
    {:ok, ability_score} = Map.fetch(character, base_ability)
    ability_score - 10 |> div(2)
  end

  def proficient_in?(character, skill), do: any?(character.proficiencies, fn(proficiency) -> skill == proficiency end)

  def ability_save(character, ability) do
    if proficient_in?(character, ability) do
      proficiency_bonus(character) + ability_modifier(character, ability)
    else
      ability_modifier(character, ability)
    end
  end

  def acrobatics(character) do
    if proficient_in?(character, :acrobatics) do
      dexterity_modifier(character) + proficiency_bonus(character)
    else
      dexterity_modifier(character)
    end
  end

  def animal_handling(character) do
    if proficient_in?(character, :animal_handling) do
      wisdom_modifier(character) + proficiency_bonus(character)
    else
      wisdom_modifier(character)
    end
  end

  def arcana(character) do
    if proficient_in?(character, :arcana) do
      intelligence_modifier(character) + proficiency_bonus(character)
    else
      intelligence_modifier(character)
    end
  end

  def athletics(character) do
    if proficient_in?(character, :athletics) do
      strength_modifier(character) + proficiency_bonus(character)
    else
      strength_modifier(character)
    end
  end

  def deception(character) do
    if proficient_in?(character, :deception) do
      charisma_modifier(character) + proficiency_bonus(character)
    else
      charisma_modifier(character)
    end
  end

  def history(character) do
    if proficient_in?(character, :history) do
      intelligence_modifier(character) + proficiency_bonus(character)
    else
      intelligence_modifier(character)
    end
  end

  def insight(character) do
    if proficient_in?(character, :insight) do
      wisdom_modifier(character) + proficiency_bonus(character)
    else
      wisdom_modifier(character)
    end
  end

  def intimidation(character) do
    if proficient_in?(character, :intimidation) do
      charisma_modifier(character) + proficiency_bonus(character)
    else
      charisma_modifier(character)
    end
  end

  def investigation(character) do
    if proficient_in?(character, :investigation) do
      intelligence_modifier(character) + proficiency_bonus(character)
    else
      intelligence_modifier(character)
    end
  end

  def medicine(character) do
    if proficient_in?(character, :medicine) do
      wisdom_modifier(character) + proficiency_bonus(character)
    else
      wisdom_modifier(character)
    end
  end

  def nature(character) do
    if proficient_in?(character, :nature) do
      intelligence_modifier(character) + proficiency_bonus(character)
    else
      intelligence_modifier(character)
    end
  end

  def perception(character) do
    if proficient_in?(character, :perception) do
      wisdom_modifier(character) + proficiency_bonus(character)
    else
      wisdom_modifier(character)
    end
  end

  def performance(character) do
    if proficient_in?(character, :performance) do
      charisma_modifier(character) + proficiency_bonus(character)
    else
      charisma_modifier(character)
    end
  end

  def persuasion(character) do
    if proficient_in?(character, :persuasion) do
      charisma_modifier(character) + proficiency_bonus(character)
    else
      charisma_modifier(character)
    end
  end

  def religion(character) do
    if proficient_in?(character, :religion) do
      intelligence_modifier(character) + proficiency_bonus(character)
    else
      intelligence_modifier(character)
    end
  end

  def sleight_of_hand(character) do
    if proficient_in?(character, :sleight_of_hand) do
      dexterity_modifier(character) + proficiency_bonus(character)
    else
      dexterity_modifier(character)
    end
  end

  def stealth(character) do
    if proficient_in?(character, :stealth) do
      dexterity_modifier(character) + proficiency_bonus(character)
    else
      dexterity_modifier(character)
    end
  end

  def survival(character) do
    if proficient_in?(character, :survival) do
      wisdom_modifier(character) + proficiency_bonus(character)
    else
      wisdom_modifier(character)
    end
  end
end
