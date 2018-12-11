defmodule DistilleryConfiguration.Repo do
  use Ecto.Repo,
    otp_app: :distillery_configuration,
    adapter: Ecto.Adapters.Postgres
end
