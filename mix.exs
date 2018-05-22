defmodule BigEars.MixProject do
  use Mix.Project

  def project do
    [
      app:     :big_ears,
      version: "0.1.0",
      elixir:  "~> 1.6",
      deps:    deps(),
      start_permanent: Mix.env() == :prod,
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      { :statix, ">= 0.0.0" },
    ]
  end
end
