################################
# App coded by Nick West       #
# Email Nick at mail@nickwe.st #
################################

# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :myApi,
  ecto_repos: [MyApi.Repo]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Configures the endpoint
config :myApi, MyApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PO3ZKkBwrRP5Sv9oj3j0umALhTkcLs4MdqmTC8TKZmlpa3FBv2ZnwNacozYoZbnj",
  render_errors: [view: MyApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: MyApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Guardian config
config :myApi, MyApi.Guardian,
       issuer: "myApi",
       secret_key: "aSfdTO9toyeHzWw4yKF+sjDzu6LDX0FCy+Wa34A0AEYd+zNB9sXu7Sv+Z9REyI2Q"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
