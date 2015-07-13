defmodule D20.FifthEdition.Race.WoodElf.Spec do
  use ESpec
  alias D20.FifthEdition.Race.Elf
  alias D20.FifthEdition.Race.WoodElf

  describe "speed/0" do
    it "returns the Elf speed" do
      expect(WoodElf.speed).to eq(Elf.speed)
    end
  end
end
