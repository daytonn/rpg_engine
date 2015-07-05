defmodule Spec do
  use ESpec

  describe "list/0" do
    subject D20.Alignment.list

    it "returns the list of alignments" do
      expect(subject).to have("Chaotic Evil")
      expect(subject).to have("Chaotic Good")
      expect(subject).to have("Chaotic Neutral")
      expect(subject).to have("Lawful Evil")
      expect(subject).to have("Lawful Good")
      expect(subject).to have("Lawful Neutral")
      expect(subject).to have("Netrual Evil")
      expect(subject).to have("Neutral Good")
      expect(subject).to have("Neutral")
    end
  end

  describe "list/1" do
    context "with :chaos" do
      subject D20.Alignment.list(:chaos)

      it "returns only Chaotic alignments" do
        expect(subject).to have("Chaotic Evil")
        expect(subject).to have("Chaotic Neutral")
        expect(subject).to have("Chaotic Good")

        expect(subject).to_not have("Lawful Evil")
        expect(subject).to_not have("Lawful Good")
        expect(subject).to_not have("Lawful Neutral")
        expect(subject).to_not have("Netrual Evil")
        expect(subject).to_not have("Neutral Good")
        expect(subject).to_not have("Neutral")
      end
    end
  end
end
