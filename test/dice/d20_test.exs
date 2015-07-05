defmodule D20.Dice.D20.Test do
  use ExSpec, async: true

  describe "roll" do
    it "returns a number between 1 and 20" do
      roll = D20.Dice.D20.roll
      assert roll > 0
      assert roll < 21
    end
  end

  describe "rolls" do
    it "returns an array of rolls between 1 and 20" do
      rolls = D20.Dice.D20.rolls(2)
      [first, second] = rolls

      assert [_, _] = rolls

      assert first > 0
      assert first < 21

      assert second > 0
      assert second < 21
    end
  end
end
