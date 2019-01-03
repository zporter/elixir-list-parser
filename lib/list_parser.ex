defmodule ListParser do
  @moduledoc """
  Documentation for ListParser.
  """

  @doc """
  Parses a string as an Elixir List.

  ## Examples

      iex> ListParser.parse("[:foo, [1], [:bar, [2, 3]]]")
      [:foo, [1], [:bar, [2, 3]]]

  """
  def parse(_str) do
    :world
  end
end
