defmodule Roller.PageController do
  use Roller.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
