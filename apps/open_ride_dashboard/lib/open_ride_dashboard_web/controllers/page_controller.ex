defmodule OpenRideDashboardWeb.PageController do
  use OpenRideDashboardWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
