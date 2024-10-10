defmodule FoodTruckApi.Repo.Migrations.UpdateFoodTruckTableStrings do
  use Ecto.Migration

  def change do
    alter table(:food_trucks) do
      modify :x, :string
      modify :y, :string
      modify :latitude, :string
      modify :longitude, :string
      modify :approved, :string
      modify :expiration_date, :string
      modify :fire_prevention_districtrs, :string
      modify :police_districts, :string
      modify :supervisor_districts, :string
      modify :zip_codes, :string
      modify :neighborhoods_old, :string
    end
  end
end
