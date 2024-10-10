defmodule FoodTruckApi.Repo.Migrations.CreateFoodTrucks do
  use Ecto.Migration

  def change do
    create table(:food_trucks) do
      add :location_id, :string
      add :applicant, :string
      add :facility_type, :string
      add :cnn, :string
      add :location_description, :string
      add :address, :string
      add :block_lot, :string
      add :block, :string
      add :lot, :string
      add :permit, :string
      add :status, :string
      add :food_items, :string
      add :x, :integer
      add :y, :integer
      add :latitude, :decimal
      add :longitude, :decimal
      add :schedule, :string
      add :dayshours, :string
      add :noisent, :string
      add :approved, :naive_datetime
      add :received, :string
      add :prior_permit, :string
      add :expiration_date, :naive_datetime
      add :location, :string
      add :fire_prevention_districtrs, :integer
      add :police_districts, :integer
      add :supervisor_districts, :integer
      add :zip_codes, :integer
      add :neighborhoods_old, :integer

      timestamps(type: :utc_datetime)
    end
  end
end
