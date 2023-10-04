defmodule Tidy.Image do
  use Ecto.Schema
  import Ecto.Changeset

  schema "images" do
    field :url, :binary
    field :obj_id, :integer
    field :person_id, :integer

    timestamps()
  end

  @doc false
  def changeset(image, attrs) do
    image
    |> cast(attrs, [:obj_id, :person_id, :url])
    |> validate_required([:obj_id, :person_id, :url])
  end
end
