defmodule D20.Dice.D8.Test do
  use ExSpec, async: true

  describe "roll" do
    it "returns a number between 1 and 8" do
      roll = D20.Dice.D8.roll
      assert roll > 0
      assert roll < 9
    end
  end

  describe "rolls" do
    it "returns an array of rolls between 1 and 8" do
      rolls = D20.Dice.D8.rolls(2)
      [first, second] = rolls

      assert [_, _] = rolls

      assert first > 0
      assert first < 9

      assert second > 0
      assert second < 9
    end
  end
end
