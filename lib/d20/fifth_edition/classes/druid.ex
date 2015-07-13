defmodule D20.FifthEdition.Class.Druid do
  import D20.Dice
  import D20.Money
  import Math
  import Enum

  @cantrips [
    "Druidcraft",
    "Guidance",
    "Mending",
    "Poison Spray",
    "Produce Flame",
    "Resistance",
    "Shillelagh",
    "Thorn Whip"
  ]

  @spells [
    "Animal Friendship", "Animal Messenger", "Animal Shapes", "Antilife Shell", "Antipathy/Sympathy",
    "Awaken", "Barkskin", "Beast Sense", "Blight", "Call Lightning", "Charm Person",
    "Commune with Nature", "Confusion", "Conjure Animals", "Conjure Elemental", "Conjure Fey",
    "Conjure Minor Elementals", "Conjure Woodland Beings", "Contagion", "Control Water",
    "Control Weather", "Create or Destroy Water", "Cure Wounds", "Darkvision", "Daylight",
    "Detect Magic", "Detect Poison and Disease", "Dispel Magic", "Dominate Beast", "Earthquake",
    "Enhance Ability", "Entangle", "Faerie Fire", "Feeblemind", "Feign Death", "Find the Path",
    "Find Traps", "Fire Storm", "Flame Blade", "Flaming Sphere", "Fog Cloud", "Foresight",
    "Freedom of Movement", "Geas", "Giant Insect", "Goodberry", "Grasping Vine",
    "Greater Restoration", "Gust of Wind", "Hallucinatory Terrain", "Heal", "Healing Word",
    "Heat Metal", "Heroes' Feast", "Hold Person", "Ice Storm", "Insect Plague", "Jump",
    "Lesser Restoration", "Locate Animals or Plants", "Locate Creature", "Locate Object",
    "Longstrider", "Mass Cure Wounds", "Meld Into Stone", "Mirage Arcane", "Moonbeam", "Move Earth",
    "Pass without Trace", "Planar Binding", "Plane Shift", "Plant Growth", "Polymorph",
    "Protection from Energy", "Protection from Poison", "Purify Food and Drink", "Regenerate",
    "Reincarnate", "Reverse Gravity", "Scrying", "Shapechange", "Sleet Storm",
    "Speak with Animals", "Speak with Plants", "Spike Growth", "Stone Shape", "Stoneskin",
    "Storm of Vengeance", "Sunbeam", "Sunburst", "Thunderwave", "Transport via Plants",
    "Tree Stride", "True Resurrection", "Tsunami", "Wall of Fire", "Wall of Stone",
    "Wall of Thorns", "Water Breathing", "Water Walk", "Wind Walk", "Wind Wall"
  ]

  def cantrips, do: @cantrips
  def spells, do: @spells
  def hit_dice(%{level: level}), do: [count: level, sides: 8]

  def starting_copper do
    rolls(count: 2, sides: 4)
      |> sum
      |> multiply(10)
      |> gp_to_cp
  end
end
