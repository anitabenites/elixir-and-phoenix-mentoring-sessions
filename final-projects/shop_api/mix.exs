defmodule ShopApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :shop_api,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {ShopApi.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # EctoEnum reference: https://hexdocs.pm/ecto_enum
      {:ecto_enum, "~> 1.3"},

      # EctoSQL reference: https://hexdocs.pm/ecto_sql
      {:ecto_sql, "~> 3.1"},

      # Plug.Cowboy reference: https://hexdocs.pm/plug_cowboy
      {:plug_cowboy, "~> 2.0"},

      # Postgrex reference: https://hexdocs.pm/postgrex
      {:postgrex, "~> 0.15"},

      # Jason reference: https://hexdocs.pm/jason
      {:jason, "~> 1.1"}
    ]
  end
end
