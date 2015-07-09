defmodule D20.FifthEdition.Class.Barbarian.Spec do
  use ESpec
  alias D20.FifthEdition.Class.Barbarian
  alias D20.Class

  subject %Barbarian{}

  it "has a 1d12 hit dice" do
    expect(Class.hit_dice(subject)).to eq([1, 12])
  end
end
