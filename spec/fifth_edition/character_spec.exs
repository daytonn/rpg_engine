defmodule D20.FifthEdition.CharacterSpec do
  use ESpec
  alias D20.FifthEdition.Character, as: Character

  describe "ability_modifier/1" do
    it "returns the number halved" do
      expect(Character.ability_modifier(0)).to eq(-5)
      expect(Character.ability_modifier(1)).to eq(-4)
      expect(Character.ability_modifier(2)).to eq(-4)
      expect(Character.ability_modifier(3)).to eq(-3)
      expect(Character.ability_modifier(4)).to eq(-3)
      expect(Character.ability_modifier(5)).to eq(-2)
      expect(Character.ability_modifier(6)).to eq(-2)
      expect(Character.ability_modifier(7)).to eq(-1)
      expect(Character.ability_modifier(8)).to eq(-1)
      expect(Character.ability_modifier(9)).to eq(0)
      expect(Character.ability_modifier(10)).to eq(0)
      expect(Character.ability_modifier(11)).to eq(0)
      expect(Character.ability_modifier(12)).to eq(1)
      expect(Character.ability_modifier(13)).to eq(1)
      expect(Character.ability_modifier(14)).to eq(2)
      expect(Character.ability_modifier(15)).to eq(2)
      expect(Character.ability_modifier(16)).to eq(3)
      expect(Character.ability_modifier(17)).to eq(3)
      expect(Character.ability_modifier(18)).to eq(4)
      expect(Character.ability_modifier(19)).to eq(4)
      expect(Character.ability_modifier(20)).to eq(5)
    end
  end

  describe "strength_modifier/1" do
    subject Character.strength_modifier(%D20.Character{})

    it "returns the ability modifier for the character's strength" do
      expect(subject).to eq(-5)
    end
  end

  describe "dexterity_modifier/1" do
    subject Character.dexterity_modifier(%D20.Character{})

    it "returns the ability modifier for the character's dexterity_modifier" do
      expect(subject).to eq(-5)
    end
  end

  describe "constitution_modifier/1" do
    subject Character.constitution_modifier(%D20.Character{})

    it "returns the ability modifier for the character's constitution_modifier" do
      expect(subject).to eq(-5)
    end
  end

  describe "intelligence_modifier/1" do
    subject Character.intelligence_modifier(%D20.Character{})

    it "returns the ability modifier for the character's intelligence_modifier" do
      expect(subject).to eq(-5)
    end
  end

  describe "wisdom_modifier/1" do
    subject Character.wisdom_modifier(%D20.Character{})

    it "returns the ability modifier for the character's wisdom_modifier" do
      expect(subject).to eq(-5)
    end
  end

  describe "charisma_modifier/1" do
    subject Character.charisma_modifier(%D20.Character{})

    it "returns the ability modifier for the character's charisma" do
      expect(subject).to eq(-5)
    end
  end
end
