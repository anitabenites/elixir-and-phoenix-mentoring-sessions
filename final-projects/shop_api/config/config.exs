use Mix.Config

config :shop_api, ecto_repos: [ShopApi.Repo]

config :shop_api, ShopApi.Repo,
  database: "shop_api_dev",
  username: "postgres",
  password: "postgres",
  hostname: "database",
  port: "5432"
