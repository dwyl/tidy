defmodule Tidy.Comment do
  use Ecto.Schema
  import Ecto.Changeset

  schema "comments" do
    field :text, :binary
    field :obj_id, :integer
    field :person_id, :integer

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:obj_id, :person_id, :text])
    |> validate_required([:obj_id, :person_id, :text])
  end
end
