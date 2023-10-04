defmodule Tidy.ObjectsTest do
  use Tidy.DataCase

  alias Tidy.Objects

  describe "objects" do
    alias Tidy.Objects.Object

    import Tidy.ObjectsFixtures

    @invalid_attrs %{name: nil, status: nil, desc: nil, location: nil, color: nil, person_id: nil, owner_id: nil}

    test "list_objects/0 returns all objects" do
      object = object_fixture()
      assert Objects.list_objects() == [object]
    end

    test "get_object!/1 returns the object with given id" do
      object = object_fixture()
      assert Objects.get_object!(object.id) == object
    end

    test "create_object/1 with valid data creates a object" do
      valid_attrs = %{name: "some name", status: 42, desc: "some desc", location: "some location", color: "some color", person_id: 42, owner_id: 42}

      assert {:ok, %Object{} = object} = Objects.create_object(valid_attrs)
      assert object.name == "some name"
      assert object.status == 42
      assert object.desc == "some desc"
      assert object.location == "some location"
      assert object.color == "some color"
      assert object.person_id == 42
      assert object.owner_id == 42
    end

    test "create_object/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Objects.create_object(@invalid_attrs)
    end

    test "update_object/2 with valid data updates the object" do
      object = object_fixture()
      update_attrs = %{name: "some updated name", status: 43, desc: "some updated desc", location: "some updated location", color: "some updated color", person_id: 43, owner_id: 43}

      assert {:ok, %Object{} = object} = Objects.update_object(object, update_attrs)
      assert object.name == "some updated name"
      assert object.status == 43
      assert object.desc == "some updated desc"
      assert object.location == "some updated location"
      assert object.color == "some updated color"
      assert object.person_id == 43
      assert object.owner_id == 43
    end

    test "update_object/2 with invalid data returns error changeset" do
      object = object_fixture()
      assert {:error, %Ecto.Changeset{}} = Objects.update_object(object, @invalid_attrs)
      assert object == Objects.get_object!(object.id)
    end

    test "delete_object/1 deletes the object" do
      object = object_fixture()
      assert {:ok, %Object{}} = Objects.delete_object(object)
      assert_raise Ecto.NoResultsError, fn -> Objects.get_object!(object.id) end
    end

    test "change_object/1 returns a object changeset" do
      object = object_fixture()
      assert %Ecto.Changeset{} = Objects.change_object(object)
    end
  end
end
