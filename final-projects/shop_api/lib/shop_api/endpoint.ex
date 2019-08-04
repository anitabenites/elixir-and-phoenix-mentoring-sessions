defmodule ShopApi.Endpoint do
  # More info about Plug.Router: https://hexdocs.pm/plug/Plug.Router.html
  use Plug.Router

  # More info about Plug.ErrorHandler: https://hexdocs.pm/plug/Plug.ErrorHandler.html
  use Plug.ErrorHandler

  plug(:match)

  plug(Plug.Parsers, parsers: [:json], json_decoder: Jason)

  plug(:dispatch)

  # get/3 docs: https://hexdocs.pm/plug/Plug.Router.html#get/3
  get "/ping" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Jason.encode!(%{:message => "Pong!"}))
  end
end
