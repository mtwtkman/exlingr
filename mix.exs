defmodule ExLingr.Mixfile do
  use Mix.Project

  def project do
    [app: :exlingr,
     version: "0.0.1",
     elixir: ">= 1.0.0",
     description: description,
     package: package,
     deps: deps]
  end

  # Configuration for the OTP application
  def application do
      [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [
      {:httpoison, github: "edgurgel/httpoison"},
      {:jsex, github: "talentdeficit/jsex"},
    ]
  end

  defp description do
    """
    Lingr client library for elixir.
    """
  end

  defp package do
    [ contributors: ["boku"],
      licenses: ["WTFPL"],
      links: [{"GitHub", "https://github.com/mtwtkman/exlingr"}]]
  end
end
