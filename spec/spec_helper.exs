defmodule Recur do
  def times(n, f) do
    f.(0)
    times(n, f, 1)
  end

  def times(n, f, i) when n > 2 do
    f.(i)
    times(n - 1, f, i + 1)
  end

  def times(_, f, i) do
    f.(i)
  end
end

ESpec.start

ESpec.configure fn(config) ->
	config.before fn ->
	end

	config.finally fn(__) ->
	end
end
