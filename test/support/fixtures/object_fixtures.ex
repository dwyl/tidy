defmodule Tidy.ObjectFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Tidy.Objects` context.
  """

  @doc """
  Generate a object.
  """
  def object_fixture(attrs \\ %{}) do
    {:ok, object} =
      attrs
      |> Enum.into(%{
        name: "some name",
        status: 42,
        desc: "some desc",
        location: "some location",
        color: "some color",
        person_id: 42,
        owner_id: 42
      })
      |> Tidy.Object.create_object()

    object
  end
end
