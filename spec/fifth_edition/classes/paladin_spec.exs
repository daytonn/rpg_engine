defmodule D20.FifthEdition.Class.Paladin.Spec do
  use ESpec
  alias D20.FifthEdition.Character
  alias D20.FifthEdition.Class.Paladin

  before do: {:ok, character: %Character{level: 2}}
  let :character, do: __.character

  describe "hit_dice/1" do
    it "returns a count of the character's level and 10 sides" do
      expect(Paladin.hit_dice(character)).to eq(count: character.level, sides: 10)
    end
  end

  describe "starting_copper/0" do
    it "is greater than 4999" do
      expect(Paladin.starting_copper).to be :>, 4999
    end

    it "is less than 25001" do
      expect(Paladin.starting_copper).to be :<, 25001
    end
  end

  describe "cantrips/0" do
    it "returns an empty list" do
      expect(Paladin.cantrips).to eq([])
    end
  end

  describe "spells/0" do
    it "contains Bless" do
      expect(Paladin.spells).to have("Bless")
    end

    it "contains Command" do
      expect(Paladin.spells).to have("Command")
    end

    it "contains Compelled Duel" do
      expect(Paladin.spells).to have("Compelled Duel")
    end

    it "contains Cure Wounds" do
      expect(Paladin.spells).to have("Cure Wounds")
    end

    it "contains Detect Evil and Good" do
      expect(Paladin.spells).to have("Detect Evil and Good")
    end

    it "contains Detect Magic" do
      expect(Paladin.spells).to have("Detect Magic")
    end

    it "contains Detect Poison and Disease" do
      expect(Paladin.spells).to have("Detect Poison and Disease")
    end

    it "contains Divine Favor" do
      expect(Paladin.spells).to have("Divine Favor")
    end

    it "contains Heroism" do
      expect(Paladin.spells).to have("Heroism")
    end

    it "contains Protection from Evil and Good" do
      expect(Paladin.spells).to have("Protection from Evil and Good")
    end

    it "contains Purify Food and Drink" do
      expect(Paladin.spells).to have("Purify Food and Drink")
    end

    it "contains Searing Smite" do
      expect(Paladin.spells).to have("Searing Smite")
    end

    it "contains Shield of Faith" do
      expect(Paladin.spells).to have("Shield of Faith")
    end

    it "contains Thunderous Smite" do
      expect(Paladin.spells).to have("Thunderous Smite")
    end

    it "contains Wrathful Smite" do
      expect(Paladin.spells).to have("Wrathful Smite")
    end

    it "contains Aid" do
      expect(Paladin.spells).to have("Aid")
    end

    it "contains Branding Smite" do
      expect(Paladin.spells).to have("Branding Smite")
    end

    it "contains Find Steed" do
      expect(Paladin.spells).to have("Find Steed")
    end

    it "contains Lesser Restoration" do
      expect(Paladin.spells).to have("Lesser Restoration")
    end

    it "contains Locate Object" do
      expect(Paladin.spells).to have("Locate Object")
    end

    it "contains Magic Weapon" do
      expect(Paladin.spells).to have("Magic Weapon")
    end

    it "contains Protection from Poison" do
      expect(Paladin.spells).to have("Protection from Poison")
    end

    it "contains Zone of Truth" do
      expect(Paladin.spells).to have("Zone of Truth")
    end

    it "contains Aura of Vitality" do
      expect(Paladin.spells).to have("Aura of Vitality")
    end

    it "contains Blinding Smite" do
      expect(Paladin.spells).to have("Blinding Smite")
    end

    it "contains Create Food and Water" do
      expect(Paladin.spells).to have("Create Food and Water")
    end

    it "contains Crusader's Mantle" do
      expect(Paladin.spells).to have("Crusader's Mantle")
    end

    it "contains Daylight" do
      expect(Paladin.spells).to have("Daylight")
    end

    it "contains Dispel Magic" do
      expect(Paladin.spells).to have("Dispel Magic")
    end

    it "contains Elemental Weapon" do
      expect(Paladin.spells).to have("Elemental Weapon")
    end

    it "contains Magic Circle" do
      expect(Paladin.spells).to have("Magic Circle")
    end

    it "contains Remove Curse" do
      expect(Paladin.spells).to have("Remove Curse")
    end

    it "contains Revivify" do
      expect(Paladin.spells).to have("Revivify")
    end

    it "contains Aura of Life" do
      expect(Paladin.spells).to have("Aura of Life")
    end

    it "contains Aura of Purity" do
      expect(Paladin.spells).to have("Aura of Purity")
    end

    it "contains Banishment" do
      expect(Paladin.spells).to have("Banishment")
    end

    it "contains Death Ward" do
      expect(Paladin.spells).to have("Death Ward")
    end

    it "contains Locate Creature" do
      expect(Paladin.spells).to have("Locate Creature")
    end

    it "contains Staggering Smite" do
      expect(Paladin.spells).to have("Staggering Smite")
    end

    it "contains Banishing Smite" do
      expect(Paladin.spells).to have("Banishing Smite")
    end

    it "contains Circle of Power" do
      expect(Paladin.spells).to have("Circle of Power")
    end

    it "contains Destructive Wave" do
      expect(Paladin.spells).to have("Destructive Wave")
    end

    it "contains Dispel Evil and Good" do
      expect(Paladin.spells).to have("Dispel Evil and Good")
    end

    it "contains Geas" do
      expect(Paladin.spells).to have("Geas")
    end

    it "contains Raise Dead" do
      expect(Paladin.spells).to have("Raise Dead")
    end
  end
end
