defmodule ExLingr.API.User do
  @moduledoc """
  Provides user API interface.
  """

  @user_get_rooms    "user/get_rooms"

  @doc """
  Get room.
  Access to `user/get_rooms` with session
  """
  def get_room do
    query = URI.encode_query(%{"session" => ExLingr.Config.get})
    ExLingr.API.Base.decode(@user_get_rooms, query)
  end
end
