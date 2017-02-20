# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :voter,
  ecto_repos: [Voter.Repo]

# Configures the endpoint
config :voter, Voter.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "BlbFpfDbLKhoFj2ZogoQEFHZhZLpsXNsJiMWW+PK/0B4jni2iP45MuFMsIOB0lQi",
  render_errors: [view: Voter.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Voter.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
