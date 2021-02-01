defmodule Bob do
  def hey(input) do
    cond do
      Regex.run(~r/([A-Z][a-z-,\s']+)[\.!]/, input) -> "Whatever."
      Regex.run(~r/([A-Z][a-z\s]+)\?/, input) -> "Sure."
      Regex.run(~r/([A-Z\s]+)!/, input) -> "Whoa, chill out!"
      # Regex.run(~r/([A-z'\s]+\?)/, input)
       # "Does this cryogenic chamber make me look fat?") == "Sure."

      true -> raise "That's not how this works. That's not how any of this works!"
    end
  end
end
# ([A-Z]([a-z]*-*[a-z]+-*))
