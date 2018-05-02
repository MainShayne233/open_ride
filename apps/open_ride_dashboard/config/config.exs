# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :open_ride_dashboard,
  namespace: OpenRideDashboard

# Configures the endpoint
config :open_ride_dashboard, OpenRideDashboardWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "EqB8G/8KW4iGfkCY0fr95lCcpshJDv1F7jTukj7NPEcS2H9ZSJYSs5MUUYxGu8Qj",
  render_errors: [view: OpenRideDashboardWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: OpenRideDashboard.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
