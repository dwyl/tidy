defmodule TidyWeb.ImageTest do
  use Tidy.DataCase
  alias Tidy.Image

  describe "images" do
    @valid_image %{obj_id: 1, person_id: 1, url: "https://imgur.com/gallery/odNLFdO"}

    test "create_image/1 with valid data creates an image" do
      assert {:ok, %Image{} = image} = Image.create_image(@valid_image)
      assert image.url == @valid_image.url
    end
  end
end
