defmodule ExMon.Game.Actions.Attack do
  @moduledoc false

  alias ExMon.Game.{Status}

  @move_avg_power 18..25
  @move_rnd_power 10..35

  def attack_opponent(opponent, move) do
    damage = calculate_power(move)

    opponent
    |> Game.fetch_player()
    |> Map.get(:life)
    |> calculate_total_life(damage)
    |> update_opponent_life(opponent, damage)

    Status.print_move_message(:attack, opponent, damage)
  end

  defp calculate_power(:move_avg), do: Enum.random(@move_avg_power)

  defp calculate_power(:move_rnd), do: Enum.random(@move_rnd_power)

  defp calculate_total_life(life, damage) when life - damage < 0, do: 0
  defp calculate_total_life(life, damage), do: life - damage

  defp update_opponent_life(life, opponent) do
    opponent
    |> Game.fetch_player()
    |> Map.put(:life, life)
    |> update_game(opponent)
  end

  def update_game(player, opponent) do
    Game.info()
    |> Map.put(opponent, player)
    |> Game.update()
  end
end
