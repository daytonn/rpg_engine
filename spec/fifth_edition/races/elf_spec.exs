defmodule ElfSpec do
  use ESpec

  describe "speed/0" do
    it "returns 30" do
      expect(D20.FifthEdition.Race.Elf.speed).to eq(30)
    end
  end
end
