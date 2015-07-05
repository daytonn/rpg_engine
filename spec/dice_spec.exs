defmodule D20.DiceSpec do
  use ESpec

  describe "roll" do
    context "/0 with no arguments" do
      it "returns an empty array with no params" do
        expect(D20.Dice.roll).to eq(0)
      end
    end

    context "/1 with sides" do
      it "returns a roll between 1 and the number of sides" do
        expect(D20.Dice.roll(1)).to eq(1)
      end
    end
  end

  describe "#rolls" do
    context "/2 with sides, and count" do
      it "returns a list of rolls" do
        expect(D20.Dice.rolls(1, 1)).to eq([1])
        expect(D20.Dice.rolls(2, 1)).to eq([1, 1])
      end
    end

    context "/2 with sides and count keyword list" do
      it "returns a list of rolls" do
        expect(D20.Dice.rolls([count: 2, sides: 1])).to eq([1, 1])
      end
    end

    context "/2 with sides and count map" do
      it "returns a list of rolls" do
        expect(D20.Dice.rolls(%{count: 2, sides: 1})).to eq([1, 1])
      end
    end

    context "/2 with sides and count tuple" do
      it "returns a list of rolls" do
        expect(D20.Dice.rolls({ 2, 1 })).to eq([1, 1])
      end
    end

    context "/3 with rolls, sides, iteration" do
      it "returns a new list with another roll" do
        expect(D20.Dice.rolls([1], 2, 1)).to eq([1, 1])
      end

      it "does not return more than the count of rolls" do
        expect(D20.Dice.rolls([1,1], 2, 1)).to eq([1, 1])
      end
    end
  end
end

