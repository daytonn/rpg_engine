defmodule D20.FifthEdition.Spec do
  use ESpec

  describe "skils/0" do
    it "is a list of skill atoms" do
      expect(D20.FifthEdition.skills).to have(:acrobatics)
      expect(D20.FifthEdition.skills).to have(:animal_handling)
      expect(D20.FifthEdition.skills).to have(:arcana)
      expect(D20.FifthEdition.skills).to have(:athletics)
      expect(D20.FifthEdition.skills).to have(:deception)
      expect(D20.FifthEdition.skills).to have(:history)
      expect(D20.FifthEdition.skills).to have(:insight)
      expect(D20.FifthEdition.skills).to have(:intimidation)
      expect(D20.FifthEdition.skills).to have(:investigation)
      expect(D20.FifthEdition.skills).to have(:medicine)
      expect(D20.FifthEdition.skills).to have(:nature)
      expect(D20.FifthEdition.skills).to have(:perception)
      expect(D20.FifthEdition.skills).to have(:performance)
      expect(D20.FifthEdition.skills).to have(:persuasion)
      expect(D20.FifthEdition.skills).to have(:religion)
      expect(D20.FifthEdition.skills).to have(:sleight_of_hand)
      expect(D20.FifthEdition.skills).to have(:stealth)
      expect(D20.FifthEdition.skills).to have(:survival)
    end
  end
end
