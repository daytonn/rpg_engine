defmodule D20.FifthEdition.Race.Tiefling.Spec do
  use ESpec
  alias D20.FifthEdition.Race.Tiefling

  describe "speed/0" do
    it "returns 30" do
      expect(Tiefling.speed).to eq(30)
    end
  end
end
