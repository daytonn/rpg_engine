defmodule D20.FifthEdition.Race.Elf.Spec do
  use ESpec
  alias D20.FifthEdition.Race.Elf

  describe "speed/0" do
    it "returns 30" do
      expect(Elf.speed).to eq(30)
    end
  end
end
