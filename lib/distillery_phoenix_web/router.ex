defmodule DistilleryPhoenixWeb.Router do
  use DistilleryPhoenixWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", DistilleryPhoenixWeb do
    pipe_through :api
  end
end
