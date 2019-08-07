defmodule ShopApi.Endpoint do
  use Plug.Router

  use Plug.ErrorHandler

  alias ShopApi.Managers.Product, as: ProductManager

  plug(:match)
  plug(Plug.Parsers, parsers: [:json], json_decoder: Jason)
  plug(:dispatch)

  # Endpoint to make a ping request to the API
  get "/ping" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, Jason.encode!(%{:message => "Pong!"}))
  end

  # Endpoint to get a list of all our products
  get "/products" do
    case ProductManager.list_products() do
      products = [_ | _] ->
        conn
        |> put_resp_content_type("application/json")
        |> send_resp(200, Jason.encode!(products))

      _ ->
        conn
        |> put_resp_content_type("application/json")
        |> send_resp(500, Jason.encode!(%{:message => "No products found."}))
    end
  end

  # A catchall route, 'match' will match no matter the request method,
  # so a response is always returned, even if there is no route to match.
  match _ do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(
      404,
      Jason.encode!(%{:message => "Endpoint not found!!!"})
    )
  end

  defp handle_errors(conn, %{kind: _kind, reason: _reason, stack: _stack}) do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(conn.status, Jason.encode!(%{:message => "Unexpected error :("}))
  end
end
