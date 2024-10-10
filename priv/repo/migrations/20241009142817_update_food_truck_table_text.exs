defmodule FoodTruckApi.Repo.Migrations.UpdateFoodTruckTableText do
  use Ecto.Migration

  def change do
    alter table(:food_trucks) do
      modify :food_items, :text
    end
  end
end
