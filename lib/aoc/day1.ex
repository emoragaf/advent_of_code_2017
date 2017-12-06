defmodule AoC.Day1 do
  alias AoC.Day1.HalfwayAround, as: HA
  alias AoC.Day1.Consecutive, as: C

  def reverse_captcha(input, method \\ :consecutive)
  def reverse_captcha(input, :consecutive) when is_bitstring(input) do
    do_reverse_captcha(input, &C.pair/1)
  end

  def reverse_captcha(input, :halfway_around) when is_bitstring(input) do
    do_reverse_captcha(input, &HA.pair/1)
  end

  defp do_reverse_captcha(input, transformation) do
    input
    |> String.graphemes 
    |> transformation.()
    |> Enum.reduce(0, &process_pair(&1, &2))
  end

  defp process_pair([x, x] = _pair, acc) do
    String.to_integer(x) + acc
  end
  
  defp process_pair(_pair, acc) do
    acc
  end
end

defmodule AoC.Day1.HalfwayAround do
  def pair(list) do
    list
    |> split_list
    |> make_pairs
    
  end

  defp split_list(list) do
    count = div(Enum.count(list), 2)
    list
    |> Enum.split(count)
  end

  defp make_pairs({l1, l2} = _lists) do
    pairs1 = Enum.zip(l1, l2)
    pairs2 = Enum.zip(l2, l1)
    List.flatten(pairs1, pairs2)
    |> Enum.map(fn {x, y} -> [x, y] end)
  end
end

defmodule AoC.Day1.Consecutive do
  def pair(list) do
    list
    |> append_first_number
    |> Enum.chunk_every(2, 1, :discard)
  end

  defp append_first_number([h|_t] = list) do
    list
    |> List.insert_at(-1, h)
  end
end
