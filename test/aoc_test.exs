defmodule AoCTest do
  use ExUnit.Case

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

  test "inverse captcha of 1212 is 6 using halfway around pairing" do
    assert AoC.Day1.reverse_captcha("1212", :halfway_around) == 6
  end

  test "inverse captcha of 1221 is 0 using halfway around pairing" do
    assert AoC.Day1.reverse_captcha("1221", :halfway_around) == 0
  end

  test "inverse captcha of 123425 is 4 using halfway around pairing" do
    assert AoC.Day1.reverse_captcha("123425", :halfway_around) == 4
  end

  test "inverse captcha of 123123 is 12 using halfway around pairing" do
    assert AoC.Day1.reverse_captcha("123123", :halfway_around) == 12
  end

  test "inverse captcha of 12131415 is 4 using halfway around pairing" do
    assert AoC.Day1.reverse_captcha("12131415", :halfway_around) == 4
  end
end
