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
      add :food_items, :text
      add :x, :string
      add :y, :string
      add :latitude, :string
      add :longitude, :string
      add :schedule, :string
      add :dayshours, :string
      add :noisent, :string
      add :approved, :string
      add :received, :string
      add :prior_permit, :string
      add :expiration_date, :string
      add :location, :string
      add :fire_prevention_districtrs, :string
      add :police_districts, :string
      add :supervisor_districts, :string
      add :zip_codes, :string
      add :neighborhoods_old, :string

      timestamps(type: :utc_datetime)
    end
  end
end
