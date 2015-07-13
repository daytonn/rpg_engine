defmodule D20.FifthEdition.Race.Gnome.Spec do
  use ESpec
  alias D20.FifthEdition.Race.Gnome

  describe "speed/0" do
    it "returns 25" do
      expect(Gnome.speed).to eq(25)
    end
  end
end
