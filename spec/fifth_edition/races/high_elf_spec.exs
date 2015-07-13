defmodule D20.FifthEdition.Race.HighElf.Spec do
  use ESpec
  alias D20.FifthEdition.Race.Elf
  alias D20.FifthEdition.Race.HighElf

  describe "speed/0" do
    it "returns the Elf speed" do
      expect(HighElf.speed).to eq(Elf.speed)
    end
  end
end
