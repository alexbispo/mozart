defmodule MozartWeb.PageController do
  use MozartWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
