defmodule D20.FifthEdition.Race.MountainDwarf.Spec do
  use ESpec
  alias D20.FifthEdition.Race.Dwarf
  alias D20.FifthEdition.Race.MountainDwarf

  describe "speed/0" do
    it "returns the Dwarf speed" do
      expect(MountainDwarf.speed).to eq(Dwarf.speed)
    end
  end
end
