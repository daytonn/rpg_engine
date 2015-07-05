defmodule D20.Dice.D10.Test do
  use ExSpec, async: true

  describe "roll" do
    it "returns a number between 1 and 10" do
      roll = D20.Dice.D10.roll
      assert roll > 0
      assert roll < 11
    end
  end

  describe "rolls" do
    it "returns an array of rolls between 1 and 10" do
      rolls = D20.Dice.D10.rolls(2)
      [first, second] = rolls

      assert [_, _] = rolls

      assert first > 0
      assert first < 11

      assert second > 0
      assert second < 11
    end
  end
end
