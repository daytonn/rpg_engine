defmodule D20.FifthEdition.Race.Halfling.Spec do
  use ESpec
  alias D20.FifthEdition.Race.Halfling

  describe "speed/0" do
    it "returns 25" do
      expect(Halfling.speed).to eq(25)
    end
  end
end
