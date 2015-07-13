defmodule D20.FifthEdition.Class.Bard do
  import D20.Dice
  import D20.Money
  import Math
  import Enum

  @cantrips [
    "Blade Ward",
    "Dancing Lights",
    "Friends",
    "Light",
    "Mage Hand",
    "Mending",
    "Message",
    "Minor Illusion",
    "Prestidigitation",
    "True Strike",
    "Vicious Mockery"
  ]

  @spells [
    "Animal Friendship", "Animal Messenger", "Animate Objects", "Awaken",
    "Bane", "Bestow Curse", "Blindness/Deafness", "Calm Emotions", "Charm Person",
    "Clairvoyance", "Cloud of Daggers", "Comprehend Languages", "Compulsion",
    "Confusion", "Crown of Madness", "Cure Wounds", "Detect Magic", "Detect Thoughts",
    "Dimension Door", "Disguise Self", "Dispel Magic", "Dissonant Whispers",
    "Dominate Monster", "Dominate Person", "Dream", "Enhance Ability", "Enthrall",
    "Etherealness", "Eyebite", "Faerie Fire", "Fear", "Feather Fall", "Feeblemind",
    "Feign Death", "Find the Path", "Forcecage", "Foresight", "Freedom of Movement",
    "Geas", "Glibness", "Glyph of Warding", "Greater Invisibility", "Greater Restoration",
    "Guards and Wards", "Hallucinatory Terrain", "Healing Word", "Heat Metal",
    "Heroism", "Hold Monster", "Hold Person", "Hypnotic Pattern", "Identify",
    "Illusory Script", "Invisibility", "Knock", "Legend Lore", "Leomund's Tiny Hut",
    "Lesser Restoration", "Locate Animals or Plants", "Locate Creature", "Locate Object",
    "Longstrider", "Magic Mouth", "Major Image", "Mass Cure Wounds", "Mass Suggestion",
    "Mind Blank", "Mirage Arcane", "Mislead", "Modify Memory", "Mordenkainen's Magnificent Mansion",
    "Mordenkainen's Sword", "Nondetection", "Otto's Irresistible Dance", "Phantasmal Force",
    "Planar Binding", "Plant Growth", "Polymorph", "Power Word Heal", "Power Word Kill",
    "Power Word Stun", "Programmed Illusion", "Project Image", "Raise Dead", "Regenerate",
    "Resurrection", "Scrying", "See Invisibility", "Seeming", "Sending", "Shatter",
    "Silence", "Suggestion", "Silent Image", "Sleep", "Speak with Animals", "Speak with Dead",
    "Speak with Plants", "Stinking Cloud", "Symbol", "Tasha's Hideous Laughter",
    "Teleport", "Teleportation Circle", "Thunderwave", "Tongues", "True Polymorph",
    "True Seeing", "Unseen Servant", "Zone of Truth"
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
