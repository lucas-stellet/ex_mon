defmodule ExMon.Player do
  @moduledoc """
  Creates the ExMon player with default parameters.
  """

  @required_keys [:life, :moves, :name]
  @max_life 100

  @enforce_keys @required_keys
  defstruct @required_keys

  @doc """
  Creates a new ExMon player.
  """
  def build(name, move_rnd, move_avg, move_heal) do
    %__MODULE__{
      life: @max_life,
      moves: %{
        move_rnd: move_rnd,
        move_avg: move_avg,
        move_heal: move_heal
      },
      name: name
    }
  end
end
