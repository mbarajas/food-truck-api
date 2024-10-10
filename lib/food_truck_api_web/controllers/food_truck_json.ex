defmodule FoodTruckApiWeb.FoodTruckJSON do
  alias FoodTruckApi.FoodTrucks.FoodTruck

  @doc """
  Renders a list of food_trucks.
  """
  def index(%{food_trucks: food_trucks}) do
    %{data: for(food_truck <- food_trucks, do: data(food_truck))}
  end

  @doc """
  Renders a single food_truck.
  """
  def show(%{food_truck: food_truck}) do
    %{data: data(food_truck)}
  end

  defp data(%FoodTruck{} = food_truck) do
    %{
      id: food_truck.id,
      location_id: food_truck.location_id,
      applicant: food_truck.applicant,
      facility_type: food_truck.facility_type,
      cnn: food_truck.cnn,
      location_description: food_truck.location_description,
      address: food_truck.address,
      block_lot: food_truck.block_lot,
      block: food_truck.block,
      lot: food_truck.lot,
      permit: food_truck.permit,
      status: food_truck.status,
      food_items: food_truck.food_items,
      x: food_truck.x,
      y: food_truck.y,
      latitude: food_truck.latitude,
      longitude: food_truck.longitude,
      schedule: food_truck.schedule,
      dayshours: food_truck.dayshours,
      noisent: food_truck.noisent,
      approved: food_truck.approved,
      received: food_truck.received,
      prior_permit: food_truck.prior_permit,
      expiration_date: food_truck.expiration_date,
      location: food_truck.location,
      fire_prevention_districtrs: food_truck.fire_prevention_districtrs,
      police_districts: food_truck.police_districts,
      supervisor_districts: food_truck.supervisor_districts,
      zip_codes: food_truck.zip_codes,
      neighborhoods_old: food_truck.neighborhoods_old
    }
  end
end
