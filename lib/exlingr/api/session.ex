defmodule ExLingr.API.Session do
  @moduledoc """
  Provides session API interfaces.
  """

  @session_create    "session/create"
  @session_verify    "session/verify"
  @session_destroy   "session/destroy"

  @doc """
  Create session.
  Access to `session/create` with username, password.
  """
  def create_session(username, password) do
    query = URI.encode_query(%{"user" => username, "password" => password})
    json = ExLingr.API.Base.decode(@session_create, query)
    ExLingr.Config.set(json["session"])
    json
  end

  @doc """
  Verify session.
  Access to `session/verify` with session.
  """
  def verify_session do
    query = URI.encode_query(%{"session" => ExLingr.Config.get})
    ExLingr.API.Base.decode(@session_verify, query)
  end

  @doc """
  Destroy session.
  Access to `session/destroy` with session.
  """
  def destroy_session do
    if ExLingr.Config.get do
      query = URI.encode_query(%{"session" => ExLingr.Config.get})
      json = ExLingr.API.Base.decode(@session_destroy, query)
      ExLingr.Config.set(nil)
      json
    else
      nil
    end
  end
end
