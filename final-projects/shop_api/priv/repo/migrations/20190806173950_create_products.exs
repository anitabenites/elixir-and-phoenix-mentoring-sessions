defmodule ShopApi.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add(:name, :string, null: false)
      add(:description, :text)
      add(:units, :integer)

      timestamps()
    end
  end
end
