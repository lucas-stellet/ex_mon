defmodule ExMon.Game do
  @moduledoc false
  use Agent

  @module_name __MODULE__

  def start(computer, player) do
    initial_value = %{computer: computer, player: player, turn: :player, status: :started}

    Agent.start_link(fn -> initial_value end, name: @module_name)
  end

  def info do
    Agent.get(@module_name, & &1)
  end

  def player, do: Map.get(info(), :player)
end
