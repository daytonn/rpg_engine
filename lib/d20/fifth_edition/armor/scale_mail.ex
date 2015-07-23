defmodule D20.FifthEdition.Armor.ScaleMail do
  defstruct [
    type: "Medium",
    name: "Scale mail",
    cost: 5000,
    armor_class: 14,
    dex_modifier: true,
    max_dex_modifier: 2,
    stealth: "Disadvantage",
    weight: 45
  ]
end
