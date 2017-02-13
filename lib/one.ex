defmodule Day.One do



    def read(characters) when is_binary(characters) do
        String.replace(characters,"\n","")
        |> String.split(", ",trim: true)
        |> Enum.reduce([x: 0,y: 0,dir: "N"],&count/2)
        |> answer
    end

    defp answer([x: x, y: y,dir: _]) do
        abs(x)+abs(y)
    end

    defp count(<<"R", steps::binary>>, [x: x,y: y,dir: "N"]), do: [x: x+(steps|> clean_steps), y: y,dir: "E"]
    defp count(<<"R", steps::binary>>, [x: x,y: y,dir: "S"]), do: [x: x-(steps|> clean_steps), y: y,dir: "W"]
    defp count(<<"R", steps::binary>>, [x: x,y: y,dir: "W"]), do: [x: x, y: y+(steps|> clean_steps),dir: "N"]
    defp count(<<"R", steps::binary>>, [x: x,y: y,dir: "E"]), do: [x: x, y: y-(steps|> clean_steps),dir: "S"]
    defp count(<<"L", steps::binary>>, [x: x,y: y,dir: "N"]), do: [x: x-(steps|> clean_steps), y: y,dir: "W"]
    defp count(<<"L", steps::binary>>, [x: x,y: y,dir: "S"]), do: [x: x+(steps|> clean_steps), y: y,dir: "E"]
    defp count(<<"L", steps::binary>>, [x: x,y: y,dir: "E"]), do: [x: x, y: y+(steps|> clean_steps),dir: "N"]
    defp count(<<"L", steps::binary>>, [x: x,y: y,dir: "W"]), do: [x: x, y: y-(steps|> clean_steps),dir: "S"]

    defp clean_steps(steps) do
        steps
        |> String.trim
        |> String.to_integer
    end
end
