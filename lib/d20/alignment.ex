defmodule D20.Alignment do
  import Enum

  @list [
    "Chaotic Evil",
    "Netrual Evil",
    "Lawful Evil",
    "Chaotic Neutral",
    "Neutral",
    "Lawful Neutral",
    "Chaotic Good",
    "Neutral Good",
    "Lawful Good"
  ]

  def list do
    @list
  end

  def list(:chaos) do
    filter(@list,
      fn(alignment) -> alignment =~ ~r/Chaotic/ end)
  end
end
