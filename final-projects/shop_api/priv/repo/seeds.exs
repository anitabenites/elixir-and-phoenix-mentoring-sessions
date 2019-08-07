# Script for populating the database. You can run it as:
#
#   docker-compose run api mix run priv/repo/seeds.exs

alias ShopApi.Managers.Product, as: ProductManager

# Create some random products
ProductManager.create_product(%{name: "Product 1", description: "Description 1", units: 10})
ProductManager.create_product(%{name: "Product 2", description: "Description 2", units: 20})
ProductManager.create_product(%{name: "Product 3", description: "Description 3", units: 30})
ProductManager.create_product(%{name: "Product 4", description: "Description 4", units: 40})
ProductManager.create_product(%{name: "Product 5", description: "Description 5", units: 50})
