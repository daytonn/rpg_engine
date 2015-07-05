defmodule RockGnomeSpec do
  use ESpec

  describe "speed/0" do
    it "returns the Gnome speed" do
      expect(D20.FifthEdition.Race.RockGnome.speed).to eq(D20.FifthEdition.Race.Gnome.speed)
    end
  end
end
