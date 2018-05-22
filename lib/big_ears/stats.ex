defmodule BigEars.Stats do

  alias BigEars.Stats.Strategy.Statix, as: Strategy

  def initialize do
    Strategy.initialize()
  end

  def time(prefix, name, func) do
    start = :os.system_time(:microsecond)
    result = func.()
    elapsed = :os.system_time(:microsecond) - start
    Strategy.report_time(prefix, name, elapsed)
    result
  end

end
