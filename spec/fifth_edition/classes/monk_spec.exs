defmodule D20.FifthEdition.Class.Monk.Spec do
  use ESpec
  alias D20.FifthEdition.Character
  alias D20.FifthEdition.Class.Monk

  before do: {:ok, character: %Character{level: 2}}
  let :character, do: __.character

  describe "hit_dice/1" do
    it "returns the count of the character's level and 10 sides" do
      expect(Monk.hit_dice(character)).to eq(count: character.level, sides: 8)
    end
  end

  describe "starting_copper/0" do
    it "is greater than 49" do
      expect(Monk.starting_copper).to be :>, 4999
    end

    it "is less than 201" do
      expect(Monk.starting_copper).to be :<, 20001
    end
  end

  describe "cantrips/0" do
    it "returns an empty list" do
      expect(Monk.cantrips).to eq([])
    end
  end

  describe "spells/0" do
    it "returns an empty list" do
      expect(Monk.spells).to eq([])
    end
  end
end
