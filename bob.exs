defmodule Bob do
  def hey(input) do
    cond do
      Regex.match?(~r/[\d]+$/, input) -> "Whatever."
      Regex.match?(~r/([A-Z][a-z-,\s'?]+)[\.!]/, input) -> "Whatever."
      Regex.match?(~r/((([A-Z][a-z\s]+)\?)|(\d+\?))/, input) -> "Sure."
      Regex.match?(~r/([A-Z\s'0-9]+)\?/, input) -> "Calm down, I know what I'm doing!"
      Regex.match?(~r/(([^a-z][^?\s{2}])|[^\x00-\x7F]+)/, input) -> "Whoa, chill out!"
      Regex.match?(~r/(\s{0,2})/, input) -> "Fine. Be that way!"
      true -> raise "That's not how this works. That's not how any of this works!"
    end
  end
end
