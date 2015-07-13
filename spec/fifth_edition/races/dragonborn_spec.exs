defmodule D20.FifthEdition.Race.Dragonborn.Spec do
  use ESpec
  alias D20.FifthEdition.Race.Dragonborn

  describe "speed/0" do
    it "returns 30" do
      expect(Dragonborn.speed).to eq(30)
    end
  end
end
