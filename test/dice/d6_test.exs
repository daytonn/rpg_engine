defmodule D20.Dice.D6.Test do
  use ExSpec, async: true

  describe "roll" do
    it "returns a number between 1 and 6" do
      roll = D20.Dice.D6.roll
      assert roll > 0
      assert roll < 7
    end
  end

  describe "rolls" do
    it "returns an array of rolls between 1 and 6" do
      rolls = D20.Dice.D6.rolls(2)
      [first, second] = rolls

      assert [_, _] = rolls

      assert first > 0
      assert first < 7

      assert second > 0
      assert second < 7
    end
  end
end
