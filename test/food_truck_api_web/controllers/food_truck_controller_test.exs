defmodule FoodTruckApiWeb.FoodTruckControllerTest do
  use FoodTruckApiWeb.ConnCase

  import FoodTruckApi.FoodTrucksFixtures

  alias FoodTruckApi.FoodTrucks.FoodTruck

  @create_attrs %{
    block: "some block",
    status: "some status",
    address: "some address",
    permit: "some permit",
    location: "some location",
    approved: "some approved",
    y: "some y",
    x: "some x",
    location_id: "some location_id",
    applicant: "some applicant",
    facility_type: "some facility_type",
    cnn: "some cnn",
    location_description: "some location_description",
    block_lot: "some block_lot",
    lot: "some lot",
    food_items: "some food_items",
    latitude: "some latitude",
    longitude: "some longitude",
    schedule: "some schedule",
    dayshours: "some dayshours",
    noisent: "some noisent",
    received: "some received",
    prior_permit: "some prior_permit",
    expiration_date: "some expiration_date",
    fire_prevention_districtrs: "some fire_prevention_districtrs",
    police_districts: "some police_districts",
    supervisor_districts: "some supervisor_districts",
    zip_codes: "some zip_codes",
    neighborhoods_old: "some neighborhoods_old"
  }
  @update_attrs %{
    block: "some updated block",
    status: "some updated status",
    address: "some updated address",
    permit: "some updated permit",
    location: "some updated location",
    approved: "some updated approved",
    y: "some updated y",
    x: "some updated x",
    location_id: "some updated location_id",
    applicant: "some updated applicant",
    facility_type: "some updated facility_type",
    cnn: "some updated cnn",
    location_description: "some updated location_description",
    block_lot: "some updated block_lot",
    lot: "some updated lot",
    food_items: "some updated food_items",
    latitude: "some updated latitude",
    longitude: "some updated longitude",
    schedule: "some updated schedule",
    dayshours: "some updated dayshours",
    noisent: "some updated noisent",
    received: "some updated received",
    prior_permit: "some updated prior_permit",
    expiration_date: "some updated expiration_date",
    fire_prevention_districtrs: "some updated fire_prevention_districtrs",
    police_districts: "some updated police_districts",
    supervisor_districts: "some updated supervisor_districts",
    zip_codes: "some updated zip_codes",
    neighborhoods_old: "some updated neighborhoods_old"
  }
  @invalid_attrs %{block: nil, status: nil, address: nil, permit: nil, location: nil, approved: nil, y: nil, x: nil, location_id: nil, applicant: nil, facility_type: nil, cnn: nil, location_description: nil, block_lot: nil, lot: nil, food_items: nil, latitude: nil, longitude: nil, schedule: nil, dayshours: nil, noisent: nil, received: nil, prior_permit: nil, expiration_date: nil, fire_prevention_districtrs: nil, police_districts: nil, supervisor_districts: nil, zip_codes: nil, neighborhoods_old: nil}

  setup %{conn: conn} do
    {:ok, conn: put_req_header(conn, "accept", "application/json")}
  end

  describe "index" do
    test "lists all food_trucks", %{conn: conn} do
      conn = get(conn, ~p"/api/food_trucks")
      assert json_response(conn, 200)["data"] == []
    end
  end

  describe "create food_truck" do
    test "renders food_truck when data is valid", %{conn: conn} do
      conn = post(conn, ~p"/api/food_trucks", food_truck: @create_attrs)
      assert %{"id" => id} = json_response(conn, 201)["data"]

      conn = get(conn, ~p"/api/food_trucks/#{id}")

      assert %{
               "id" => ^id,
               "address" => "some address",
               "applicant" => "some applicant",
               "approved" => "some approved",
               "block" => "some block",
               "block_lot" => "some block_lot",
               "cnn" => "some cnn",
               "dayshours" => "some dayshours",
               "expiration_date" => "some expiration_date",
               "facility_type" => "some facility_type",
               "fire_prevention_districtrs" => "some fire_prevention_districtrs",
               "food_items" => "some food_items",
               "latitude" => "some latitude",
               "location" => "some location",
               "location_description" => "some location_description",
               "location_id" => "some location_id",
               "longitude" => "some longitude",
               "lot" => "some lot",
               "neighborhoods_old" => "some neighborhoods_old",
               "noisent" => "some noisent",
               "permit" => "some permit",
               "police_districts" => "some police_districts",
               "prior_permit" => "some prior_permit",
               "received" => "some received",
               "schedule" => "some schedule",
               "status" => "some status",
               "supervisor_districts" => "some supervisor_districts",
               "x" => "some x",
               "y" => "some y",
               "zip_codes" => "some zip_codes"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn} do
      conn = post(conn, ~p"/api/food_trucks", food_truck: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "update food_truck" do
    setup [:create_food_truck]

    test "renders food_truck when data is valid", %{conn: conn, food_truck: %FoodTruck{id: id} = food_truck} do
      conn = put(conn, ~p"/api/food_trucks/#{food_truck}", food_truck: @update_attrs)
      assert %{"id" => ^id} = json_response(conn, 200)["data"]

      conn = get(conn, ~p"/api/food_trucks/#{id}")

      assert %{
               "id" => ^id,
               "address" => "some updated address",
               "applicant" => "some updated applicant",
               "approved" => "some updated approved",
               "block" => "some updated block",
               "block_lot" => "some updated block_lot",
               "cnn" => "some updated cnn",
               "dayshours" => "some updated dayshours",
               "expiration_date" => "some updated expiration_date",
               "facility_type" => "some updated facility_type",
               "fire_prevention_districtrs" => "some updated fire_prevention_districtrs",
               "food_items" => "some updated food_items",
               "latitude" => "some updated latitude",
               "location" => "some updated location",
               "location_description" => "some updated location_description",
               "location_id" => "some updated location_id",
               "longitude" => "some updated longitude",
               "lot" => "some updated lot",
               "neighborhoods_old" => "some updated neighborhoods_old",
               "noisent" => "some updated noisent",
               "permit" => "some updated permit",
               "police_districts" => "some updated police_districts",
               "prior_permit" => "some updated prior_permit",
               "received" => "some updated received",
               "schedule" => "some updated schedule",
               "status" => "some updated status",
               "supervisor_districts" => "some updated supervisor_districts",
               "x" => "some updated x",
               "y" => "some updated y",
               "zip_codes" => "some updated zip_codes"
             } = json_response(conn, 200)["data"]
    end

    test "renders errors when data is invalid", %{conn: conn, food_truck: food_truck} do
      conn = put(conn, ~p"/api/food_trucks/#{food_truck}", food_truck: @invalid_attrs)
      assert json_response(conn, 422)["errors"] != %{}
    end
  end

  describe "delete food_truck" do
    setup [:create_food_truck]

    test "deletes chosen food_truck", %{conn: conn, food_truck: food_truck} do
      conn = delete(conn, ~p"/api/food_trucks/#{food_truck}")
      assert response(conn, 204)

      assert_error_sent 404, fn ->
        get(conn, ~p"/api/food_trucks/#{food_truck}")
      end
    end
  end

  defp create_food_truck(_) do
    food_truck = food_truck_fixture()
    %{food_truck: food_truck}
  end
end
