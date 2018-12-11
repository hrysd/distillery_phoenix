use Mix.Config

config :distillery_phoenix, DistilleryPhoenix.Repo,
  username: "postgres",
  password: "",
  database: "distillery_phoenix_prod",
  pool_size: String.to_integer(System.get_env("POOL") || "15")
