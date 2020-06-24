defmodule MozartWeb.ExpensesController do
  use MozartWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def new(conn, _parms) do
    render(conn, "new.html")
  end
end
