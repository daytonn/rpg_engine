defmodule HumanSpec do
  use ESpec

  describe "speed/0" do
    it "returns 30" do
      expect(D20.FifthEdition.Race.Human.speed).to eq(30)
    end
  end
end
