defmodule ExMon.Game.Status do
  alias ExMon.Game
  @moduledoc false
  def print_round_message do
    IO.puts("\n===== The game is started! ===== \n")
    IO.inspect(Game.info())
    IO.puts("\n================================ \n")
  end
end
