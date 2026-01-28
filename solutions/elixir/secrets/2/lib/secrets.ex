defmodule Secrets do
  def secret_add(secret), do: &(&1 + secret)
  def secret_subtract(secret), do: &(&1 - secret)
  def secret_multiply(secret), do: &(&1 * secret)
  def secret_divide(secret), do: &(div(&1, secret))
  def secret_and(secret), do: &(Bitwise.band(trunc(&1), secret))
  def secret_xor(secret), do: &(Bitwise.bxor(trunc(&1), secret))
  def secret_combine(f1, f2), do: &(f2.(f1.(&1)))
end
