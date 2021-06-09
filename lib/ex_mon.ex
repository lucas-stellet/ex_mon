defmodule ExMon do
  @moduledoc """
  A turn-based game created in Elixir.
  Is possible to create an player with three movements.
  Two to attack and other to heal.
  """

  alias ExMon.{Game, Player}
  alias ExMon.Game.{Actions, Status}

  @doc """
  Creates a player giving it a name and three movements.
  These three movements are divided on 3 categories:
  random move: move_rnd
  average move: move_avg
  healing move: move_heal
  """
  def create_player(name, move_rnd, move_avg, move_heal) do
    Player.build(name, move_rnd, move_avg, move_heal)
  end

  @doc """
  Starts the game after created the player with `ExMon.create_player`.
  """
  def start_game(player) do
    "Robotinik"
    |> create_player(:punck, :kick, :heal)
    |> Game.start(player)

    Status.print_round_message()
  end

  def make_move(move) do
    move
    |> Actions.fetch_move()
    |> do_move()
  end

  defp do_move({:error, move}), do: Status.print_wrong_move_message(move)

  defp do_move({:ok, move}) do
    case move do
      :move_heal ->
        "Player has healed."

      move ->
        Actions.attack(move)
    end
  end
end
