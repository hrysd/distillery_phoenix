use Mix.Config

config :distillery_phoenix, DistilleryPhoenix.Repo,
  url: System.get_env("DATABASE_URL"),
  pool_size: String.to_integer(System.get_env("POOL") || "15")
