defmodule D20.FifthEdition.Race.HillDwarf.Spec do
  use ESpec
  alias D20.FifthEdition.Race.Dwarf
  alias D20.FifthEdition.Race.HillDwarf

  describe "speed/0" do
    it "returns the Dwarf speed" do
      expect(HillDwarf.speed).to eq(Dwarf.speed)
    end
  end
end
