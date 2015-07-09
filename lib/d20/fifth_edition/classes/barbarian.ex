alias D20.Class

defmodule D20.FifthEdition.Class.Barbarian do
  defstruct []
end

defimpl Class, for: D20.FifthEdition.Class.Barbarian do
  def hit_dice(_), do: [1, 12]
end
