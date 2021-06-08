defmodule ExMon do
  @moduledoc false

  alias ExMon.{Game, Player}
  alias ExMon.Game.{Actions, Status}

  def create_player(name, move_rnd, move_avg, move_heal) do
    Player.build(name, move_rnd, move_avg, move_heal)
  end

  def start_game(player) do
    "Robotinik"
    |> create_player(:punck, :kick, :heal)
    |> Game.start(player)

    Status.print_round_message()
  end

  def make_mov(move) do
    Actions.fetch_move(move)
  end
end
