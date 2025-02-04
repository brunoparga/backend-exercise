defmodule Backend.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products, primary_key: false) do
      add :id, :varchar, primary_key: true
      add :name, :string
      add :price, :integer

      timestamps()
    end

    create unique_index(:products, [:name])
  end
end
