# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Pento.Repo.insert!(%Pento.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Pento.Catalog

products = [
  %{
    name: "Mouse Trap",
    description: "The crazy game with the trap",
    sku: 5_678_910,
    unit_price: 10.00
  },
  %{
    name: "Sorry!",
    description: "The classic slide pursuit game",
    sku: 1_234_567,
    unit_price: 3.00
  },
  %{
    name: "Monopoly",
    description: "The real state trading game",
    sku: 6_676_910,
    unit_price: 12.00
  }
]

Enum.each(products, fn product ->
  Catalog.create_product(product)
end)