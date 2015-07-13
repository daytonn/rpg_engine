defmodule D20.FifthEdition.Character.Spec do
  use ESpec
  import Enum
  alias D20.FifthEdition.Character

  subject %Character{}

  it "has a level" do
    expect(subject.level).to eq(1)
  end

  it "has proficiencies" do
    expect(subject.proficiencies).to eq([])
  end

  it "has a base_strength" do
    expect(subject.base_strength).to eq(0)
  end

  it "has a base_dexterity" do
    expect(subject.base_dexterity).to eq(0)
  end

  it "has a base_wisdom" do
    expect(subject.base_wisdom).to eq(0)
  end

  it "has a base_intelligence" do
    expect(subject.base_intelligence).to eq(0)
  end

  it "has a base_constitution" do
    expect(subject.base_constitution).to eq(0)
  end

  it "has a base_charisma" do
    expect(subject.base_charisma).to eq(0)
  end

  describe "ability_modifier/1" do
    it "returns the number divided by 2 minus 5" do
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
    subject Character.strength_modifier(%Character{})

    it "returns the ability modifier for the character's strength" do
      expect(subject).to eq(-5)
    end
  end

  describe "dexterity_modifier/1" do
    subject Character.dexterity_modifier(%Character{})

    it "returns the ability modifier for the character's dexterity_modifier" do
      expect(subject).to eq(-5)
    end
  end

  describe "constitution_modifier/1" do
    subject Character.constitution_modifier(%Character{})

    it "returns the ability modifier for the character's constitution_modifier" do
      expect(subject).to eq(-5)
    end
  end

  describe "intelligence_modifier/1" do
    subject Character.intelligence_modifier(%Character{})

    it "returns the ability modifier for the character's intelligence_modifier" do
      expect(subject).to eq(-5)
    end
  end

  describe "wisdom_modifier/1" do
    subject Character.wisdom_modifier(%Character{})

    it "returns the ability modifier for the character's wisdom_modifier" do
      expect(subject).to eq(-5)
    end
  end

  describe "charisma_modifier/1" do
    subject Character.charisma_modifier(%Character{})

    it "returns the ability modifier for the character's charisma" do
      expect(subject).to eq(-5)
    end
  end

  describe "proficient_in?/2" do
    context "with no proficiency" do
      it "returns false" do
        each(D20.FifthEdition.skills, fn(skill) ->
          expect(Character.proficient_in?(%{proficiencies: []}, skill)).to eq(false)
        end)
      end
    end

    context "with proficiencies" do
      it "returns true" do
        each(D20.FifthEdition.skills, fn(skill) ->
          expect(Character.proficient_in?(%{proficiencies: D20.FifthEdition.skills}, skill)).to eq(true)
        end)
      end
    end
  end

  describe "skills" do
    context "with no proficiency" do
      describe "wisdom based skills" do
        it "returns the wisdom_modifier" do
          character = %{base_wisdom: 0, proficiencies: []}
          wisdom = Character.wisdom_modifier(character)

          expect(Character.survival(character)).to eq(wisdom)
          expect(Character.animal_handling(character)).to eq(wisdom)
          expect(Character.insight(character)).to eq(wisdom)
          expect(Character.medicine(character)).to eq(wisdom)
          expect(Character.perception(character)).to eq(wisdom)
        end
      end

      describe "dexterity based skills" do
        it "returns the dexterity_modifier" do
          character = %{base_dexterity: 0, proficiencies: []}
          dexterity = Character.dexterity_modifier(character)

          expect(Character.acrobatics(character)).to eq(dexterity)
          expect(Character.stealth(character)).to eq(dexterity)
          expect(Character.sleight_of_hand(character)).to eq(dexterity)
        end
      end

      describe "intelligence based skills" do
        it "returns the intelligence_modifier" do
          character = %{base_intelligence: 0, proficiencies: []}
          intelligence = Character.intelligence_modifier(character)

          expect(Character.arcana(character)).to eq(intelligence)
          expect(Character.history(character)).to eq(intelligence)
          expect(Character.investigation(character)).to eq(intelligence)
          expect(Character.nature(character)).to eq(intelligence)
          expect(Character.religion(character)).to eq(intelligence)
        end
      end

      describe "charisma based skills" do
        it "returns the charisma_modifier" do
          character = %{base_charisma: 0, proficiencies: []}
          charisma = Character.charisma_modifier(character)

          expect(Character.deception(character)).to eq(charisma)
          expect(Character.intimidation(character)).to eq(charisma)
          expect(Character.performance(character)).to eq(charisma)
          expect(Character.persuasion(character)).to eq(charisma)
        end
      end

      describe "strength based skills" do
      it "returns the strength modifier" do
          character = %{base_strength: 0, proficiencies: []}
          expect(Character.athletics(character)).to eq(Character.strength_modifier(character))
        end
      end
    end

    context "with proficiency" do
      before do: {:ok, bonus: D20.Character.proficiency_bonus(%{level: 1}) }
      let :bonus, do: __.bonus

      describe "wisdom based skills" do
        it "returns the wisdom_modifier plus the proficiency bonus" do
          character = %{
            level: 1,
            base_wisdom: 0,
            proficiencies: [
              :survival,
              :animal_handling,
              :insight,
              :medicine,
              :perception
            ]
          }
          wisdom = Character.wisdom_modifier(character)

          expect(Character.survival(character)).to eq(wisdom + bonus)
          expect(Character.animal_handling(character)).to eq(wisdom + bonus)
          expect(Character.insight(character)).to eq(wisdom + bonus)
          expect(Character.medicine(character)).to eq(wisdom + bonus)
          expect(Character.perception(character)).to eq(wisdom + bonus)
        end
      end

      describe "dexterity based skills" do
        it "returns the dexterity_modifier plus the proficiency bonus" do
          character = %{
            level: 1,
            base_dexterity: 0,
            proficiencies: [:acrobatics, :stealth, :sleight_of_hand]
          }
          dexterity = Character.dexterity_modifier(character)

          expect(Character.acrobatics(character)).to eq(dexterity + bonus)
          expect(Character.stealth(character)).to eq(dexterity + bonus)
          expect(Character.sleight_of_hand(character)).to eq(dexterity + bonus)
        end
      end

      describe "intelligence based skills" do
        it "returns the intelligence_modifier plus the proficiency bonus" do
          character = %{
            level: 1,
            base_intelligence: 0,
            proficiencies: [
              :arcana,
              :history,
              :investigation,
              :nature,
              :religion
            ]
          }
          intelligence = Character.intelligence_modifier(character)

          expect(Character.arcana(character)).to eq(intelligence + bonus)
          expect(Character.history(character)).to eq(intelligence + bonus)
          expect(Character.investigation(character)).to eq(intelligence + bonus)
          expect(Character.nature(character)).to eq(intelligence + bonus)
          expect(Character.religion(character)).to eq(intelligence + bonus)
        end
      end

      describe "charisma based skills" do
        it "returns the charisma_modifier plus the proficiency bonus" do
          character = %{
            level: 1,
            base_charisma: 0,
            proficiencies: [
              :deception,
              :intimidation,
              :performance,
              :persuasion
            ]
          }
          charisma = Character.charisma_modifier(character)

          expect(Character.deception(character)).to eq(charisma + bonus)
          expect(Character.intimidation(character)).to eq(charisma + bonus)
          expect(Character.performance(character)).to eq(charisma + bonus)
          expect(Character.persuasion(character)).to eq(charisma + bonus)
        end
      end

      describe "strength based skills" do
        it "returns the strength modifier plus the proficiency bonus" do
          character = %{
            level: 1,
            base_strength: 0,
            proficiencies: [:athletics]
          }
          expect(Character.athletics(character)).to eq(Character.strength_modifier(character) + bonus)
        end
      end
    end
  end
end
