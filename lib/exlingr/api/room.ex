defmodule ExLingr.API.Room do
  @moduledoc """
  Provides room API interfaces.
  """

  # Room
  @room_show         "room/show"
  @room_get_archives "room/get_archives"
  @room_subscribe    "room/subscribe"
  @room_unsubscribe  "room/unsubscribe"
  @room_say          "room/say"

  @doc """
  Show room list.
  Access to `room/show` with session, room.
  """
  def show_room(room) do
    query = URI.encode_query(%{"session" => ExLingr.Config.get, "room" => room})
    ExLingr.API.Base.decode(@room_show, query)
  end

  @doc """
  Get archives from specified room.
  Access to `room/get_archives` with session, room, before, limit.
  * before means "max message ID"
  """
  def get_archives(room, before, limit) do
    query = URI.encode_query(%{"session" => ExLingr.Config.get, "room" => room, "before" => before, "limit" => limit})
    ExLingr.API.Base.decode(@room_get_archives, query)
  end

  @doc """
  Subscribe on.
  Access to `room/subscribe` with session, room, reset.
  """
  def subscribe(room, reset \\ true) do
    query = URI.encode_query(%{"session" => ExLingr.Config.get, "room" => room, "reset" => reset})
    ExLingr.API.Base.decode(@room_subscribe, query)
  end

  @doc """
  Subscribe off.
  Access to `room/unsubscribe` with session, room.
  """
  def unsubscribe(room) do
    query = URI.encode_query(%{"session" => ExLingr.Config.get, "room" => room})
    ExLingr.API.Base.decode(@room_unsubscribe, query)
  end

  @doc """
  Post to specified room.
  Access to `room/say` with session, room, nickname, text.
  """
  def say(room, nickname, text) do
    query = URI.encode_query(%{"session" => ExLingr.Config.get, "room" => room, "nickname" => nickname, "text" => text})
    ExLingr.API.Base.decode(@room_say, query)
  end
end
