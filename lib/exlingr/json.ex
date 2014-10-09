defmodule ExLingr.JSON do
  @moduledoc """
  Provides JSON decode functions.
  """

  @doc """
  Decode json string.
  """
  def decode(json) do
    JSEX.decode(json)
  end
end
