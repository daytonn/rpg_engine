defmodule D20.Character.Spec do
  use ESpec

  describe "bonus_at_level/1" do
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

  describe "proficiency_bonus/1" do
    it "returns 2 at level 1" do
      expect(D20.Character.proficiency_bonus(%{level: 1})).to eq(2)
    end

    it "returns 2 at level 2" do
      expect(D20.Character.proficiency_bonus(%{level: 2})).to eq(2)
    end

    it "returns 2 at level 3" do
      expect(D20.Character.proficiency_bonus(%{level: 3})).to eq(2)
    end

    it "returns 2 at level 4" do
      expect(D20.Character.proficiency_bonus(%{level: 4})).to eq(2)
    end

    it "returns 3 at level 5" do
      expect(D20.Character.proficiency_bonus(%{level: 5})).to eq(3)
    end

    it "returns 3 at level 6" do
      expect(D20.Character.proficiency_bonus(%{level: 6})).to eq(3)
    end

    it "returns 3 at level 7" do
      expect(D20.Character.proficiency_bonus(%{level: 7})).to eq(3)
    end

    it "returns 3 at level 8" do
      expect(D20.Character.proficiency_bonus(%{level: 8})).to eq(3)
    end

    it "returns 4 at level 9" do
      expect(D20.Character.proficiency_bonus(%{level: 9})).to eq(4)
    end

    it "returns 4 at level 10" do
      expect(D20.Character.proficiency_bonus(%{level: 10})).to eq(4)
    end

    it "returns 4 at level 11" do
      expect(D20.Character.proficiency_bonus(%{level: 11})).to eq(4)
    end

    it "returns 4 at level 12" do
      expect(D20.Character.proficiency_bonus(%{level: 12})).to eq(4)
    end

    it "returns 5 at level 13" do
      expect(D20.Character.proficiency_bonus(%{level: 13})).to eq(5)
    end

    it "returns 5 at level 14" do
      expect(D20.Character.proficiency_bonus(%{level: 14})).to eq(5)
    end

    it "returns 5 at level 15" do
      expect(D20.Character.proficiency_bonus(%{level: 15})).to eq(5)
    end

    it "returns 6 at level 16" do
      expect(D20.Character.proficiency_bonus(%{level: 16})).to eq(5)
    end

    it "returns 6 at level 17" do
      expect(D20.Character.proficiency_bonus(%{level: 17})).to eq(6)
    end

    it "returns 6 at level 18" do
      expect(D20.Character.proficiency_bonus(%{level: 18})).to eq(6)
    end

    it "returns 6 at level 19" do
      expect(D20.Character.proficiency_bonus(%{level: 19})).to eq(6)
    end

    it "returns 6 at level 20" do
      expect(D20.Character.proficiency_bonus(%{level: 20})).to eq(6)
    end
  end
end
