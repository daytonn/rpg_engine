defmodule HillDwarfSpec do
  use ESpec

  describe "speed/0" do
    it "returns the Dwarf speed" do
      expect(D20.FifthEdition.Race.HillDwarf.speed).to eq(D20.FifthEdition.Race.Dwarf.speed)
    end
  end
end
