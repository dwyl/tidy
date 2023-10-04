defmodule Tidy.Objects.Object do
  use Ecto.Schema
  import Ecto.Changeset

  schema "objects" do
    field :name, :binary
    field :status, :integer
    field :desc, :binary
    field :location, :binary
    field :color, :binary
    field :person_id, :integer
    field :owner_id, :integer

    timestamps()
  end

  @doc false
  def changeset(object, attrs) do
    object
    |> cast(attrs, [:name, :desc, :color, :person_id, :owner_id, :location, :status])
    |> validate_required([:name, :desc, :color, :person_id, :owner_id, :location, :status])
  end
end
