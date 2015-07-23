defmodule D20.FifthEdition.Class.Cleric.Spec do
  use ESpec
  alias D20.FifthEdition.Class.Cleric

  before do: { :ok, character: %{level: 2} }
  let :character, do: __.character

  describe "hit_dice/1" do
    it "has a count of the character's level and 8 sides" do
      expect(Cleric.hit_dice(character)).to eq(count: character.level, sides: 8)
    end
  end

  describe "starting_copper/0" do
    it "is greater than 49" do
      expect(Cleric.starting_copper).to be :>, 4999
    end

    it "is less than 251" do
      expect(Cleric.starting_copper).to be :<, 25001
    end
  end

  describe "cantrips/0" do
    it "contains Guidance" do
      expect(Cleric.cantrips).to have("Guidance")
    end

    it "contains Light" do
      expect(Cleric.cantrips).to have("Light")
    end

    it "contains Mending" do
      expect(Cleric.cantrips).to have("Mending")
    end

    it "contains Resistance" do
      expect(Cleric.cantrips).to have("Resistance")
    end

    it "contains Sacred Flame" do
      expect(Cleric.cantrips).to have("Sacred Flame")
    end

    it "contains Spare the Dying" do
      expect(Cleric.cantrips).to have("Spare the Dying")
    end

    it "contains Thaumaturgy" do
      expect(Cleric.cantrips).to have("Thaumaturgy")
    end
  end
end
