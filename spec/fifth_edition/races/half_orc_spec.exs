defmodule D20.FifthEdition.Race.HalfOrc.Spec do
  use ESpec
  alias D20.FifthEdition.Race.HalfOrc

  describe "speed/0" do
    it "returns 30" do
      expect(HalfOrc.speed).to eq(30)
    end
  end
end
