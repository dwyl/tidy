defmodule Tidy.Image do
  use Ecto.Schema
  import Ecto.Changeset
  alias __MODULE__
  alias Tidy.Repo

  schema "images" do
    field :url, Fields.UrlEncrypted
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

  @doc """
  Creates an `image`.

  ## Examples

      iex> create_image(%{obj_id: 1, person_id: 1, url: "imgur.com/gallery/odNLFdO"})
      {:ok, %Image{}}

      iex> create_image(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_image(attrs \\ %{}) do
    %Image{}
    |> Image.changeset(attrs)
    |> Repo.insert()
  end
end
