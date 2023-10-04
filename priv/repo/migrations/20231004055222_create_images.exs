defmodule Tidy.Repo.Migrations.CreateImages do
  use Ecto.Migration

  def change do
    create table(:images) do
      add :obj_id, :integer
      add :person_id, :integer
      add :url, :binary

      timestamps()
    end
  end
end
