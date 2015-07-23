defmodule D20.FifthEdition.Class.Barbarian.Spec do
  use ESpec
  alias D20.FifthEdition.Class.Barbarian

  before do: { :ok, character: %{level: 2} }
  let :character, do: __.character

  describe "hit_dice/1" do
    it "returns a count of the character's level and 12 sides" do
      expect(Barbarian.hit_dice(character)).to eq(count: character.level, sides: 12)
    end
  end

  describe "starting_copper/0" do
    it "is greater than 19" do
      expect(Barbarian.starting_copper).to be :>, 1999
    end

    it "is less than 81" do
      expect(Barbarian.starting_copper).to be :<, 8001
    end
  end

  describe "cantrips/0" do
    it "returns an empty list" do
      expect(Barbarian.cantrips).to eq([])
    end
  end

  describe "spells/0" do
    it "returns an empty list" do
      expect(Barbarian.spells).to eq([])
    end
  end
end
