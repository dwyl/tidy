defmodule Tidy.Comment do
  use Ecto.Schema
  import Ecto.Changeset
  alias __MODULE__
  alias Tidy.Repo


  schema "comments" do
    field :obj_id, :integer
    field :person_id, :integer
    field :text, Fields.Encrypted

    timestamps()
  end

  @doc false
  def changeset(comment, attrs) do
    comment
    |> cast(attrs, [:obj_id, :person_id, :text])
    |> validate_required([:obj_id, :person_id, :text])
  end

  @doc """
  Creates an `image`.

  ## Examples

      iex> create_comment(%{obj_id: 1, person_id: 1, url: "Candles on the kitchen counter"})
      {:ok, %Image{}}

      iex> create_comment(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_comment(attrs \\ %{}) do
    %Comment{}
    |> Comment.changeset(attrs)
    |> Repo.insert()
  end
end
