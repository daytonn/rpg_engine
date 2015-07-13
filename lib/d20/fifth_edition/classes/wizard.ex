defmodule D20.FifthEdition.Class.Wizard do
  import D20.Dice
  import D20.Money
  import Math
  import Enum

  @cantrips [
    "Acid Splash", "Blade Ward", "Chill Touch",
    "Dancing Lights", "Fire Bolt", "Friends", "Light",
    "Mage Hand ", "Mending Message", "Minor Illusion ",
    "Poison Spray", "Prestidigitation", "Ray of Frost",
    "Shocking Grasp", "True Strike"
  ]
  @spells [
    "Alarm", "Alter Self", "Animate Dead", "Animate Objects", "Antimagic Field", "Antipathy/Sympathy",
    "Arcane Eye", "Arcane Gate", "Arcane Lock", "Astral Projection", "Banishment", "Bestow Curse",
    "Bigby's Hand", "Blight", "Blindness/Deafness", "Blink", "Blur", "Burning Hands",
    "Chain Lightning", "Charm Person", "Chromatic Orb", "Circle of Death", "Clairvoyance", "Clone",
    "Cloud of Daggers", "Cloudkill", "Color Spray", "Comprehend Languages", "Cone of Cold",
    "Confusion", "Conjure Elemental", "Conjure Minor Elementals", "Contact Other Plane",
    "Contingency", "Continual Flame", "Control Water", "Control Weather", "Counterspell",
    "Create Undead", "Creation", "Crown of Madness", "Darkness", "Darkvision",
    "Delayed Blast Fireball", "Demiplane", "Detect Magic", "Detect Thoughts", "Dimension Door",
    "Disguise Self", "Disintegrate", "Dispel Magic", "Dominate Monster", "Dominate Person",
    "Drawmij's Instant Summons", "Dream", "Enlarge/Reduce", "Etherealness", "Evard's Black Tentacles",
    "Expeditious Retreat", "Eyebite", "Fabricate", "False Life", "Fear", "Feather Fall", "Feeblemind",
    "Feign Death", "Find Familiar", "Finger of Death", "Fire Shield", "Fireball", "Flaming Sphere",
    "Flesh to Stone", "Fly", "Fog Cloud", "Forcecage", "Foresight", "Gaseous Form", "Gate", "Geas",
    "Gentle Repose", "Globe of Invulnerability", "Glyph of Warding", "Grease", "Greater Invisibility",
    "Guards and Wards", "Gust of Wind", "Hallucinatory Terrain", "Haste", "Hold Monster",
    "Hold Person", "Hypnotic Pattern", "Ice Storm", "Identify", "Illusory Script", "Imprisonment",
    "Incendiary Cloud", "Invisibility", "Jump", "Knock", "Legend Lore", "Leomund's Secret Chest",
    "Leomund's Tiny Hut", "Levitate", "Lightning Bolt", "Locate Creature", "Locate Object",
    "Longstrider", "Mage Armor", "Magic Circle", "Magic Jar", "Magic Missile", "Magic Mouth",
    "Magic Weapon", "Major Image", "Mass Suggestion", "Maze", "Melf's Acid Arrow", "Meteor Swarm",
    "Mind Blank", "Mirage Arcane", "Mirror Image", "Mislead", "Misty Step", "Modify Memory",
    "Mordenkainen's Faithful Hound", "Mordenkainen's Magnificent Mansion",
    "Mordenkainen's Private Sanctum", "Mordenkainen's Sword", "Move Earth", "Nondetection",
    "Nystul's Magic Aura", "Otiluke's Freezing Sphere", "Otiluke's Resilient Sphere",
    "Otto's Irresistible Dance", "Passwall", "Phantasmal Force", "Phantasmal Killer", "Phantom Steed",
    "Planar Binding", "Plane Shift", "Polymorph", "Power Word Kill", "Power Word Stun",
    "Prismatic Spray", "Prismatic Wall", "Programmed Illusion", "Project Image",
    "Protection from Energy", "Protection from Evil and Good", "Rary's Telepathic Bond",
    "Ray of Enfeeblement", "Ray of Sickness", "Remove Curse", "Reverse Gravity", "Rope Trick",
    "Scorching Ray", "Scrying", "See Invisibility", "Seeming", "Sending", "Sequester", "Shapechange",
    "Shatter", "Shield", "Silent Image", "Simulacrum", "Sleep", "Sleet Storm", "Slow", "Spider Climb",
    "Stinking Cloud", "Stone Shape", "Stoneskin", "Suggestion", "Sunbeam", "Sunburst", "Symbol",
    "Tasha's Hideous Laughter", "Telekinesis", "Telepathy", "Teleport", "Teleportation Circle",
    "Tenser's Floating Disk", "Thunderwave", "Time Stop", "Tongues", "True Polymorph",
    "True Seeing", "Unseen Servant", "Vampiric Touch", "Wall of Fire", "Wall of Force",
    "Wall of Ice", "Wall of Stone", "Water Breathing", "Web", "Weird", "Wish", "Witch Bolt"
  ]

  def cantrips, do: @cantrips
  def spells, do: @spells
  def hit_dice(%{level: level}), do: [count: level, sides: 6]

  def starting_copper do
    rolls(count: 4, sides: 4)
      |> sum
      |> multiply(10)
      |> gp_to_cp
  end
end
