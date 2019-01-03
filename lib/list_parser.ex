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
  def parse(str) do
    {:ok, tokens, _} =
      str
      |> to_charlist()
      |> :list_lexer.string()

    {:ok, list} = :list_parser.parse(tokens)

    list
  end
end
