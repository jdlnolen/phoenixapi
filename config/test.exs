use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :trading_api, TradingApi.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :trading_api, TradingApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "trading_api_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
