defmodule Mozart.Expenses.Expense do

  alias Mozart.Expenses.Expense

  defstruct [:id, :name, :amount, :status]

  def new(%{id: id, name: name, amount: amount, status: status}) do
    %Expense{id: id, name: name, amount: amount, status: status}
  end
end
