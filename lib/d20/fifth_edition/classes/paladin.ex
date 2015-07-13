defmodule D20.FifthEdition.Class.Paladin do
  import D20.Dice
  import D20.Money
  import Math
  import Enum

  @spells [
    "Bless", "Command", "Compelled Duel", "Cure Wounds", "Detect Evil and Good", "Detect Magic",
    "Detect Poison and Disease", "Divine Favor", "Heroism", "Protection from Evil and Good",
    "Purify Food and Drink", "Searing Smite", "Shield of Faith", "Thunderous Smite",
    "Wrathful Smite", "Aid", "Branding Smite", "Find Steed", "Lesser Restoration", "Locate Object",
    "Magic Weapon", "Protection from Poison", "Zone of Truth", "Aura of Vitality", "Blinding Smite",
    "Create Food and Water", "Crusader's Mantle", "Daylight", "Dispel Magic", "Elemental Weapon",
    "Magic Circle", "Remove Curse", "Revivify", "Aura of Life", "Aura of Purity", "Banishment",
    "Death Ward", "Locate Creature", "Staggering Smite", "Banishing Smite", "Circle of Power",
    "Destructive Wave", "Dispel Evil and Good", "Geas", "Raise Dead"
  ]

  def cantrips, do: []
  def spells, do: @spells
  def hit_dice(%{level: level}), do: [count: level, sides: 10]

  def starting_copper do
    rolls(count: 5, sides: 4)
      |> sum
      |> multiply(10)
      |> gp_to_cp
  end
end
