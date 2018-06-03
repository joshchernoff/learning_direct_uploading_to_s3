use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :learning_direct_uploading_to_s3, LearningDirectUploadingToS3Web.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :learning_direct_uploading_to_s3, LearningDirectUploadingToS3.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "learning_direct_uploading_to_s3_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
