defmodule D20.FifthEdition.Class.Cleric do
  import D20.Dice
  import D20.Money
  import Math
  import Enum

  @cantrips [
    "Guidance",
    "Light",
    "Mending",
    "Resistance",
    "Sacred Flame",
    "Spare the Dying",
    "Thaumaturgy"
  ]

  @spells [
    "Aid", "Animate Dead", "Antimagic Field", "Astral Projection", "Augury", "Bane", "Banishment",
    "Beacon of Hope", "Bestow Curse", "Blade Barrier", "Bless", "Blindness/Deafness",
    "Calm Emotions", "Clairvoyance", "Command", "Commune", "Conjure Celestial", "Contagion",
    "Continual Flame", "Control Water", "Control Weather", "Create Food and Water",
    "Create or Destroy Water", "Create Undead", "Cure Wounds", "Daylight", "Death Ward",
    "Detect Evil and Good", "Detect Magic", "Detect Poison and Disease", "Dispel Evil and Good",
    "Dispel Magic", "Divination", "Divine Word", "Earthquake", "Enhance Ability", "Etherealness",
    "Feign Death", "Find the Path", "Find Traps", "Fire Storm", "Flame Strike", "Forbiddance",
    "Freedom of Movement", "Gate", "Geas", "Gentle Repose", "Glyph of Warding",
    "Greater Restoration", "Guardian of Faith", "Guiding Bolt", "Hallow", "Harm", "Heal",
    "Healing Word", "Heroes' Feast", "Hold Person", "Holy Aura", "Inflict Wounds",
    "Insect Plague", "Legend Lore", "Lesser Restoration", "Locate Creature", "Locate Object",
    "Magic Circle", "Mass Cure Wounds", "Mass Heal", "Mass Healing Word", "Meld Into Stone",
    "Planar Ally", "Planar Binding", "Plane Shift", "Prayer of Healing", "Protection from Energy",
    "Protection from Evil and Good", "Protection from Poison", "Purify Food and Drink", "Raise Dead",
    "Regenerate", "Remove Curse", "Resurrection", "Revivify", "Sanctuary", "Scrying", "Sending",
    "Shield of Faith", "Silence", "Speak with Dead", "Spirit Guardians", "Spiritual Weapon",
    "Stone Shape", "Symbol", "Tongues", "True Resurrection", "True Seeing", "Warding Bond",
    "Water Walk", "Word of Recall", "Zone of Truth"
  ]

  def cantrips, do: @cantrips
  def spells, do: @spells
  def hit_dice(%{level: level}), do: [count: level, sides: 8]

  def starting_copper do
    rolls(count: 5, sides: 4)
      |> sum
      |> multiply(10)
      |> gp_to_cp
  end
end
