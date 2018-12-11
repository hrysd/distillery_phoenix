defmodule DistilleryConfigurationWeb.Router do
  use DistilleryConfigurationWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", DistilleryConfigurationWeb do
    pipe_through :api
  end
end
