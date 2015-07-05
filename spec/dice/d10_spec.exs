defmodule D20.Dice.D10.Test do
  use ESpec

  describe "roll/0" do
    subject D20.Dice.D10.roll

    it "returns a number between 1 and 10" do
      expect(subject).to be :>, 0
      expect(subject).to be :<, 11
    end
  end

  describe "rolls/1" do
    subject D20.Dice.D10.rolls(2)

    it "returns an array of rolls between 1 and 10" do
      [first, second] = subject

      expect(subject).to have_count(2)
      expect(first).to be :>, 0
      expect(first).to be :<, 11
      expect(second).to be :>, 0
      expect(second).to be :<, 11
    end
  end
end
