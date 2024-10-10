defmodule FoodTruckApi.Repo.Migrations.UpdateFoodTruckTable do
  use Ecto.Migration

  def change do
    alter table(:food_trucks) do
      modify :x, :decimal
      modify :y, :decimal
    end

  end
end
