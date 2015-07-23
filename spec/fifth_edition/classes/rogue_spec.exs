defmodule D20.FifthEdition.Class.Rogue.Spec do
  use ESpec
  alias D20.FifthEdition.Class.Rogue

  before do: {:ok, character: %{level: 2}}
  let :character, do: __.character

  describe "hit_dice/1" do
    it "returns a count of the character's level and 8 sides" do
      expect(Rogue.hit_dice(character)).to eq(count: character.level, sides: 8)
    end
  end

  describe "starting_copper/0" do
    it "is greater than 3999" do
      expect(Rogue.starting_copper).to be :>, 3999
    end

    it "is less than 16001" do
      expect(Rogue.starting_copper).to be :<, 16001
    end
  end

  describe "cantrips/0" do
    it "returns an empty list" do
      expect(Rogue.cantrips).to eq([])
    end
  end

  describe "spells/0" do
    it "returns an empty list" do
      expect(Rogue.spells).to eq([])
    end
  end
end
