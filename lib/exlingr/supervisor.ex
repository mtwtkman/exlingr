defmodule ExLingr.Supervisor do
  use Supervisor

  def start_link do
    Supervisor.start_link(__MODULE__, :ok)
  end

  def init(:ok) do
    children = [
      # Define workers and child supervisor to be supervised.
    ]
    supervise(children, strategy: :one_for_one)
  end
end
