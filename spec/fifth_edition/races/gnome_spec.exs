defmodule GnomeSpec do
  use ESpec

  describe "speed/0" do
    it "returns 25" do
      expect(D20.FifthEdition.Race.Gnome.speed).to eq(25)
    end
  end
end
