defmodule Mozart.Expenses do

  @moduledoc """
  The Expenses context
  """

  alias Mozart.Expenses.Expense

  def list_expenses do
    {:ok, due_date_one, _} = DateTime.from_iso8601("2020-07-01T23:59:00Z")
    [
      %Expense{id: 1, name: "Arrendamento", amount: Money.new(68000), status: 1, frequency: 1, due_date: due_date_one },
      %Expense{id: 2, name: "EDP", amount: Money.new(2000)},
      %Expense{id: 3, name: "SMAS", amount: Money.new(2100)}
    ]
  end

  def get_expense(id) do
    Enum.find(list_expenses(), fn expense -> expense.id == id end)
  end

  def get_expense_by(params) do
    Enum.find(list_expenses(), fn expense ->
      Enum.all?(params, fn {key, val} -> Map.get(expense, key) == val end)
    end)
  end

end
