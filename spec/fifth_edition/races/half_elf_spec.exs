defmodule D20.FifthEdition.Race.HalfElf.Spec do
  use ESpec
  alias D20.FifthEdition.Race.HalfElf

  describe "speed/0" do
    it "returns 30" do
      expect(HalfElf.speed).to eq(30)
    end
  end
end
