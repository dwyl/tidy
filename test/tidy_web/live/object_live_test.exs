defmodule TidyWeb.ObjectLiveTest do
  use TidyWeb.ConnCase

  import Phoenix.LiveViewTest
  import Tidy.ObjectsFixtures

  @create_attrs %{name: "some name", status: 42, desc: "some desc", location: "some location", color: "some color", person_id: 42, owner_id: 42}
  @update_attrs %{name: "some updated name", status: 43, desc: "some updated desc", location: "some updated location", color: "some updated color", person_id: 43, owner_id: 43}
  @invalid_attrs %{name: nil, status: nil, desc: nil, location: nil, color: nil, person_id: nil, owner_id: nil}

  defp create_object(_) do
    object = object_fixture()
    %{object: object}
  end

  describe "Index" do
    setup [:create_object]

    test "lists all objects", %{conn: conn} do
      {:ok, _index_live, html} = live(conn, ~p"/objects")

      assert html =~ "Listing Objects"
    end

    test "saves new object", %{conn: conn} do
      {:ok, index_live, _html} = live(conn, ~p"/objects")

      assert index_live |> element("a", "New Object") |> render_click() =~
               "New Object"

      assert_patch(index_live, ~p"/objects/new")

      assert index_live
             |> form("#object-form", object: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert index_live
             |> form("#object-form", object: @create_attrs)
             |> render_submit()

      assert_patch(index_live, ~p"/objects")

      html = render(index_live)
      assert html =~ "Object created successfully"
    end

    test "updates object in listing", %{conn: conn, object: object} do
      {:ok, index_live, _html} = live(conn, ~p"/objects")

      assert index_live |> element("#objects-#{object.id} a", "Edit") |> render_click() =~
               "Edit Object"

      assert_patch(index_live, ~p"/objects/#{object}/edit")

      assert index_live
             |> form("#object-form", object: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert index_live
             |> form("#object-form", object: @update_attrs)
             |> render_submit()

      assert_patch(index_live, ~p"/objects")

      html = render(index_live)
      assert html =~ "Object updated successfully"
    end

    test "deletes object in listing", %{conn: conn, object: object} do
      {:ok, index_live, _html} = live(conn, ~p"/objects")

      assert index_live |> element("#objects-#{object.id} a", "Delete") |> render_click()
      refute has_element?(index_live, "#objects-#{object.id}")
    end
  end

  describe "Show" do
    setup [:create_object]

    test "displays object", %{conn: conn, object: object} do
      {:ok, _show_live, html} = live(conn, ~p"/objects/#{object}")

      assert html =~ "Show Object"
    end

    test "updates object within modal", %{conn: conn, object: object} do
      {:ok, show_live, _html} = live(conn, ~p"/objects/#{object}")

      assert show_live |> element("a", "Edit") |> render_click() =~
               "Edit Object"

      assert_patch(show_live, ~p"/objects/#{object}/show/edit")

      assert show_live
             |> form("#object-form", object: @invalid_attrs)
             |> render_change() =~ "can&#39;t be blank"

      assert show_live
             |> form("#object-form", object: @update_attrs)
             |> render_submit()

      assert_patch(show_live, ~p"/objects/#{object}")

      html = render(show_live)
      assert html =~ "Object updated successfully"
    end
  end
end
