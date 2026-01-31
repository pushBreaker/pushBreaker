defmodule KitchenCalculator do
  def get_volume({_unit, volume}), do: volume

  def to_milliliter({:cup, volume}), do: {:milliliter, volume * 240.0}
  def to_milliliter({:fluid_ounce, volume}), do: {:milliliter, volume * 30.0}
  def to_milliliter({:teaspoon, volume}), do: {:milliliter, volume * 5.0}
  def to_milliliter({:tablespoon, volume}), do: {:milliliter, volume * 15.0}
  def to_milliliter({:milliliter, volume}), do: {:milliliter, volume}

  def from_milliliter({:milliliter, volume}, :cup), do: {:cup, volume / 240.0}
  def from_milliliter({:milliliter, volume}, :fluid_ounce), do: {:fluid_ounce, volume / 30.0}
  def from_milliliter({:milliliter, volume}, :teaspoon), do: {:teaspoon, volume / 5.0}
  def from_milliliter({:milliliter, volume}, :tablespoon), do: {:tablespoon, volume / 15.0}
  def from_milliliter({:milliliter, volume}, :milliliter), do: {:milliliter, volume}

  def convert({unit, _volume} = pair, target_unit) when unit == target_unit, do: pair

  def convert(pair, target_unit) do
    pair
    |> to_milliliter()
    |> from_milliliter(target_unit)
  end
end
