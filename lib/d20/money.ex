defmodule D20.Money do
  import Enum

  def cp_to_cp(cp), do: cp
  def sp_to_cp(sp), do: sp * 10
  def ep_to_cp(ep), do: ep * 50
  def gp_to_cp(gp), do: gp * 100
  def pp_to_cp(pp), do: pp * 1000
  def silver(0), do: 0
  def silver(copper), do: copper / 10
  def electrum(0), do: 0
  def electrum(copper), do: copper / 50
  def gold(0), do: 0
  def gold(copper), do: copper / 100
  def platinum(0), do: 0
  def platinum(copper), do: copper / 1000

  def change(copper) do
    denominations = [pp: 1000, gp: 100, ep: 50, sp: 10, cp: 1]
    {change_list, _} = map_reduce(denominations, copper, fn(denomination, acc) ->
      {k, v} = denomination
      {{k, div(acc, v)}, rem(acc, v)}
    end)
    change_list
  end

  def to_string(change) do
    change
    |> filter(fn(x) -> {_, v} = x; v > 0 end)
    |> map(fn(x) -> {k,v} = x; "#{v}#{k}" end)
    |> join(", ")
  end
end
