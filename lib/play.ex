defmodule Play do
  use BigEars

  def wombat do
    BigEars.time([:my, :little, :fn], fn -> :timer.sleep(3000) end)
  end
end
