defmodule AdventOfCode2017 do
  @moduledoc """
  Documentation for AdventOfCode2017.
  """

  @doc """
  Hello world.

  ## Examples

      iex> AdventOfCode2017.hello
      :world

  """
  def hello do
    :world
  end

  def reverse_captcha(input) when is_bitstring(input) do
    chars = [h|_t] = input
    |> String.graphemes

    pair_list = chars
    |> List.insert_at(-1, h)

    pair_list
    |> Enum.chunk_every(2, 1, :discard)
    |> Enum.reduce(0, &process_pair(&1, &2))
    
  end

  def process_pair([x, x] = _pair, acc) do
    String.to_integer(x) + acc
  end
  
  def process_pair(_pair, acc) do
    acc
  end
end
