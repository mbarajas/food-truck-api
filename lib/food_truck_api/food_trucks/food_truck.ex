defmodule FoodTruckApi.FoodTrucks.FoodTruck do
  use Ecto.Schema
  import Ecto.Changeset

  schema "food_trucks" do
    field :block, :string
    field :status, :string
    field :address, :string
    field :permit, :string
    field :location, :string
    field :approved, :string
    field :y, :string
    field :x, :string
    field :location_id, :string
    field :applicant, :string
    field :facility_type, :string
    field :cnn, :string
    field :location_description, :string
    field :block_lot, :string
    field :lot, :string
    field :food_items, :string
    field :latitude, :string
    field :longitude, :string
    field :schedule, :string
    field :dayshours, :string
    field :noisent, :string
    field :received, :string
    field :prior_permit, :string
    field :expiration_date, :string
    field :fire_prevention_districtrs, :string
    field :police_districts, :string
    field :supervisor_districts, :string
    field :zip_codes, :string
    field :neighborhoods_old, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(food_truck, attrs) do
    food_truck
    |> cast(attrs, [:location_id, :applicant, :facility_type, :cnn, :location_description, :address, :block_lot, :block, :lot, :permit, :status, :food_items, :x, :y, :latitude, :longitude, :schedule, :dayshours, :noisent, :approved, :received, :prior_permit, :expiration_date, :location, :fire_prevention_districtrs, :police_districts, :supervisor_districts, :zip_codes, :neighborhoods_old])
    |> validate_required([:location_id, :applicant, :facility_type, :cnn, :location_description, :address, :block_lot, :block, :lot, :permit, :status, :food_items, :x, :y, :latitude, :longitude, :schedule, :dayshours, :noisent, :approved, :received, :prior_permit, :expiration_date, :location, :fire_prevention_districtrs, :police_districts, :supervisor_districts, :zip_codes, :neighborhoods_old])
  end
end
