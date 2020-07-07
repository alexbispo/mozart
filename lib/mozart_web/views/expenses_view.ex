defmodule MozartWeb.ExpensesView do
  use MozartWeb, :view

  def total_expenses(expenses) do
    expenses
    |> Enum.reduce(Money.new(0), fn expense, acc -> Money.add(acc, expense.amount) end)
  end

  def status(0),  do: "Pendente"
  def status(1),  do: "Pago"

  def frequency(0), do: "Aleatório"
  def frequency(1), do: "Mensal"

  def date_time(date_time) when date_time != nil do
    "#{date_time.day}/#{date_time.month}/#{date_time.year}/#{date_time.hour}:#{date_time.second}"
  end

  def date_time(_), do: ""

end
