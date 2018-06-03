defmodule LearningDirectUploadingToS3.Repo do
  use Ecto.Repo, otp_app: :learning_direct_uploading_to_s3

  @doc """
  Dynamically loads the repository url from the
  DATABASE_URL environment variable.
  """
  def init(_, opts) do
    {:ok, Keyword.put(opts, :url, System.get_env("DATABASE_URL"))}
  end
end
