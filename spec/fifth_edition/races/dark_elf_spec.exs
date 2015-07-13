defmodule D20.FifthEdition.Race.DarkElf.Spec do
  use ESpec
  alias D20.FifthEdition.Race.Elf
  alias D20.FifthEdition.Race.DarkElf

  describe "speed/0" do
    it "returns the Elf speed" do
      expect(DarkElf.speed).to eq(Elf.speed)
    end
  end
end
