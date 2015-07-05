defmodule D20.Dice.D6.Test do
  use ESpec

  describe "roll" do
    subject D20.Dice.D6.roll

    it "returns a number between 1 and 6" do
      expect(subject).to be :>, 0
      expect(subject).to be :<, 7
    end
  end

  describe "rolls" do
    subject D20.Dice.D6.rolls(2)

    it "returns an array of rolls between 1 and 6" do
      [first, second] = subject

      expect(subject).to have_count(2)
      expect(first).to be :>, 0
      expect(first).to be :<, 7
      expect(second).to be :>, 0
      expect(second).to be :<, 7
    end
  end
end
