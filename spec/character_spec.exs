defmodule CharacterSpec do
  use ESpec

  describe "defaults" do
    subject %D20.Character{}

    it "does stuff" do
      expect(subject.level).to eq(1)
    end

    it "has a level of 1" do
      expect(subject.level).to eq(1)
    end

    it "has a base_charisma of 0" do
      expect(subject.base_charisma).to eq(0)
    end

    it "has a base_constitution of 0" do
      expect(subject.base_constitution).to eq(0)
    end

    it "has a base_dexterity of 0" do
      expect(subject.base_dexterity).to eq(0)
    end

    it "has a base_initiative of 0" do
      expect(subject.base_initiative).to eq(0)
    end

    it "has a base_intelligence of 0" do
      expect(subject.base_intelligence).to eq(0)
    end

    it "has a base_strength of 0" do
      expect(subject.base_strength).to eq(0)
    end

    it "has a base_wisdom of 0" do
      expect(subject.base_wisdom).to eq(0)
    end
  end

  describe "bonus_at_level" do
    it "returns 2 at level 1" do
      expect(D20.Character.bonus_at_level(1)).to eq(2)
    end

    it "returns 2 at level 2" do
      expect(D20.Character.bonus_at_level(2)).to eq(2)
    end

    it "returns 2 at level 3" do
      expect(D20.Character.bonus_at_level(3)).to eq(2)
    end

    it "returns 2 at level 4" do
      expect(D20.Character.bonus_at_level(4)).to eq(2)
    end

    it "returns 3 at level 5" do
      expect(D20.Character.bonus_at_level(5)).to eq(3)
    end

    it "returns 3 at level 6" do
      expect(D20.Character.bonus_at_level(6)).to eq(3)
    end

    it "returns 3 at level 7" do
      expect(D20.Character.bonus_at_level(7)).to eq(3)
    end

    it "returns 3 at level 8" do
      expect(D20.Character.bonus_at_level(8)).to eq(3)
    end

    it "returns 4 at level 9" do
      expect(D20.Character.bonus_at_level(9)).to eq(4)
    end

    it "returns 4 at level 10" do
      expect(D20.Character.bonus_at_level(10)).to eq(4)
    end

    it "returns 4 at level 11" do
      expect(D20.Character.bonus_at_level(11)).to eq(4)
    end

    it "returns 4 at level 12" do
      expect(D20.Character.bonus_at_level(12)).to eq(4)
    end

    it "returns 5 at level 13" do
      expect(D20.Character.bonus_at_level(13)).to eq(5)
    end

    it "returns 5 at level 14" do
      expect(D20.Character.bonus_at_level(14)).to eq(5)
    end

    it "returns 5 at level 15" do
      expect(D20.Character.bonus_at_level(15)).to eq(5)
    end

    it "returns 6 at level 16" do
      expect(D20.Character.bonus_at_level(16)).to eq(5)
    end

    it "returns 6 at level 17" do
      expect(D20.Character.bonus_at_level(17)).to eq(6)
    end

    it "returns 6 at level 18" do
      expect(D20.Character.bonus_at_level(18)).to eq(6)
    end

    it "returns 6 at level 19" do
      expect(D20.Character.bonus_at_level(19)).to eq(6)
    end

    it "returns 6 at level 20" do
      expect(D20.Character.bonus_at_level(20)).to eq(6)
    end
  end

  describe "proficiency_bonus" do
    it "returns 2 at level 1" do
      character = %D20.Character{level: 1}
      expect(D20.Character.proficiency_bonus(character)).to eq(2)
    end

    it "returns 2 at level 2" do
      character = %D20.Character{level: 2}
      expect(D20.Character.proficiency_bonus(character)).to eq(2)
    end

    it "returns 2 at level 3" do
      character = %D20.Character{level: 3}
      expect(D20.Character.proficiency_bonus(character)).to eq(2)
    end

    it "returns 2 at level 4" do
      character = %D20.Character{level: 4}
      expect(D20.Character.proficiency_bonus(character)).to eq(2)
    end

    it "returns 3 at level 5" do
      character = %D20.Character{level: 5}
      expect(D20.Character.proficiency_bonus(character)).to eq(3)
    end

    it "returns 3 at level 6" do
      character = %D20.Character{level: 6}
      expect(D20.Character.proficiency_bonus(character)).to eq(3)
    end

    it "returns 3 at level 7" do
      character = %D20.Character{level: 7}
      expect(D20.Character.proficiency_bonus(character)).to eq(3)
    end

    it "returns 3 at level 8" do
      character = %D20.Character{level: 8}
      expect(D20.Character.proficiency_bonus(character)).to eq(3)
    end

    it "returns 4 at level 9" do
      character = %D20.Character{level: 9}
      expect(D20.Character.proficiency_bonus(character)).to eq(4)
    end

    it "returns 4 at level 10" do
      character = %D20.Character{level: 10}
      expect(D20.Character.proficiency_bonus(character)).to eq(4)
    end

    it "returns 4 at level 11" do
      character = %D20.Character{level: 11}
      expect(D20.Character.proficiency_bonus(character)).to eq(4)
    end

    it "returns 4 at level 12" do
      character = %D20.Character{level: 12}
      expect(D20.Character.proficiency_bonus(character)).to eq(4)
    end

    it "returns 5 at level 13" do
      character = %D20.Character{level: 13}
      expect(D20.Character.proficiency_bonus(character)).to eq(5)
    end

    it "returns 5 at level 14" do
      character = %D20.Character{level: 14}
      expect(D20.Character.proficiency_bonus(character)).to eq(5)
    end

    it "returns 5 at level 15" do
      character = %D20.Character{level: 15}
      expect(D20.Character.proficiency_bonus(character)).to eq(5)
    end

    it "returns 6 at level 16" do
      character = %D20.Character{level: 16}
      expect(D20.Character.proficiency_bonus(character)).to eq(5)
    end

    it "returns 6 at level 17" do
      character = %D20.Character{level: 17}
      expect(D20.Character.proficiency_bonus(character)).to eq(6)
    end

    it "returns 6 at level 18" do
      character = %D20.Character{level: 18}
      expect(D20.Character.proficiency_bonus(character)).to eq(6)
    end

    it "returns 6 at level 19" do
      character = %D20.Character{level: 19}
      expect(D20.Character.proficiency_bonus(character)).to eq(6)
    end

    it "returns 6 at level 20" do
      character = %D20.Character{level: 20}
      expect(D20.Character.proficiency_bonus(character)).to eq(6)
    end
  end
end
