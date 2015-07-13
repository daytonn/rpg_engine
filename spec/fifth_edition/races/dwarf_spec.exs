defmodule D20.FifthEdition.Race.Dwarf.Spec do
  use ESpec
  alias D20.FifthEdition.Race.Dwarf

  describe "speed/0" do
    it "returns 25" do
      expect(Dwarf.speed).to eq(25)
    end
  end
end
