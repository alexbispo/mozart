# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mozart,
  ecto_repos: [Mozart.Repo]

# Configures the endpoint
config :mozart, MozartWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Rw++VwMVGx3nMemLaq09h7RJ1E9aCI61yoYqD8yKSGIdmSY0exzg35RxSf4S1X9h",
  render_errors: [view: MozartWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Mozart.PubSub,
  live_view: [signing_salt: "pvQr6ANv"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

config :money,
  default_currency: :EUR

config :elixir, :time_zone_database, Tzdata.TimeZoneDatabase


# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
