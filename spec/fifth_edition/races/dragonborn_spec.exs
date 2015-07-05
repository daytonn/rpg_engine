defmodule DragonbornSpec do
  use ESpec

  describe "speed/0" do
    it "returns 30" do
      expect(D20.FifthEdition.Race.Dragonborn.speed).to eq(30)
    end
  end
end
