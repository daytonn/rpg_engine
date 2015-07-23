defmodule D20.FifthEdition.Class.Bard.Spec do
  use ESpec
  alias D20.FifthEdition.Class.Bard

  before do: { :ok, character: %{level: 2} }
  let :character, do: __.character

  describe "hit_dice/1" do
    it "returns a count of the character's level and 8 sides" do
      expect(Bard.hit_dice(character)).to eq(count: character.level, sides: 8)
    end
  end

  describe "starting_copper/0" do
    it "is greater than 49" do
      expect(Bard.starting_copper).to be :>, 4999
    end

    it "is less than 251" do
      expect(Bard.starting_copper).to be :<, 25001
    end
  end

  describe "cantrips/0" do
    it "contains Dancing Lights" do
      expect(Bard.cantrips).to have("Dancing Lights")
    end

    it "contains Friends" do
      expect(Bard.cantrips).to have("Friends")
    end

    it "contains Light" do
      expect(Bard.cantrips).to have("Light")
    end

    it "contains Mage Hand" do
      expect(Bard.cantrips).to have("Mage Hand")
    end

    it "contains Mending" do
      expect(Bard.cantrips).to have("Mending")
    end

    it "contains Message" do
      expect(Bard.cantrips).to have("Message")
    end

    it "contains Minor Illusion" do
      expect(Bard.cantrips).to have("Minor Illusion")
    end

    it "contains Prestidigitation" do
      expect(Bard.cantrips).to have("Prestidigitation")
    end

    it "contains True Strike" do
      expect(Bard.cantrips).to have("True Strike")
    end

    it "contains Vicious Mockery" do
      expect(Bard.cantrips).to have("Vicious Mockery")
    end
  end

  describe "spells/0" do
    it "contains Animal Friendship" do
      expect(Bard.spells).to have("Animal Friendship")
    end

    it "contains Animal Messenger" do
      expect(Bard.spells).to have("Animal Messenger")
    end

    it "contains Animate Objects" do
      expect(Bard.spells).to have("Animate Objects")
    end

    it "contains Awaken" do
      expect(Bard.spells).to have("Awaken")
    end

    it "contains Bane" do
      expect(Bard.spells).to have("Bane")
    end

    it "contains Bestow Curse" do
      expect(Bard.spells).to have("Bestow Curse")
    end

    it "contains Blindness/Deafness" do
      expect(Bard.spells).to have("Blindness/Deafness")
    end

    it "contains Calm Emotions" do
      expect(Bard.spells).to have("Calm Emotions")
    end

    it "contains Charm Person" do
      expect(Bard.spells).to have("Charm Person")
    end

    it "contains Clairvoyance" do
      expect(Bard.spells).to have("Clairvoyance")
    end

    it "contains Cloud of Daggers" do
      expect(Bard.spells).to have("Cloud of Daggers")
    end

    it "contains Comprehend Languages" do
      expect(Bard.spells).to have("Comprehend Languages")
    end

    it "contains Compulsion" do
      expect(Bard.spells).to have("Compulsion")
    end

    it "contains Confusion" do
      expect(Bard.spells).to have("Confusion")
    end

    it "contains Crown of Madness" do
      expect(Bard.spells).to have("Crown of Madness")
    end

    it "contains Cure Wounds" do
      expect(Bard.spells).to have("Cure Wounds")
    end

    it "contains Detect Magic" do
      expect(Bard.spells).to have("Detect Magic")
    end

    it "contains Detect Thoughts" do
      expect(Bard.spells).to have("Detect Thoughts")
    end

    it "contains Dimension Door" do
      expect(Bard.spells).to have("Dimension Door")
    end

    it "contains Disguise Self" do
      expect(Bard.spells).to have("Disguise Self")
    end

    it "contains Dispel Magic" do
      expect(Bard.spells).to have("Dispel Magic")
    end

    it "contains Dissonant Whispers" do
      expect(Bard.spells).to have("Dissonant Whispers")
    end

    it "contains Dominate Monster" do
      expect(Bard.spells).to have("Dominate Monster")
    end

    it "contains Dominate Person" do
      expect(Bard.spells).to have("Dominate Person")
    end

    it "contains Dream" do
      expect(Bard.spells).to have("Dream")
    end

    it "contains Enhance Ability" do
      expect(Bard.spells).to have("Enhance Ability")
    end

    it "contains Enthrall" do
      expect(Bard.spells).to have("Enthrall")
    end

    it "contains Etherealness" do
      expect(Bard.spells).to have("Etherealness")
    end

    it "contains Eyebite" do
      expect(Bard.spells).to have("Eyebite")
    end

    it "contains Faerie Fire" do
      expect(Bard.spells).to have("Faerie Fire")
    end

    it "contains Fear" do
      expect(Bard.spells).to have("Fear")
    end

    it "contains Feather Fall" do
      expect(Bard.spells).to have("Feather Fall")
    end

    it "contains Feeblemind" do
      expect(Bard.spells).to have("Feeblemind")
    end

    it "contains Feign Death" do
      expect(Bard.spells).to have("Feign Death")
    end

    it "contains Find the Path" do
      expect(Bard.spells).to have("Find the Path")
    end

    it "contains Forcecage" do
      expect(Bard.spells).to have("Forcecage")
    end

    it "contains Foresight" do
      expect(Bard.spells).to have("Foresight")
    end

    it "contains Freedom of Movement" do
      expect(Bard.spells).to have("Freedom of Movement")
    end

    it "contains Geas" do
      expect(Bard.spells).to have("Geas")
    end

    it "contains Glibness" do
      expect(Bard.spells).to have("Glibness")
    end

    it "contains Glyph of Warding" do
      expect(Bard.spells).to have("Glyph of Warding")
    end

    it "contains Greater Invisibility" do
      expect(Bard.spells).to have("Greater Invisibility")
    end

    it "contains Greater Restoration" do
      expect(Bard.spells).to have("Greater Restoration")
    end

    it "contains Guards and Wards" do
      expect(Bard.spells).to have("Guards and Wards")
    end

    it "contains Hallucinatory Terrain" do
      expect(Bard.spells).to have("Hallucinatory Terrain")
    end

    it "contains Healing Word" do
      expect(Bard.spells).to have("Healing Word")
    end

    it "contains Heat Metal" do
      expect(Bard.spells).to have("Heat Metal")
    end

    it "contains Heroism" do
      expect(Bard.spells).to have("Heroism")
    end

    it "contains Hold Monster" do
      expect(Bard.spells).to have("Hold Monster")
    end

    it "contains Hold Person" do
      expect(Bard.spells).to have("Hold Person")
    end

    it "contains Hypnotic Pattern" do
      expect(Bard.spells).to have("Hypnotic Pattern")
    end

    it "contains Identify" do
      expect(Bard.spells).to have("Identify")
    end

    it "contains Illusory Script" do
      expect(Bard.spells).to have("Illusory Script")
    end

    it "contains Invisibility" do
      expect(Bard.spells).to have("Invisibility")
    end

    it "contains Knock" do
      expect(Bard.spells).to have("Knock")
    end

    it "contains Legend Lore" do
      expect(Bard.spells).to have("Legend Lore")
    end

    it "contains Leomund's Tiny Hut" do
      expect(Bard.spells).to have("Leomund's Tiny Hut")
    end

    it "contains Lesser Restoration" do
      expect(Bard.spells).to have("Lesser Restoration")
    end

    it "contains Locate Animals or Plants" do
      expect(Bard.spells).to have("Locate Animals or Plants")
    end

    it "contains Locate Creature" do
      expect(Bard.spells).to have("Locate Creature")
    end

    it "contains Locate Object" do
      expect(Bard.spells).to have("Locate Object")
    end

    it "contains Longstrider" do
      expect(Bard.spells).to have("Longstrider")
    end

    it "contains Magic Mouth" do
      expect(Bard.spells).to have("Magic Mouth")
    end

    it "contains Major Image" do
      expect(Bard.spells).to have("Major Image")
    end

    it "contains Mass Cure Wounds" do
      expect(Bard.spells).to have("Mass Cure Wounds")
    end

    it "contains Mass Suggestion" do
      expect(Bard.spells).to have("Mass Suggestion")
    end

    it "contains Mind Blank" do
      expect(Bard.spells).to have("Mind Blank")
    end

    it "contains Mirage Arcane" do
      expect(Bard.spells).to have("Mirage Arcane")
    end

    it "contains Mislead" do
      expect(Bard.spells).to have("Mislead")
    end

    it "contains Modify Memory" do
      expect(Bard.spells).to have("Modify Memory")
    end

    it "contains Mordenkainen's Magnificent Mansion" do
      expect(Bard.spells).to have("Mordenkainen's Magnificent Mansion")
    end

    it "contains Mordenkainen's Sword" do
      expect(Bard.spells).to have("Mordenkainen's Sword")
    end

    it "contains Nondetection" do
      expect(Bard.spells).to have("Nondetection")
    end

    it "contains Otto's Irresistible Dance" do
      expect(Bard.spells).to have("Otto's Irresistible Dance")
    end

    it "contains Phantasmal Force" do
      expect(Bard.spells).to have("Phantasmal Force")
    end

    it "contains Planar Binding" do
      expect(Bard.spells).to have("Planar Binding")
    end

    it "contains Plant Growth" do
      expect(Bard.spells).to have("Plant Growth")
    end

    it "contains Polymorph" do
      expect(Bard.spells).to have("Polymorph")
    end

    it "contains Power Word Heal" do
      expect(Bard.spells).to have("Power Word Heal")
    end

    it "contains Power Word Kill" do
      expect(Bard.spells).to have("Power Word Kill")
    end

    it "contains Power Word Stun" do
      expect(Bard.spells).to have("Power Word Stun")
    end

    it "contains Programmed Illusion" do
      expect(Bard.spells).to have("Programmed Illusion")
    end

    it "contains Project Image" do
      expect(Bard.spells).to have("Project Image")
    end

    it "contains Raise Dead" do
      expect(Bard.spells).to have("Raise Dead")
    end

    it "contains Regenerate" do
      expect(Bard.spells).to have("Regenerate")
    end

    it "contains Resurrection" do
      expect(Bard.spells).to have("Resurrection")
    end

    it "contains Scrying" do
      expect(Bard.spells).to have("Scrying")
    end

    it "contains See Invisibility" do
      expect(Bard.spells).to have("See Invisibility")
    end

    it "contains Seeming" do
      expect(Bard.spells).to have("Seeming")
    end

    it "contains Sending" do
      expect(Bard.spells).to have("Sending")
    end

    it "contains Shatter" do
      expect(Bard.spells).to have("Shatter")
    end

    it "contains Silence" do
      expect(Bard.spells).to have("Silence")
    end

    it "contains Suggestion" do
      expect(Bard.spells).to have("Suggestion")
    end

    it "contains Silent Image" do
      expect(Bard.spells).to have("Silent Image")
    end

    it "contains Sleep" do
      expect(Bard.spells).to have("Sleep")
    end

    it "contains Speak with Animals" do
      expect(Bard.spells).to have("Speak with Animals")
    end

    it "contains Speak with Dead" do
      expect(Bard.spells).to have("Speak with Dead")
    end

    it "contains Speak with Plants" do
      expect(Bard.spells).to have("Speak with Plants")
    end

    it "contains Stinking Cloud" do
      expect(Bard.spells).to have("Stinking Cloud")
    end

    it "contains Symbol" do
      expect(Bard.spells).to have("Symbol")
    end

    it "contains Tasha's Hideous Laughter" do
      expect(Bard.spells).to have("Tasha's Hideous Laughter")
    end

    it "contains Teleport" do
      expect(Bard.spells).to have("Teleport")
    end

    it "contains Teleportation Circle" do
      expect(Bard.spells).to have("Teleportation Circle")
    end

    it "contains Thunderwave" do
      expect(Bard.spells).to have("Thunderwave")
    end

    it "contains Tongues" do
      expect(Bard.spells).to have("Tongues")
    end

    it "contains True Polymorph" do
      expect(Bard.spells).to have("True Polymorph")
    end

    it "contains True Seeing" do
      expect(Bard.spells).to have("True Seeing")
    end

    it "contains Unseen Servant" do
      expect(Bard.spells).to have("Unseen Servant")
    end

    it "contains Zone of Truth" do
      expect(Bard.spells).to have("Zone of Truth")
    end
  end
end
