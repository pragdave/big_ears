defmodule BigEars.Stats.Strategy.Statix do

  use Statix

  def initialize() do
    __MODULE__.connect()
  end

  def report_time(prefix, name, elapsed) do
    IO.inspect [ "report_time", prefix, name, elapsed ]
    __MODULE__.timing(stat_name(prefix, name), elapsed)
  end


  #TODO: optimize this. Maybe cache?

  defp stat_name(prefix, names) when is_list(names) do
    stat_name(prefix, join(names))
  end

  defp stat_name(prefix, name) when is_binary(name) do
    join(prefix, name)
  end

  defp join(n1, n2), do: "#{n1}.#{n2}"
  defp join(names),  do: Enum.join(names, ".")


end
