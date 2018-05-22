defmodule BigEars.Setup do

  @doc """
  This function handles the `use BigEars` macro.
  """
  def insinuate(args) do
    prefix = Keyword.get(args, :prefix, nil)

    quote do
      @big_ears_prefix (unquote(prefix) || Macro.underscore(__MODULE__))
    end

  end
end
