defmodule D20.FifthEdition.Race.RockGnome.Spec do
  use ESpec
  alias D20.FifthEdition.Race.Gnome
  alias D20.FifthEdition.Race.RockGnome

  describe "speed/0" do
    it "returns the Gnome speed" do
      expect(RockGnome.speed).to eq(Gnome.speed)
    end
  end
end
