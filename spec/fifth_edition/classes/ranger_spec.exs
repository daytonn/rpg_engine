defmodule D20.FifthEdition.Class.Ranger.Spec do
  use ESpec
  alias D20.FifthEdition.Character
  alias D20.FifthEdition.Class.Ranger

  before do: {:ok, character: %Character{level: 2}}
  let :character, do: __.character

  describe "hit_dice/0" do
    it "has a count of the character's level and 10 sides" do
      expect(Ranger.hit_dice(character)).to eq(count: character.level, sides: 10)
    end
  end

  describe "starting_copper/0" do
    it "is greater than 4999" do
      expect(Ranger.starting_copper).to be :>, 4999
    end

    it "is less than 25001" do
      expect(Ranger.starting_copper).to be :<, 25001
    end
  end

  describe "cantrips/0" do
    it "returns an empty list" do
      expect(Ranger.cantrips).to eq([])
    end
  end

  describe "spells/0" do
    it "contains Alarm" do
      expect(Ranger.spells).to have("Alarm")
    end

    it "contains Animal Friendship" do
      expect(Ranger.spells).to have("Animal Friendship")
    end

    it "contains Animal Messenger" do
      expect(Ranger.spells).to have("Animal Messenger")
    end

    it "contains Barkskin" do
      expect(Ranger.spells).to have("Barkskin")
    end

    it "contains Beast Sense" do
      expect(Ranger.spells).to have("Beast Sense")
    end

    it "contains Commune with Nature" do
      expect(Ranger.spells).to have("Commune with Nature")
    end

    it "contains Conjure Animals" do
      expect(Ranger.spells).to have("Conjure Animals")
    end

    it "contains Conjure Barrage" do
      expect(Ranger.spells).to have("Conjure Barrage")
    end

    it "contains Conjure Volley" do
      expect(Ranger.spells).to have("Conjure Volley")
    end

    it "contains Conjure Woodland Beings" do
      expect(Ranger.spells).to have("Conjure Woodland Beings")
    end

    it "contains Cordon of Arrows" do
      expect(Ranger.spells).to have("Cordon of Arrows")
    end

    it "contains Cure Wounds" do
      expect(Ranger.spells).to have("Cure Wounds")
    end

    it "contains Darkvision" do
      expect(Ranger.spells).to have("Darkvision")
    end

    it "contains Daylight" do
      expect(Ranger.spells).to have("Daylight")
    end

    it "contains Detect Magic" do
      expect(Ranger.spells).to have("Detect Magic")
    end

    it "contains Detect Poison and Disease" do
      expect(Ranger.spells).to have("Detect Poison and Disease")
    end

    it "contains Ensnaring Strike" do
      expect(Ranger.spells).to have("Ensnaring Strike")
    end

    it "contains Find Traps" do
      expect(Ranger.spells).to have("Find Traps")
    end

    it "contains Fog Cloud" do
      expect(Ranger.spells).to have("Fog Cloud")
    end

    it "contains Freedom of Movement" do
      expect(Ranger.spells).to have("Freedom of Movement")
    end

    it "contains Goodberry" do
      expect(Ranger.spells).to have("Goodberry")
    end

    it "contains Grasping Vine" do
      expect(Ranger.spells).to have("Grasping Vine")
    end

    it "contains Hail of Thorns" do
      expect(Ranger.spells).to have("Hail of Thorns")
    end

    it "contains Hunter's Mark" do
      expect(Ranger.spells).to have("Hunter's Mark")
    end

    it "contains Jump" do
      expect(Ranger.spells).to have("Jump")
    end

    it "contains Lesser Restoration" do
      expect(Ranger.spells).to have("Lesser Restoration")
    end

    it "contains Lightning Arrow" do
      expect(Ranger.spells).to have("Lightning Arrow")
    end

    it "contains Locate Animals or Plants" do
      expect(Ranger.spells).to have("Locate Animals or Plants")
    end

    it "contains Locate Creature" do
      expect(Ranger.spells).to have("Locate Creature")
    end

    it "contains Locate Object" do
      expect(Ranger.spells).to have("Locate Object")
    end

    it "contains Longstrider" do
      expect(Ranger.spells).to have("Longstrider")
    end

    it "contains Nondetection" do
      expect(Ranger.spells).to have("Nondetection")
    end

    it "contains Pass without Trace" do
      expect(Ranger.spells).to have("Pass without Trace")
    end

    it "contains Plant Growth" do
      expect(Ranger.spells).to have("Plant Growth")
    end

    it "contains Protection from Energy" do
      expect(Ranger.spells).to have("Protection from Energy")
    end

    it "contains Protection from Poison" do
      expect(Ranger.spells).to have("Protection from Poison")
    end

    it "contains Silence" do
      expect(Ranger.spells).to have("Silence")
    end

    it "contains Speak with Animals" do
      expect(Ranger.spells).to have("Speak with Animals")
    end

    it "contains Speak with Plants" do
      expect(Ranger.spells).to have("Speak with Plants")
    end

    it "contains Spike Growth" do
      expect(Ranger.spells).to have("Spike Growth")
    end

    it "contains Stoneskin" do
      expect(Ranger.spells).to have("Stoneskin")
    end

    it "contains Swift Quiver" do
      expect(Ranger.spells).to have("Swift Quiver")
    end

    it "contains Tree Stride" do
      expect(Ranger.spells).to have("Tree Stride")
    end

    it "contains Water Breathing" do
      expect(Ranger.spells).to have("Water Breathing")
    end

    it "contains Water Walk" do
      expect(Ranger.spells).to have("Water Walk")
    end

    it "contains Wind Wall" do
      expect(Ranger.spells).to have("Wind Wall")
    end
  end
end
