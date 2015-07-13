defmodule D20.FifthEdition.Class.Warlock do
  import D20.Dice
  import D20.Money
  import Math
  import Enum

  @cantrips [
    "Blade Ward", "Chill Touch", "Eldritch Blast",
    "Friends", "Mage Hand", "Minor Illusion",
    "Poison Spray", "Prestidigitation", "True Strike"
  ]
  @spells [
    "Arcane Gate", "Armor of Agathys", "Arms of Hadar", "Astral Projection", "Banishment", "Blight",
    "Charm Person", "Circle of Death", "Cloud of Daggers", "Comprehend Languages", "Conjure Fey",
    "Contact Other Plane", "Counterspell", "Create Undead", "Crown of Madness", "Darkness",
    "Demiplane", "Dimension Door", "Dispel Magic", "Dominate Monster", "Dream", "Enthrall",
    "Etherealness", "Expeditious Retreat", "Eyebite", "Fear", "Feeblemind", "Finger of Death",
    "Flesh to Stone", "Fly", "Forcecage", "Foresight", "Gaseous Form", "Glibness",
    "Hallucinatory Terrain", "Hellish Rebuke", "Hex", "Hold Monster", "Hold Person", "Hunger of Hadar",
    "Hypnotic Pattern", "Illusory Script", "Imprisonment", "Invisibility", "Magic Circle",
    "Major Image", "Mass Suggestion", "Mirror Image", "Misty Step", "Plane Shift", "Power Word Kill",
    "Power Word Stun", "Protection from Evil and Good", "Ray of Enfeeblement", "Remove Curse",
    "Scrying", "Shatter", "Spider Climb", "Suggestion", "Tongues", "True Polymorph", "True Seeing",
    "Unseen Servant", "Vampiric Touch", "Witch Bolt"
  ]

  def hit_dice(%{level: level}), do: [count: level, sides: 8]
  def cantrips, do: @cantrips
  def spells, do: @spells

  def starting_copper do
    rolls(count: 4, sides: 4)
      |> sum
      |> multiply(10)
      |> gp_to_cp
  end
end
