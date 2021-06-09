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
end
