defmodule ExLingr do
  use Application
  @moduledoc """
  Provides user interface for Lingr API
  Super benri -> https://gist.github.com/kumar8600/df2688b7bbc4f8fd28ba
  """

  def start(_type, _args) do
    ExLingr.Config.start
    ExLingr.API.Base.start
    ExLingr.Supervisor.start_link
  end

  # --------- Sessions ---------

  @doc """
  Provides session API interfaces.
  """
  defdelegate create_session(username, password), to: ExLingr.API.Session, as: :create_session
  defdelegate verify_session, to: ExLingr.API.Session, as: :verify_session
  defdelegate destroy_session, to: ExLingr.API.Session, as: :destroy_session

  # --------- User ---------

  @doc """
  Provides user API interface.
  """
  defdelegate get_room, to: ExLingr.API.User, as: :get_room

  # --------- Room ---------
  @doc """
  Provides room API interfaces.
  """
  defdelegate show_room(room), to: ExLingr.API.Room, as: :show_room
  defdelegate get_archives(room, before, limit), to: ExLingr.API.Room, as: :get_archives
  defdelegate subscribe(room, reset), to: ExLingr.API.Room, as: :subscribe
  defdelegate unsubscribe(room), to: ExLingr.API.Room, as: :unsubscribe
  defdelegate say(room, nickname, text), to: ExLingr.API.Room, as: :say
end
