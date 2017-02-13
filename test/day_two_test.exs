defmodule Day.TwoTest do
    use ExUnit.Case
    doctest Day.Two

    test "Day two" do
        IO.inspect Day.Two.read_number_pad"""
ULL
RRDDD
LURDL
UUUUD
"""
    end
    
end