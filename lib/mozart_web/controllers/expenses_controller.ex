defmodule MozartWeb.ExpensesController do
  use MozartWeb, :controller

  alias Mozart.Expenses

  def index(conn, _params) do
    expenses = Expenses.list_expenses()
    render(conn, "index.html", expenses: expenses)
  end

  def new(conn, _parms) do
    render(conn, "new.html")
  end
end
