defmodule ExLingr.Store do
  @moduledoc """
  Stores the configuration info.
  """

  # @ets_table has `username`, `password`, `session`.
  @ets_table :exlingr_settings

  @doc """
  Initialize configuration table.
  """
  def setup do
    if :ets.info(@ets_table) == :undefined do
      :ets.new(@ets_table, [:set, :public, :named_table])
      :ok
    end
  end

  @doc """
  Getting setting value for specified key.
  """
  def get(key) do
    setup
    :ets.lookup(@ets_table, key)[key]
  end

  @doc """
  Setting setting value for specified key.
  """
  def set(key, value) do
    setup
    :ets.insert(@ets_table, {key, value})
    :ok
  end
end
