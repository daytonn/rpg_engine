defmodule D20.FifthEdition.Class.Barbarian.Spec do
  use ESpec
  alias D20.FifthEdition.Class.Barbarian
  alias D20.Class

  subject %Barbarian{}

  it "has hit_dice of 1d12" do
    expect(Class.hit_dice(subject)).to eq(count: 1, sides: 12)
  end

  it "has starting_money of 2d4 * 10" do
    expect(Class.starting_money(subject)).to be :>, 19
    expect(Class.starting_money(subject)).to be :<, 81
  end
end
