defmodule D20.FifthEdition.Class.Ranger do
  import D20.Dice
  import D20.Money
  import Math
  import Enum

  @spells [
    "Alarm", "Animal Friendship", "Animal Messenger", "Barkskin", "Beast Sense", "Commune with Nature",
    "Conjure Animals", "Conjure Barrage", "Conjure Volley", "Conjure Woodland Beings",
    "Cordon of Arrows", "Cure Wounds", "Darkvision", "Daylight", "Detect Magic",
    "Detect Poison and Disease", "Ensnaring Strike", "Find Traps", "Fog Cloud", "Freedom of Movement",
    "Goodberry", "Grasping Vine", "Hail of Thorns", "Hunter's Mark", "Jump", "Lesser Restoration",
    "Lightning Arrow", "Locate Animals or Plants", "Locate Creature", "Locate Object", "Longstrider",
    "Nondetection", "Pass without Trace", "Plant Growth", "Protection from Energy",
    "Protection from Poison", "Silence", "Speak with Animals", "Speak with Plants", "Spike Growth",
    "Stoneskin", "Swift Quiver", "Tree Stride", "Water Breathing", "Water Walk", "Wind Wall"
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
