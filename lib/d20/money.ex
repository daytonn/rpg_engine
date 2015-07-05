defmodule D20.Money do
  import Enum

  def cp_to_cp(cp) do
    cp
  end

  def sp_to_cp(sp) do
    sp * 10
  end

  def ep_to_cp(ep) do
    ep * 50
  end

  def gp_to_cp(gp) do
    gp * 100
  end

  def pp_to_cp(pp) do
    pp * 1000
  end

  def silver(0) do
    0
  end

  def silver(copper) do
    copper / 10
  end

  def electrum(0) do
    0
  end

  def electrum(copper) do
    copper / 50
  end

  def gold(0) do
    0
  end

  def gold(copper) do
    copper / 100
  end

  def platinum(0) do
    0
  end

  def platinum(copper) do
    copper / 1000
  end

  def denominations do
    [pp: 1000, gp: 100, ep: 50, sp: 10, cp: 1]
  end

  def change(copper) do
    change(copper, [], :pp)
  end

  def change(copper, list, :pp) do
    change(rem(copper, 1000), list ++ [pp: div(copper, 1000)], :gp)
  end

  def change(copper, list, :gp) do
    change(rem(copper, 100), list ++ [gp: div(copper, 100)], :ep)
  end

  def change(copper, list, :ep) do
    change(rem(copper, 50), list ++ [ep: div(copper, 50)], :sp)
  end

  def change(copper, list, :sp) do
    change(rem(copper, 10), list ++ [sp: div(copper, 10)], :cp)
  end

  def change(copper, list, :cp) do
    list ++ [cp: copper]
  end

  def to_string(change) do
    change
    |> filter(fn(x) -> {_, v} = x; v > 0 end)
    |> map(fn(x) -> {k,v} = x; "#{v}#{k}" end)
    |> join(", ")
  end
end
