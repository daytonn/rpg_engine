defmodule D20.Dice.D100.Test do
  use ExSpec, async: true

  describe "roll" do
    it "returns a number between 1 and 100" do
      roll = D20.Dice.D100.roll
      assert roll > 0
      assert roll < 101
    end
  end

  describe "rolls" do
    it "returns an array of rolls between 1 and 100" do
      rolls = D20.Dice.D100.rolls(2)
      [first, second] = rolls

      assert [_, _] = rolls

      assert first > 0
      assert first < 101

      assert second > 0
      assert second < 101
    end
  end
end
