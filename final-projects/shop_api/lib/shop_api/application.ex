defmodule ShopApi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      ShopApi.Repo,
      Plug.Cowboy.child_spec(scheme: :http, plug: ShopApi.Endpoint, options: [port: 4040])
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ShopApi.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
