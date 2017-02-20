defmodule Voter.PageController do
  use Voter.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
