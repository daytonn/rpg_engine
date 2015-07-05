defmodule D20.Dice.D100.Test do
  use ESpec

  describe "roll/0" do
    subject D20.Dice.D100.roll

    it "returns a number between 1 and 100" do
      expect(subject).to be :>, 0
      expect(subject).to be :<, 101
    end
  end

  describe "rolls/1" do
    subject D20.Dice.D100.rolls(2)

    it "returns an array of rolls between 1 and 100" do
      [first, second] = subject

      expect(subject).to have_count(2)
      expect(first).to be :>, 0
      expect(first).to be :<, 101
      expect(second).to be :>, 0
      expect(second).to be :<, 101
    end
  end
end
