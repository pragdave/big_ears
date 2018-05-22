defmodule BigEars do

  @moduledoc """
  Statistics and log message gathering for toytown.

  This code is used automatically by components to gather information on
  requests. However, you can also use it in your own code.

      defmodule MyComponent do

        use BigEars

        def do_something(p1, p2) do
          BigEars.time(:do_something, fn ->
            # amzing code goes here
          end)
        end

      end

  If using it outside of a component, you'll need to remember to call

      BigEars.initialize()

  """

  def initialize() do
    BigEars.Stats.initialize()
  end

  defmacro __using__(args) do
    BigEars.Setup.insinuate(args)
  end

  defmacro time(name, func) do
    quote(bind_quoted: [ name: name, func: func ]) do
      BigEars.Stats.time(@big_ears_prefix, name, func)
    end
  end
end
