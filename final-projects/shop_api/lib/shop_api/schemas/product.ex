defmodule ShopApi.Schemas.Product do
  @moduledoc """
  Product schema.
  """
  use Ecto.Schema

  import Ecto.Changeset

  @derive {Jason.Encoder, only: [:id, :name, :description, :units, :inserted_at, :updated_at]}

  schema "products" do
    field(:name, :string, null: false)
    field(:description, :string)
    field(:units, :integer)

    timestamps()
  end

  @doc false
  def changeset(%__MODULE__{} = product, attrs) do
    product
    |> cast(attrs, [:name, :description, :units])
    |> validate_required([:name])
  end
end
