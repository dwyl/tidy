defmodule Tidy.Object do
  use Ecto.Schema
  import Ecto.Changeset
  import Ecto.Query, warn: false
  alias __MODULE__
  alias Tidy.Repo

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

  @doc """
  Returns the list of objects.

  ## Examples

      iex> list_objects()
      [%Object{}, ...]

  """
  def list_objects do
    Repo.all(Object)
  end

  @doc """
  Gets a single object.

  Raises `Ecto.NoResultsError` if the Object does not exist.

  ## Examples

      iex> get_object!(123)
      %Object{}

      iex> get_object!(456)
      ** (Ecto.NoResultsError)

  """
  def get_object!(id), do: Repo.get!(Object, id)

  @doc """
  Creates a object.

  ## Examples

      iex> create_object(%{field: value})
      {:ok, %Object{}}

      iex> create_object(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_object(attrs \\ %{}) do
    %Object{}
    |> Object.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a object.

  ## Examples

      iex> update_object(object, %{field: new_value})
      {:ok, %Object{}}

      iex> update_object(object, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_object(%Object{} = object, attrs) do
    object
    |> Object.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a object.

  ## Examples

      iex> delete_object(object)
      {:ok, %Object{}}

      iex> delete_object(object)
      {:error, %Ecto.Changeset{}}

  """
  def delete_object(%Object{} = object) do
    Repo.delete(object)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking object changes.

  ## Examples

      iex> change_object(object)
      %Ecto.Changeset{data: %Object{}}

  """
  def change_object(%Object{} = object, attrs \\ %{}) do
    Object.changeset(object, attrs)
  end
end
