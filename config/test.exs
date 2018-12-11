use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :distillery_phoenix, DistilleryPhoenixWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :distillery_phoenix, DistilleryPhoenix.Repo,
  username: "postgres",
  password: "postgres",
  database: "distillery_phoenix_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
