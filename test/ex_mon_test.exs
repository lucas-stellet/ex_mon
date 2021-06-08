defmodule ExMonTest do
  use ExUnit.Case, async: true

  describe "create_player/4" do
    test "should return a player when info has been given" do
      ExMon.create_player("lucas", :kick, :punch, :heal) ==
    end
  end
end
