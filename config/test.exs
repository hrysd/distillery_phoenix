use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :distillery_configuration, DistilleryConfigurationWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :distillery_configuration, DistilleryConfiguration.Repo,
  username: "postgres",
  password: "postgres",
  database: "distillery_configuration_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
