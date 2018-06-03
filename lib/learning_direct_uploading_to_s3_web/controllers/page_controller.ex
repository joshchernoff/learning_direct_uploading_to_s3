defmodule LearningDirectUploadingToS3Web.PageController do
  use LearningDirectUploadingToS3Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
