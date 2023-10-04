defmodule TidyWeb.CommentTest do
  use Tidy.DataCase
  alias Tidy.Comment

  describe "comments" do
    @valid_attrs %{obj_id: 1, person_id: 1, text: "Candles on the kitchen counter"}

    test "create_comment/1 with valid data creates an comment" do
      assert {:ok, %Comment{} = com} = Comment.create_comment(@valid_attrs)
      assert com.text == @valid_attrs.text
    end
  end
end
