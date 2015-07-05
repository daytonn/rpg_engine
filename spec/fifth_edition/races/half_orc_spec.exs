defmodule HalfOrcSpec do
  use ESpec

  describe "speed/0" do
    it "returns 30" do
      expect(D20.FifthEdition.Race.HalfOrc.speed).to eq(30)
    end
  end
end
