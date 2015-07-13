defmodule D20.FifthEdition.Race.ForestGnome.Spec do
  use ESpec
  alias D20.FifthEdition.Race.Gnome
  alias D20.FifthEdition.Race.ForestGnome

  describe "speed/0" do
    it "returns the Gnome speed" do
      expect(ForestGnome.speed).to eq(Gnome.speed)
    end
  end
end
