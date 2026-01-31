defmodule GuessingGame do
  def compare(_), do: "Make a guess"
  def compare(_, :no_guess), do: "Make a guess"
  def compare(secret, guess) do
    cond do
      secret == guess -> "Correct"
      abs(secret - guess) == 1 -> "So close"
      guess > secret -> "Too high"
      true -> "Too low"
    end
  end
end
