defmodule FoodTruckApi.FoodTrucksFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `FoodTruckApi.FoodTrucks` context.
  """

  @doc """
  Generate a food_truck.
  """
  def food_truck_fixture(attrs \\ %{}) do
    {:ok, food_truck} =
      attrs
      |> Enum.into(%{
        address: "some address",
        applicant: "some applicant",
        approved: ~N[2024-10-08 02:57:00],
        block: "some block",
        block_lot: "some block_lot",
        cnn: "some cnn",
        dayshours: "some dayshours",
        expiration_date: ~N[2024-10-08 02:57:00],
        facility_type: "some facility_type",
        fire_prevention_districtrs: 42,
        food_items: "some food_items",
        latitude: "120.5",
        location: "some location",
        location_description: "some location_description",
        location_id: "some location_id",
        longitude: "120.5",
        lot: "some lot",
        neighborhoods_old: 42,
        noisent: "some noisent",
        permit: "some permit",
        police_districts: 42,
        prior_permit: "some prior_permit",
        received: "some received",
        schedule: "some schedule",
        status: "some status",
        supervisor_districts: 42,
        x: 42,
        y: 42,
        zip_codes: 42
      })
      |> FoodTruckApi.FoodTrucks.create_food_truck()

    food_truck
  end

  @doc """
  Generate a food_truck.
  """
  def food_truck_fixture(attrs \\ %{}) do
    {:ok, food_truck} =
      attrs
      |> Enum.into(%{
        address: "some address",
        applicant: "some applicant",
        approved: ~N[2024-10-08 03:35:00],
        block: "some block",
        block_lot: "some block_lot",
        cnn: "some cnn",
        dayshours: "some dayshours",
        expiration_date: ~N[2024-10-08 03:35:00],
        facility_type: "some facility_type",
        fire_prevention_districtrs: 42,
        food_items: "some food_items",
        latitude: "120.5",
        location: "some location",
        location_description: "some location_description",
        location_id: "some location_id",
        longitude: "120.5",
        lot: "some lot",
        neighborhoods_old: 42,
        noisent: "some noisent",
        permit: "some permit",
        police_districts: 42,
        prior_permit: "some prior_permit",
        received: "some received",
        schedule: "some schedule",
        status: "some status",
        supervisor_districts: 42,
        x: 42,
        y: 42,
        zip_codes: 42
      })
      |> FoodTruckApi.FoodTrucks.create_food_truck()

    food_truck
  end

  @doc """
  Generate a food_truck.
  """
  def food_truck_fixture(attrs \\ %{}) do
    {:ok, food_truck} =
      attrs
      |> Enum.into(%{
        address: "some address",
        applicant: "some applicant",
        approved: "some approved",
        block: "some block",
        block_lot: "some block_lot",
        cnn: "some cnn",
        dayshours: "some dayshours",
        expiration_date: "some expiration_date",
        facility_type: "some facility_type",
        fire_prevention_districtrs: "some fire_prevention_districtrs",
        food_items: "some food_items",
        latitude: "some latitude",
        location: "some location",
        location_description: "some location_description",
        location_id: "some location_id",
        longitude: "some longitude",
        lot: "some lot",
        neighborhoods_old: "some neighborhoods_old",
        noisent: "some noisent",
        permit: "some permit",
        police_districts: "some police_districts",
        prior_permit: "some prior_permit",
        received: "some received",
        schedule: "some schedule",
        status: "some status",
        supervisor_districts: "some supervisor_districts",
        x: "some x",
        y: "some y",
        zip_codes: "some zip_codes"
      })
      |> FoodTruckApi.FoodTrucks.create_food_truck()

    food_truck
  end
end
