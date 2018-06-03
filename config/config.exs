# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :learning_direct_uploading_to_s3,
  ecto_repos: [LearningDirectUploadingToS3.Repo]

# Configures the endpoint
config :learning_direct_uploading_to_s3, LearningDirectUploadingToS3Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tMUQT4Zyw4KihbX8XTV7PqKSFWyhdMTTcfKsDaeFtLgLcAPIKW6xnQ797txX/3HR",
  render_errors: [view: LearningDirectUploadingToS3Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: LearningDirectUploadingToS3.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
