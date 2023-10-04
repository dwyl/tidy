defmodule TidyWeb.Router do
  use TidyWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {TidyWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  scope "/", TidyWeb do
    pipe_through :browser

    get "/", PageController, :home

    live "/objects", ObjectLive.Index, :index
    live "/objects/new", ObjectLive.Index, :new
    live "/objects/:id/edit", ObjectLive.Index, :edit

    live "/objects/:id", ObjectLive.Show, :show
    live "/objects/:id/show/edit", ObjectLive.Show, :edit
  end



   # pipeline :api do
  #   plug :accepts, ["json"]
  # end
  # Other scopes may use custom stacks.
  # scope "/api", TidyWeb do
  #   pipe_through :api
  # end
end
