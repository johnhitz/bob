defmodule Bob do
  def hey(input) do
    cond do
      Regex.run(~r/([A-Z][a-z-,\s']+)[\.!]/, input) -> "Whatever."
      Regex.run(~r/([A-Z][a-z\s]+)\?/, input) -> "Sure."
      Regex.run(~r/([A-Z\s'0-9]+)\?/, input) -> "Calm down, I know what I'm doing!"
      Regex.run(~r/([^a-z][^?])/, input) -> "Whoa, chill out!"
      true -> raise "That's not how this works. That's not how any of this works!"
    end
  end
end
