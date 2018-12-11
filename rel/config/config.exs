use Mix.Config

config :distillery_configuration, DistilleryConfiguration.Repo,
  username: "postgres",
  password: "",
  database: "distillery_configuration_prod",
  pool_size: String.to_integer(System.get_env("POOL") || "15")
