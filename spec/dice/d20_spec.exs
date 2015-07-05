defmodule D20.Dice.D20.Test do
  use ESpec

  describe "roll" do
    subject D20.Dice.D20.roll

    it "returns a number between 1 and 20" do
      expect(subject).to be :>, 0
      expect(subject).to be :<, 21
    end
  end

  describe "rolls" do
    subject D20.Dice.D20.rolls(2)

    it "returns an array of rolls between 1 and 20" do
      [first, second] = subject

      expect(subject).to have_count(2)
      expect(first).to be :>, 0
      expect(first).to be :<, 21
      expect(second).to be :>, 0
      expect(second).to be :<, 21
    end
  end
end
