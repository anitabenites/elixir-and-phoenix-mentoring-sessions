defmodule ShopApi.Repo do
  use Ecto.Repo,
    otp_app: :shop_api,
    adapter: Ecto.Adapters.Postgres
end
