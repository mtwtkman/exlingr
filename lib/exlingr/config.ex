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
    if inspect do
      ExLingr.Store.get(@session)
    else
      nil
    end
  end

  defp inspect do
    case ExLingr.Store.get(@session) do
      [] ->
        false
      _ ->
        true
    end
  end
end
