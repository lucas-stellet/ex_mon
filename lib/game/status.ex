defmodule ExMon.Game.Status do
  alias ExMon.Game
  @moduledoc false
  def print_round_message do
    IO.puts("\n===== The game is started! ===== \n")
    IO.inspect(Game.info())
    IO.puts("\n================================ \n")
  end

  def print_wrong_move_message(move) do
    IO.puts("\n===== Ough! Movement #{move} is invalid! ===== \n")
  end

  def print_move_message(:attack, :computer, move, damage) do
    %{life: _life, moves: _moves, name: player_name} = Map.get(Game.info(), :player)

    IO.puts(
      "\n===== Robotnik has been attacked! #{player_name}'s #{move} took him #{damage} life points. ===== \n"
    )
  end

  def print_move_message(:attack, :player, move, damage) do
    IO.puts(
      "\n===== Computer has been attacked! #{player_name}'s #{move} took him #{damage} life points. ===== \n"
    )
  end
end
