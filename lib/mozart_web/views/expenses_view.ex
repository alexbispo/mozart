defmodule MozartWeb.ExpensesView do
  use MozartWeb, :view

  def total_expenses(expenses) do
    expenses
    |> Enum.reduce(Money.new(0), fn expense, acc -> Money.add(acc, expense.amount) end)
  end

  def status(0),  do: "Pendente"
  def status(1),  do: "Pago"

  def frequency(0), do: "Casual"
  def frequency(1), do: "Mensal"

  def date_time(date_time) when date_time != nil do
    NimbleStrftime.format(date_time, "%d/%m/%Y %H:%M:%S")
  end

  def date_time(_), do: ""

end
