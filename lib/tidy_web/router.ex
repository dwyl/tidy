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

    live "/obj", ObjectLive.Index, :index
    live "/obj/new", ObjectLive.Index, :new
    live "/obj/:id/edit", ObjectLive.Index, :edit

    live "/obj/:id", ObjectLive.Show, :show
    live "/obj/:id/show/edit", ObjectLive.Show, :edit
  end

  # pipeline :api do
  #   plug :accepts, ["json"]
  # end
  # Other scopes may use custom stacks.
  # scope "/api", TidyWeb do
  #   pipe_through :api
  # end
end
