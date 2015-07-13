defmodule D20.FifthEdition.Spec do
  use ESpec
  alias D20.FifthEdition

  describe "skils/0" do
    it "is a list of skill atoms" do
      expect(FifthEdition.skills).to have(:acrobatics)
      expect(FifthEdition.skills).to have(:animal_handling)
      expect(FifthEdition.skills).to have(:arcana)
      expect(FifthEdition.skills).to have(:athletics)
      expect(FifthEdition.skills).to have(:deception)
      expect(FifthEdition.skills).to have(:history)
      expect(FifthEdition.skills).to have(:insight)
      expect(FifthEdition.skills).to have(:intimidation)
      expect(FifthEdition.skills).to have(:investigation)
      expect(FifthEdition.skills).to have(:medicine)
      expect(FifthEdition.skills).to have(:nature)
      expect(FifthEdition.skills).to have(:perception)
      expect(FifthEdition.skills).to have(:performance)
      expect(FifthEdition.skills).to have(:persuasion)
      expect(FifthEdition.skills).to have(:religion)
      expect(FifthEdition.skills).to have(:sleight_of_hand)
      expect(FifthEdition.skills).to have(:stealth)
      expect(FifthEdition.skills).to have(:survival)
    end
  end
end
