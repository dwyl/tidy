defmodule Tidy.Repo.Migrations.CreateComments do
  use Ecto.Migration

  def change do
    create table(:comments) do
      add :obj_id, :integer
      add :person_id, :integer
      add :text, :binary

      timestamps()
    end
  end
end
