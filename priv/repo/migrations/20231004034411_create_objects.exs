defmodule Tidy.Repo.Migrations.CreateObjects do
  use Ecto.Migration

  def change do
    create table(:objects) do
      add :name, :binary
      add :desc, :binary
      add :color, :binary
      add :person_id, :integer
      add :owner_id, :integer
      add :location, :binary
      add :status, :integer

      timestamps()
    end
  end
end
