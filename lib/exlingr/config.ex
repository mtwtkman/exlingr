defmodule ExLingr.Config do
  @moduledoc """
  Provides login configure settings.
  """
  @session :exlingr_session

  def start do
    ExLingr.Store.set(@session, [])
  end

  @doc """
  Set login configuration values.
  """
  def set(values) do
    ExLingr.Store.set(@session, values)
  end

  @doc """
  Get login configuration values.
  """
  def get do
    ExLingr.Store.get(@session)
  end

  @doc """
  Get login configuration values in tuple format.
  """
  def get_tuples do
    ExLingr.Config.get |> Enum.map(fn ({k, v}) -> {k, to_char_list(v)} end)
  end
end
