defmodule D20.Spec do
  use ESpec

  describe "alignments/0" do
    it "returns all the alignments" do
      expect(D20.alignments).to have("Chaotic Evil")
      expect(D20.alignments).to have("Neutral Evil")
      expect(D20.alignments).to have("Lawful Evil")
      expect(D20.alignments).to have("Chaotic Neutral")
      expect(D20.alignments).to have("Neutral")
      expect(D20.alignments).to have("Lawful Neutral")
      expect(D20.alignments).to have("Chaotic Good")
      expect(D20.alignments).to have("Neutral Good")
      expect(D20.alignments).to have("Lawful Good")
    end
  end
end
