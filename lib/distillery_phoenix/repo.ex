defmodule DistilleryPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :distillery_phoenix,
    adapter: Ecto.Adapters.Postgres
end
