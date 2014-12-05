defmodule ExLingr.API.Base do
  @moduledoc """
  Provides basic and common functionalities for Lingr API.
  """

  # Endpoint
  @endpoint "http://lingr.com/api/"
  @observe  "http://lingr.com:8080/api/"

  def start do
    HTTPoison.start
  end

  @doc """
  Send API request to the Lingr server.
  """
  def request(path, query \\ []) do
    HTTPoison.get @endpoint <> path <> "?" <> query
  end

  @doc """
  Json decode wrapper.
  """
  def decode(path, query) do
    request(path, query).body |> JSX.decode!
  end
end
