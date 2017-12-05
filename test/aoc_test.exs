defmodule AoCTest do
  use ExUnit.Case
  doctest AoC

  test "greets the world" do
    assert AoC.hello() == :world
  end

  test "inverse captcha of 11 is 2" do
    assert AoC.Day1.reverse_captcha("11") == 2
  end

  test "inverse captcha of 1122 is 3" do
    assert AoC.Day1.reverse_captcha("1122") == 3
  end

  test "inverse captcha of 1111 is 4" do
    assert AoC.Day1.reverse_captcha("1111") == 4
  end
end
