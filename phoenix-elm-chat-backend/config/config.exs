# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenixchat,
  ecto_repos: [Phoenixchat.Repo]

# Configures the endpoint
config :phoenixchat, PhoenixchatWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OaRGZ4TTGMw9DKD+vcVSiE3zuKuMqyFiuuE62VYW1Onq8tGcADIJOMOE7IANq35L",
  render_errors: [view: PhoenixchatWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Phoenixchat.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
