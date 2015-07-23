defmodule D20.FifthEdition.Character.Spec do
  use ESpec
  import Enum
  alias D20.FifthEdition.Character

  before do
    {
      :ok,
      character: %{
        level: 1,
        proficiencies: [],
        base_strength: 0,
        base_wisdom: 0,
        base_intelligence: 0,
        base_dexterity: 0,
        base_charisma: 0,
        base_constitution: 0
      }
    }
  end
  let :character, do: __.character

  describe "ability_modifier/2" do
    it "returns the number divided by 2 minus 5" do
      expect(Character.ability_modifier(%{base_strength: 0}, :strength)).to eq(-5)
      expect(Character.ability_modifier(%{base_strength: 1}, :strength)).to eq(-4)
      expect(Character.ability_modifier(%{base_strength: 2}, :strength)).to eq(-4)
      expect(Character.ability_modifier(%{base_strength: 3}, :strength)).to eq(-3)
      expect(Character.ability_modifier(%{base_strength: 4}, :strength)).to eq(-3)
      expect(Character.ability_modifier(%{base_strength: 5}, :strength)).to eq(-2)
      expect(Character.ability_modifier(%{base_strength: 6}, :strength)).to eq(-2)
      expect(Character.ability_modifier(%{base_strength: 7}, :strength)).to eq(-1)
      expect(Character.ability_modifier(%{base_strength: 8}, :strength)).to eq(-1)
      expect(Character.ability_modifier(%{base_strength: 9}, :strength)).to eq(0)
      expect(Character.ability_modifier(%{base_strength: 10}, :strength)).to eq(0)
      expect(Character.ability_modifier(%{base_strength: 11}, :strength)).to eq(0)
      expect(Character.ability_modifier(%{base_strength: 12}, :strength)).to eq(1)
      expect(Character.ability_modifier(%{base_strength: 13}, :strength)).to eq(1)
      expect(Character.ability_modifier(%{base_strength: 14}, :strength)).to eq(2)
      expect(Character.ability_modifier(%{base_strength: 15}, :strength)).to eq(2)
      expect(Character.ability_modifier(%{base_strength: 16}, :strength)).to eq(3)
      expect(Character.ability_modifier(%{base_strength: 17}, :strength)).to eq(3)
      expect(Character.ability_modifier(%{base_strength: 18}, :strength)).to eq(4)
      expect(Character.ability_modifier(%{base_strength: 19}, :strength)).to eq(4)
      expect(Character.ability_modifier(%{base_strength: 20}, :strength)).to eq(5)
    end
  end

  describe "strength_modifier/1" do
    subject Character.strength_modifier(character)

    it "returns the ability modifier for the character's strength" do
      expect(subject).to eq(-5)
    end
  end

  describe "dexterity_modifier/1" do
    subject Character.dexterity_modifier(character)

    it "returns the ability modifier for the character's dexterity_modifier" do
      expect(subject).to eq(-5)
    end
  end

  describe "constitution_modifier/1" do
    subject Character.constitution_modifier(character)

    it "returns the ability modifier for the character's constitution_modifier" do
      expect(subject).to eq(-5)
    end
  end

  describe "intelligence_modifier/1" do
    subject Character.intelligence_modifier(character)

    it "returns the ability modifier for the character's intelligence_modifier" do
      expect(subject).to eq(-5)
    end
  end

  describe "wisdom_modifier/1" do
    subject Character.wisdom_modifier(character)

    it "returns the ability modifier for the character's wisdom_modifier" do
      expect(subject).to eq(-5)
    end
  end

  describe "charisma_modifier/1" do
    subject Character.charisma_modifier(character)

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
          expect(Character.proficient_in?(%{proficiencies: [:strength]}, :strength))
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

  describe "ability_save/1" do
    context "without proficiency" do
      it "returns the ability's modifier" do
        expect(Character.ability_save(character, :strength)).to eq(Character.strength_modifier(character))
        expect(Character.ability_save(character, :dexterity)).to eq(Character.dexterity_modifier(character))
        expect(Character.ability_save(character, :wisdom)).to eq(Character.wisdom_modifier(character))
        expect(Character.ability_save(character, :charisma)).to eq(Character.charisma_modifier(character))
        expect(Character.ability_save(character, :intelligence)).to eq(Character.intelligence_modifier(character))
        expect(Character.ability_save(character, :constitution)).to eq(Character.constitution_modifier(character))
      end
    end

    context "with proficiency" do
      subject %{character | proficiencies: [:strength, :dexterity, :wisdom, :charisma, :intelligence, :constitution]}

      it "returns the ability modifier plus the proficiency bonus" do
        expect(Character.ability_save(subject, :strength)).to eq(Character.strength_modifier(subject) + D20.Character.proficiency_bonus(%{level: 1}))
        expect(Character.ability_save(subject, :dexterity)).to eq(Character.dexterity_modifier(subject) + D20.Character.proficiency_bonus(%{level: 1}))
        expect(Character.ability_save(subject, :wisdom)).to eq(Character.wisdom_modifier(subject) + D20.Character.proficiency_bonus(%{level: 1}))
        expect(Character.ability_save(subject, :charisma)).to eq(Character.charisma_modifier(subject) + D20.Character.proficiency_bonus(%{level: 1}))
        expect(Character.ability_save(subject, :intelligence)).to eq(Character.intelligence_modifier(subject) + D20.Character.proficiency_bonus(%{level: 1}))
        expect(Character.ability_save(subject, :constitution)).to eq(Character.constitution_modifier(subject) + D20.Character.proficiency_bonus(%{level: 1}))
      end
    end
  end
end
