defmodule D20.FifthEdition.Class.Druid.Spec do
  use ESpec
  alias D20.FifthEdition.Character
  alias D20.FifthEdition.Class.Druid

  before do: {:ok, character: %Character{level: 2}}
  let :character, do: __.character

  describe "hit_dice/1" do
    it "returns a count of the character's level and 8 sides" do
      expect(Druid.hit_dice(character)).to eq(count: character.level, sides: 8)
    end
  end

  describe "starting_copper/0" do
    it "is greater than 19" do
      expect(Druid.starting_copper).to be :>, 1999
    end

    it "is less than 81" do
      expect(Druid.starting_copper).to be :<, 8001
    end
  end

  describe "cantrips/0" do
    it "contains Druidcraft" do
      expect(Druid.cantrips).to have("Druidcraft")
    end

    it "contains Guidance" do
      expect(Druid.cantrips).to have("Guidance")
    end

    it "contains Mending" do
      expect(Druid.cantrips).to have("Mending")
    end

    it "contains Poison Spray" do
      expect(Druid.cantrips).to have("Poison Spray")
    end

    it "contains Produce Flame" do
      expect(Druid.cantrips).to have("Produce Flame")
    end

    it "contains Resistance" do
      expect(Druid.cantrips).to have("Resistance")
    end

    it "contains Shillelagh" do
      expect(Druid.cantrips).to have("Shillelagh")
    end

    it "contains Thorn Whip" do
      expect(Druid.cantrips).to have("Thorn Whip")
    end
  end

  describe "spells/0" do
    it "contains Animal Friendship" do
      expect(Druid.spells).to have("Animal Friendship")
    end

    it "contains Animal Messenger" do
      expect(Druid.spells).to have("Animal Messenger")
    end

    it "contains Animal Shapes" do
      expect(Druid.spells).to have("Animal Shapes")
    end

    it "contains Antilife Shell" do
      expect(Druid.spells).to have("Antilife Shell")
    end

    it "contains Antipathy/Sympathy" do
      expect(Druid.spells).to have("Antipathy/Sympathy")
    end

    it "contains Awaken" do
      expect(Druid.spells).to have("Awaken")
    end

    it "contains Barkskin" do
      expect(Druid.spells).to have("Barkskin")
    end

    it "contains Beast Sense" do
      expect(Druid.spells).to have("Beast Sense")
    end

    it "contains Blight" do
      expect(Druid.spells).to have("Blight")
    end

    it "contains Call Lightning" do
      expect(Druid.spells).to have("Call Lightning")
    end

    it "contains Charm Person" do
      expect(Druid.spells).to have("Charm Person")
    end

    it "contains Commune with Nature" do
      expect(Druid.spells).to have("Commune with Nature")
    end

    it "contains Confusion" do
      expect(Druid.spells).to have("Confusion")
    end

    it "contains Conjure Animals" do
      expect(Druid.spells).to have("Conjure Animals")
    end

    it "contains Conjure Elemental" do
      expect(Druid.spells).to have("Conjure Elemental")
    end

    it "contains Conjure Fey" do
      expect(Druid.spells).to have("Conjure Fey")
    end

    it "contains Conjure Minor Elementals" do
      expect(Druid.spells).to have("Conjure Minor Elementals")
    end

    it "contains Conjure Woodland Beings" do
      expect(Druid.spells).to have("Conjure Woodland Beings")
    end

    it "contains Contagion" do
      expect(Druid.spells).to have("Contagion")
    end

    it "contains Control Water" do
      expect(Druid.spells).to have("Control Water")
    end

    it "contains Control Weather" do
      expect(Druid.spells).to have("Control Weather")
    end

    it "contains Create or Destroy Water" do
      expect(Druid.spells).to have("Create or Destroy Water")
    end

    it "contains Cure Wounds" do
      expect(Druid.spells).to have("Cure Wounds")
    end

    it "contains Darkvision" do
      expect(Druid.spells).to have("Darkvision")
    end

    it "contains Daylight" do
      expect(Druid.spells).to have("Daylight")
    end

    it "contains Detect Magic" do
      expect(Druid.spells).to have("Detect Magic")
    end

    it "contains Detect Poison and Disease" do
      expect(Druid.spells).to have("Detect Poison and Disease")
    end

    it "contains Dispel Magic" do
      expect(Druid.spells).to have("Dispel Magic")
    end

    it "contains Dominate Beast" do
      expect(Druid.spells).to have("Dominate Beast")
    end

    it "contains Earthquake" do
      expect(Druid.spells).to have("Earthquake")
    end

    it "contains Enhance Ability" do
      expect(Druid.spells).to have("Enhance Ability")
    end

    it "contains Entangle" do
      expect(Druid.spells).to have("Entangle")
    end

    it "contains Faerie Fire" do
      expect(Druid.spells).to have("Faerie Fire")
    end

    it "contains Feeblemind" do
      expect(Druid.spells).to have("Feeblemind")
    end

    it "contains Feign Death" do
      expect(Druid.spells).to have("Feign Death")
    end

    it "contains Find the Path" do
      expect(Druid.spells).to have("Find the Path")
    end

    it "contains Find Traps" do
      expect(Druid.spells).to have("Find Traps")
    end

    it "contains Fire Storm" do
      expect(Druid.spells).to have("Fire Storm")
    end

    it "contains Flame Blade" do
      expect(Druid.spells).to have("Flame Blade")
    end

    it "contains Flaming Sphere" do
      expect(Druid.spells).to have("Flaming Sphere")
    end

    it "contains Fog Cloud" do
      expect(Druid.spells).to have("Fog Cloud")
    end

    it "contains Foresight" do
      expect(Druid.spells).to have("Foresight")
    end

    it "contains Freedom of Movement" do
      expect(Druid.spells).to have("Freedom of Movement")
    end

    it "contains Geas" do
      expect(Druid.spells).to have("Geas")
    end

    it "contains Giant Insect" do
      expect(Druid.spells).to have("Giant Insect")
    end

    it "contains Goodberry" do
      expect(Druid.spells).to have("Goodberry")
    end

    it "contains Grasping Vine" do
      expect(Druid.spells).to have("Grasping Vine")
    end

    it "contains Greater Restoration" do
      expect(Druid.spells).to have("Greater Restoration")
    end

    it "contains Gust of Wind" do
      expect(Druid.spells).to have("Gust of Wind")
    end

    it "contains Hallucinatory Terrain" do
      expect(Druid.spells).to have("Hallucinatory Terrain")
    end

    it "contains Heal" do
      expect(Druid.spells).to have("Heal")
    end

    it "contains Healing Word" do
      expect(Druid.spells).to have("Healing Word")
    end

    it "contains Heat Metal" do
      expect(Druid.spells).to have("Heat Metal")
    end

    it "contains Heroes' Feast" do
      expect(Druid.spells).to have("Heroes' Feast")
    end

    it "contains Hold Person" do
      expect(Druid.spells).to have("Hold Person")
    end

    it "contains Ice Storm" do
      expect(Druid.spells).to have("Ice Storm")
    end

    it "contains Insect Plague" do
      expect(Druid.spells).to have("Insect Plague")
    end

    it "contains Jump" do
      expect(Druid.spells).to have("Jump")
    end

    it "contains Lesser Restoration" do
      expect(Druid.spells).to have("Lesser Restoration")
    end

    it "contains Locate Animals or Plants" do
      expect(Druid.spells).to have("Locate Animals or Plants")
    end

    it "contains Locate Creature" do
      expect(Druid.spells).to have("Locate Creature")
    end

    it "contains Locate Object" do
      expect(Druid.spells).to have("Locate Object")
    end

    it "contains Longstrider" do
      expect(Druid.spells).to have("Longstrider")
    end

    it "contains Mass Cure Wounds" do
      expect(Druid.spells).to have("Mass Cure Wounds")
    end

    it "contains Meld Into Stone" do
      expect(Druid.spells).to have("Meld Into Stone")
    end

    it "contains Mirage Arcane" do
      expect(Druid.spells).to have("Mirage Arcane")
    end

    it "contains Moonbeam" do
      expect(Druid.spells).to have("Moonbeam")
    end

    it "contains Move Earth" do
      expect(Druid.spells).to have("Move Earth")
    end

    it "contains Pass without Trace" do
      expect(Druid.spells).to have("Pass without Trace")
    end

    it "contains Planar Binding" do
      expect(Druid.spells).to have("Planar Binding")
    end

    it "contains Plane Shift" do
      expect(Druid.spells).to have("Plane Shift")
    end

    it "contains Plant Growth" do
      expect(Druid.spells).to have("Plant Growth")
    end

    it "contains Polymorph" do
      expect(Druid.spells).to have("Polymorph")
    end

    it "contains Protection from Energy" do
      expect(Druid.spells).to have("Protection from Energy")
    end

    it "contains Protection from Poison" do
      expect(Druid.spells).to have("Protection from Poison")
    end

    it "contains Purify Food and Drink" do
      expect(Druid.spells).to have("Purify Food and Drink")
    end

    it "contains Regenerate" do
      expect(Druid.spells).to have("Regenerate")
    end

    it "contains Reincarnate" do
      expect(Druid.spells).to have("Reincarnate")
    end

    it "contains Reverse Gravity" do
      expect(Druid.spells).to have("Reverse Gravity")
    end

    it "contains Scrying" do
      expect(Druid.spells).to have("Scrying")
    end

    it "contains Shapechange" do
      expect(Druid.spells).to have("Shapechange")
    end

    it "contains Sleet Storm" do
      expect(Druid.spells).to have("Sleet Storm")
    end

    it "contains Speak with Animals" do
      expect(Druid.spells).to have("Speak with Animals")
    end

    it "contains Speak with Plants" do
      expect(Druid.spells).to have("Speak with Plants")
    end

    it "contains Spike Growth" do
      expect(Druid.spells).to have("Spike Growth")
    end

    it "contains Stone Shape" do
      expect(Druid.spells).to have("Stone Shape")
    end

    it "contains Stoneskin" do
      expect(Druid.spells).to have("Stoneskin")
    end

    it "contains Storm of Vengeance" do
      expect(Druid.spells).to have("Storm of Vengeance")
    end

    it "contains Sunbeam" do
      expect(Druid.spells).to have("Sunbeam")
    end

    it "contains Sunburst" do
      expect(Druid.spells).to have("Sunburst")
    end

    it "contains Thunderwave" do
      expect(Druid.spells).to have("Thunderwave")
    end

    it "contains Transport via Plants" do
      expect(Druid.spells).to have("Transport via Plants")
    end

    it "contains Tree Stride" do
      expect(Druid.spells).to have("Tree Stride")
    end

    it "contains True Resurrection" do
      expect(Druid.spells).to have("True Resurrection")
    end

    it "contains Tsunami" do
      expect(Druid.spells).to have("Tsunami")
    end

    it "contains Wall of Fire" do
      expect(Druid.spells).to have("Wall of Fire")
    end

    it "contains Wall of Stone" do
      expect(Druid.spells).to have("Wall of Stone")
    end

    it "contains Wall of Thorns" do
      expect(Druid.spells).to have("Wall of Thorns")
    end

    it "contains Water Breathing" do
      expect(Druid.spells).to have("Water Breathing")
    end

    it "contains Water Walk" do
      expect(Druid.spells).to have("Water Walk")
    end

    it "contains Wind Walk" do
      expect(Druid.spells).to have("Wind Walk")
    end

    it "contains Wind Wall" do
      expect(Druid.spells).to have("Wind Wall")
    end
  end
end
