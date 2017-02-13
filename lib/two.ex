defmodule Day.Two do
    
    def read_number_pad(characters) when is_bitstring(characters) do
        characters
        |> String.split("\n")
        |>Enum.reduce([start: 5,numbers: []],&get_number/2)
        |> get_answer
    end

    def get_answer([start: _,numbers: numbers]) do
        numbers
    end

    def get_number("",list) do
        list
    end

    def get_number(letters,[start: start,numbers: numbers]) when is_bitstring(letters) do
        number = letters
        |>  String.split("",trim: true)
        |> Enum.reduce(start,&next_number/2)
        [start: number,numbers: numbers++[number]]
        
    end

    def next_number("R",5), do: 6
    def next_number("L",5), do: 4
    def next_number("U",5), do: 2
    def next_number("D",5), do: 8
    def next_number("R",1), do: 2
    def next_number("D",1), do: 4
    def next_number("R",2), do: 3
    def next_number("L",2), do: 1
    def next_number("D",2), do: 5
    def next_number("D",3), do: 6
    def next_number("L",3), do: 2
    def next_number("U",4), do: 1
    def next_number("R",4), do: 5
    def next_number("D",4), do: 7
    def next_number("U",6), do: 3
    def next_number("L",6), do: 5
    def next_number("D",6), do: 9
    def next_number("R",7), do: 8
    def next_number("U",7), do: 4
    def next_number("L",8), do: 7
    def next_number("R",8), do: 9
    def next_number("U",8), do: 5
    def next_number("L",9), do: 8
    def next_number("U",9), do: 6
    def next_number(_,number), do: number






end