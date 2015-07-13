defmodule D20.FifthEdition.Class.Sorcerer do
  import D20.Dice
  import D20.Money
  import Math
  import Enum

  @cantrips [
    "Acid Splash", "Blade Ward", "Chill Touch",
    "Dancing Lights", "Fire Bolt", "Friends",
    "Light", "Mage Hand", "Mending", "Message",
    "Minor Illusion", "Poison Spray",
    "Prestidigitation", "Ray of Frost",
    "Shocking Grasp", "True Strike"
  ]
  @spells [
    "Alter Self", "Animate Objects", "Arcane Gate", "Banishment", "Blight", "Blindness/Deafness",
    "Blink", "Blur", "Burning Hands", "Chain Lightning", "Charm Person", "Chromatic Orb",
    "Circle of Death", "Clairvoyance", "Cloud of Daggers", "Cloudkill", "Color Spray",
    "Comprehend Languages", "Cone of Cold", "Confusion", "Counterspell", "Creation",
    "Crown of Madness", "Darkness", "Darkvision", "Daylight", "Delayed Blast Fireball",
    "Detect Magic", "Detect Thoughts", "Dimension Door", "Disguise Self", "Disintegrate",
    "Dispel Magic", "Dominate Beast", "Dominate Monster", "Dominate Person", "Earthquake",
    "Enhance Ability", "Enlarge/Reduce", "Etherealness", "Expeditious Retreat", "Eyebite",
    "False Life", "Fear", "Feather Fall", "Finger of Death", "Fire Storm", "Fireball", "Fly",
    "Fog Cloud", "Gaseous Form", "Gate", "Globe of Invulnerability", "Greater Invisibility",
    "Gust of Wind", "Haste", "Hold Monster", "Hold Person", "Hypnotic Pattern", "Ice Storm",
    "Incendiary Cloud", "Insect Plague", "Invisibility", "Jump", "Knock", "Levitate", "Lightning Bolt",
    "Mage Armor", "Magic Missile", "Major Image", "Mass Suggestion", "Meteor Swarm", "Mirror Image",
    "Misty Step", "Move Earth", "Phantasmal Force", "Plane Shift", "Polymorph", "Power Word Kill",
    "Power Word Stun", "Prismatic Spray", "Protection from Energy", "Ray of Sickness",
    "Reverse Gravity", "Scorching Ray", "See Invisibility", "Seeming", "Shatter", "Shield",
    "Silent Image", "Sleep", "Sleet Storm", "Slow", "Spider Climb", "Stinking Cloud", "Stoneskin",
    "Suggestion", "Sunbeam", "Sunburst", "Telekinesis", "Teleport", "Teleportation Circle",
    "Thunderwave", "Time Stop", "Tongues", "True Seeing", "Wall of Fire", "Wall of Stone",
    "Water Breathing", "Water Walk", "Web", "Wish", "Witch Bolt"
  ]

  def hit_dice(%{level: level}), do: [count: level, sides: 6]
  def cantrips, do: @cantrips
  def spells, do: @spells

  def starting_copper do
    rolls(count: 3, sides: 4)
      |> sum
      |> multiply(10)
      |> gp_to_cp
  end
end
