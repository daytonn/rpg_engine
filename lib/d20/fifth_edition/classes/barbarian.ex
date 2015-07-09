alias D20.Class

defmodule D20.FifthEdition.Class.Barbarian do
  defstruct []
end

defimpl Class, for: D20.FifthEdition.Class.Barbarian do
  import Enum
  alias D20.Dice

  def hit_dice(_), do: [count: 1, sides: 12]
  def starting_money(_) do
    sum(Dice.rolls(count: 2, sides: 4)) * 10
  end
end
