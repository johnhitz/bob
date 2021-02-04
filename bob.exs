defmodule Bob do
  def hey(input) do
    cond do
      String.strip(input) == "" -> "Fine. Be that way!"
      String.contains?(input, ["0", "1", "2", "3", "4"]) -> string_with_numbers(input)
      String.upcase(input) == input && String.contains?(input, "?") -> "Calm down, I know what I'm doing!"
      String.upcase(input) == input -> "Whoa, chill out!"
      String.contains?(input, [".", "!"]) -> "Whatever."
      String.contains?(input, ["?"]) -> "Sure."
      true -> raise "That's not how this works. That's not how any of this works!"
    end
  end

  defp string_with_numbers(input) do
    last = String.last(input)
    case last do
      last when last == "!" ->
        "Whoa, chill out!"
      last when last == "?" ->
        "Sure."
      _ -> "Whatever."
    end
  end
end
