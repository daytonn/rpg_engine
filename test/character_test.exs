defmodule D20.Character.Test do
  use ExSpec, async: true

  describe "defaults" do
    def subject do
      %D20.Character{}
    end

    it "has a level of 1" do
      assert subject.level == 1
    end

    it "has a base_charisma of 0" do
      assert subject.base_charisma == 0
    end

    it "has a base_constitution of 0" do
      assert subject.base_constitution == 0
    end

    it "has a base_dexterity of 0" do
      assert subject.base_dexterity == 0
    end

    it "has a base_initiative of 0" do
      assert subject.base_initiative == 0
    end

    it "has a base_intelligence of 0" do
      assert subject.base_intelligence == 0
    end

    it "has a base_strength of 0" do
      assert subject.base_strength == 0
    end

    it "has a base_wisdom of 0" do
      assert subject.base_wisdom == 0
    end
  end

  describe "bonus_at_level" do
    it "returns 2 at level 1" do
      assert D20.Character.bonus_at_level(1) == 2
    end

    it "returns 2 at level 2" do
      assert D20.Character.bonus_at_level(2) == 2
    end

    it "returns 2 at level 3" do
      assert D20.Character.bonus_at_level(3) == 2
    end

    it "returns 2 at level 4" do
      assert D20.Character.bonus_at_level(4) == 2
    end

    it "returns 3 at level 5" do
      assert D20.Character.bonus_at_level(5) == 3
    end

    it "returns 3 at level 6" do
      assert D20.Character.bonus_at_level(6) == 3
    end

    it "returns 3 at level 7" do
      assert D20.Character.bonus_at_level(7) == 3
    end

    it "returns 3 at level 8" do
      assert D20.Character.bonus_at_level(8) == 3
    end

    it "returns 4 at level 9" do
      assert D20.Character.bonus_at_level(9) == 4
    end

    it "returns 4 at level 10" do
      assert D20.Character.bonus_at_level(10) == 4
    end

    it "returns 4 at level 11" do
      assert D20.Character.bonus_at_level(11) == 4
    end

    it "returns 4 at level 12" do
      assert D20.Character.bonus_at_level(12) == 4
    end

    it "returns 5 at level 13" do
      assert D20.Character.bonus_at_level(13) == 5
    end

    it "returns 5 at level 14" do
      assert D20.Character.bonus_at_level(14) == 5
    end

    it "returns 5 at level 15" do
      assert D20.Character.bonus_at_level(15) == 5
    end

    it "returns 6 at level 16" do
      assert D20.Character.bonus_at_level(16) == 5
    end

    it "returns 6 at level 17" do
      assert D20.Character.bonus_at_level(17) == 6
    end

    it "returns 6 at level 18" do
      assert D20.Character.bonus_at_level(18) == 6
    end

    it "returns 6 at level 19" do
      assert D20.Character.bonus_at_level(19) == 6
    end

    it "returns 6 at level 20" do
      assert D20.Character.bonus_at_level(20) == 6
    end
  end

  describe "proficiency_bonus" do
    it "returns 2 at level 1" do
      character = %D20.Character{level: 1}
      assert D20.Character.proficiency_bonus(character) == 2
    end

    it "returns 2 at level 2" do
      character = %D20.Character{level: 2}
      assert D20.Character.proficiency_bonus(character) == 2
    end

    it "returns 2 at level 3" do
      character = %D20.Character{level: 3}
      assert D20.Character.proficiency_bonus(character) == 2
    end

    it "returns 2 at level 4" do
      character = %D20.Character{level: 4}
      assert D20.Character.proficiency_bonus(character) == 2
    end

    it "returns 3 at level 5" do
      character = %D20.Character{level: 5}
      assert D20.Character.proficiency_bonus(character) == 3
    end

    it "returns 3 at level 6" do
      character = %D20.Character{level: 6}
      assert D20.Character.proficiency_bonus(character) == 3
    end

    it "returns 3 at level 7" do
      character = %D20.Character{level: 7}
      assert D20.Character.proficiency_bonus(character) == 3
    end

    it "returns 3 at level 8" do
      character = %D20.Character{level: 8}
      assert D20.Character.proficiency_bonus(character) == 3
    end

    it "returns 4 at level 9" do
      character = %D20.Character{level: 9}
      assert D20.Character.proficiency_bonus(character) == 4
    end

    it "returns 4 at level 10" do
      character = %D20.Character{level: 10}
      assert D20.Character.proficiency_bonus(character) == 4
    end

    it "returns 4 at level 11" do
      character = %D20.Character{level: 11}
      assert D20.Character.proficiency_bonus(character) == 4
    end

    it "returns 4 at level 12" do
      character = %D20.Character{level: 12}
      assert D20.Character.proficiency_bonus(character) == 4
    end

    it "returns 5 at level 13" do
      character = %D20.Character{level: 13}
      assert D20.Character.proficiency_bonus(character) == 5
    end

    it "returns 5 at level 14" do
      character = %D20.Character{level: 14}
      assert D20.Character.proficiency_bonus(character) == 5
    end

    it "returns 5 at level 15" do
      character = %D20.Character{level: 15}
      assert D20.Character.proficiency_bonus(character) == 5
    end

    it "returns 6 at level 16" do
      character = %D20.Character{level: 16}
      assert D20.Character.proficiency_bonus(character) == 5
    end

    it "returns 6 at level 17" do
      character = %D20.Character{level: 17}
      assert D20.Character.proficiency_bonus(character) == 6
    end

    it "returns 6 at level 18" do
      character = %D20.Character{level: 18}
      assert D20.Character.proficiency_bonus(character) == 6
    end

    it "returns 6 at level 19" do
      character = %D20.Character{level: 19}
      assert D20.Character.proficiency_bonus(character) == 6
    end

    it "returns 6 at level 20" do
      character = %D20.Character{level: 20}
      assert D20.Character.proficiency_bonus(character) == 6
    end
  end
end
