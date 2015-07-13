defmodule D20.FifthEdition.Race.Human.Spec do
  use ESpec
  alias D20.FifthEdition.Race.Human

  describe "speed/0" do
    it "returns 30" do
      expect(Human.speed).to eq(30)
    end
  end
end
