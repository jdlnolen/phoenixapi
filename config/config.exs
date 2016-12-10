# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :trading_api,
  ecto_repos: [TradingApi.Repo]

# Configures the endpoint
config :trading_api, TradingApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "o8fd3EhZWk6MzPXyMTXTfGsji2qxM6RPF/7kgIYGIHAx9uNeoqdzRmw//dyF1fSW",
  render_errors: [view: TradingApi.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TradingApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
