defmodule Mozart.Expenses do

  @moduledoc """
  The Expenses context
  """

  alias Mozart.Expenses.Expense

  def list_expenses do
    [
      Expense.new(%{id: 1, name: "Arrendamento", amount: Money.new(68000), status: 0}),
      Expense.new(%{id: 2, name: "EDP", amount: Money.new(2000), status: 0}),
      Expense.new(%{id: 3, name: "SMAS", amount: Money.new(2100), status: 0})
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
