defmodule FoodTruckApi.FoodTrucksTest do
  use FoodTruckApi.DataCase

  alias FoodTruckApi.FoodTrucks

  describe "food_trucks" do
    alias FoodTruckApi.FoodTrucks.FoodTruck

    import FoodTruckApi.FoodTrucksFixtures

    @invalid_attrs %{block: nil, status: nil, address: nil, location: nil, permit: nil, approved: nil, y: nil, x: nil, location_id: nil, applicant: nil, facility_type: nil, cnn: nil, location_description: nil, block_lot: nil, lot: nil, food_items: nil, latitude: nil, longitude: nil, schedule: nil, dayshours: nil, noisent: nil, received: nil, prior_permit: nil, expiration_date: nil, fire_prevention_districtrs: nil, police_districts: nil, supervisor_districts: nil, zip_codes: nil, neighborhoods_old: nil}

    test "list_food_trucks/0 returns all food_trucks" do
      food_truck = food_truck_fixture()
      assert FoodTrucks.list_food_trucks() == [food_truck]
    end

    test "get_food_truck!/1 returns the food_truck with given id" do
      food_truck = food_truck_fixture()
      assert FoodTrucks.get_food_truck!(food_truck.id) == food_truck
    end

    test "create_food_truck/1 with valid data creates a food_truck" do
      valid_attrs = %{block: "some block", status: "some status", address: "some address", location: "some location", permit: "some permit", approved: ~N[2024-10-08 02:57:00], y: 42, x: 42, location_id: "some location_id", applicant: "some applicant", facility_type: "some facility_type", cnn: "some cnn", location_description: "some location_description", block_lot: "some block_lot", lot: "some lot", food_items: "some food_items", latitude: "120.5", longitude: "120.5", schedule: "some schedule", dayshours: "some dayshours", noisent: "some noisent", received: "some received", prior_permit: "some prior_permit", expiration_date: ~N[2024-10-08 02:57:00], fire_prevention_districtrs: 42, police_districts: 42, supervisor_districts: 42, zip_codes: 42, neighborhoods_old: 42}

      assert {:ok, %FoodTruck{} = food_truck} = FoodTrucks.create_food_truck(valid_attrs)
      assert food_truck.block == "some block"
      assert food_truck.status == "some status"
      assert food_truck.address == "some address"
      assert food_truck.location == "some location"
      assert food_truck.permit == "some permit"
      assert food_truck.approved == ~N[2024-10-08 02:57:00]
      assert food_truck.y == 42
      assert food_truck.x == 42
      assert food_truck.location_id == "some location_id"
      assert food_truck.applicant == "some applicant"
      assert food_truck.facility_type == "some facility_type"
      assert food_truck.cnn == "some cnn"
      assert food_truck.location_description == "some location_description"
      assert food_truck.block_lot == "some block_lot"
      assert food_truck.lot == "some lot"
      assert food_truck.food_items == "some food_items"
      assert food_truck.latitude == Decimal.new("120.5")
      assert food_truck.longitude == Decimal.new("120.5")
      assert food_truck.schedule == "some schedule"
      assert food_truck.dayshours == "some dayshours"
      assert food_truck.noisent == "some noisent"
      assert food_truck.received == "some received"
      assert food_truck.prior_permit == "some prior_permit"
      assert food_truck.expiration_date == ~N[2024-10-08 02:57:00]
      assert food_truck.fire_prevention_districtrs == 42
      assert food_truck.police_districts == 42
      assert food_truck.supervisor_districts == 42
      assert food_truck.zip_codes == 42
      assert food_truck.neighborhoods_old == 42
    end

    test "create_food_truck/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = FoodTrucks.create_food_truck(@invalid_attrs)
    end

    test "update_food_truck/2 with valid data updates the food_truck" do
      food_truck = food_truck_fixture()
      update_attrs = %{block: "some updated block", status: "some updated status", address: "some updated address", location: "some updated location", permit: "some updated permit", approved: ~N[2024-10-09 02:57:00], y: 43, x: 43, location_id: "some updated location_id", applicant: "some updated applicant", facility_type: "some updated facility_type", cnn: "some updated cnn", location_description: "some updated location_description", block_lot: "some updated block_lot", lot: "some updated lot", food_items: "some updated food_items", latitude: "456.7", longitude: "456.7", schedule: "some updated schedule", dayshours: "some updated dayshours", noisent: "some updated noisent", received: "some updated received", prior_permit: "some updated prior_permit", expiration_date: ~N[2024-10-09 02:57:00], fire_prevention_districtrs: 43, police_districts: 43, supervisor_districts: 43, zip_codes: 43, neighborhoods_old: 43}

      assert {:ok, %FoodTruck{} = food_truck} = FoodTrucks.update_food_truck(food_truck, update_attrs)
      assert food_truck.block == "some updated block"
      assert food_truck.status == "some updated status"
      assert food_truck.address == "some updated address"
      assert food_truck.location == "some updated location"
      assert food_truck.permit == "some updated permit"
      assert food_truck.approved == ~N[2024-10-09 02:57:00]
      assert food_truck.y == 43
      assert food_truck.x == 43
      assert food_truck.location_id == "some updated location_id"
      assert food_truck.applicant == "some updated applicant"
      assert food_truck.facility_type == "some updated facility_type"
      assert food_truck.cnn == "some updated cnn"
      assert food_truck.location_description == "some updated location_description"
      assert food_truck.block_lot == "some updated block_lot"
      assert food_truck.lot == "some updated lot"
      assert food_truck.food_items == "some updated food_items"
      assert food_truck.latitude == Decimal.new("456.7")
      assert food_truck.longitude == Decimal.new("456.7")
      assert food_truck.schedule == "some updated schedule"
      assert food_truck.dayshours == "some updated dayshours"
      assert food_truck.noisent == "some updated noisent"
      assert food_truck.received == "some updated received"
      assert food_truck.prior_permit == "some updated prior_permit"
      assert food_truck.expiration_date == ~N[2024-10-09 02:57:00]
      assert food_truck.fire_prevention_districtrs == 43
      assert food_truck.police_districts == 43
      assert food_truck.supervisor_districts == 43
      assert food_truck.zip_codes == 43
      assert food_truck.neighborhoods_old == 43
    end

    test "update_food_truck/2 with invalid data returns error changeset" do
      food_truck = food_truck_fixture()
      assert {:error, %Ecto.Changeset{}} = FoodTrucks.update_food_truck(food_truck, @invalid_attrs)
      assert food_truck == FoodTrucks.get_food_truck!(food_truck.id)
    end

    test "delete_food_truck/1 deletes the food_truck" do
      food_truck = food_truck_fixture()
      assert {:ok, %FoodTruck{}} = FoodTrucks.delete_food_truck(food_truck)
      assert_raise Ecto.NoResultsError, fn -> FoodTrucks.get_food_truck!(food_truck.id) end
    end

    test "change_food_truck/1 returns a food_truck changeset" do
      food_truck = food_truck_fixture()
      assert %Ecto.Changeset{} = FoodTrucks.change_food_truck(food_truck)
    end
  end

  describe "food_trucks" do
    alias FoodTruckApi.FoodTrucks.FoodTruck

    import FoodTruckApi.FoodTrucksFixtures

    @invalid_attrs %{block: nil, status: nil, address: nil, permit: nil, location: nil, approved: nil, y: nil, x: nil, location_id: nil, applicant: nil, facility_type: nil, cnn: nil, location_description: nil, block_lot: nil, lot: nil, food_items: nil, latitude: nil, longitude: nil, schedule: nil, dayshours: nil, noisent: nil, received: nil, prior_permit: nil, expiration_date: nil, fire_prevention_districtrs: nil, police_districts: nil, supervisor_districts: nil, zip_codes: nil, neighborhoods_old: nil}

    test "list_food_trucks/0 returns all food_trucks" do
      food_truck = food_truck_fixture()
      assert FoodTrucks.list_food_trucks() == [food_truck]
    end

    test "get_food_truck!/1 returns the food_truck with given id" do
      food_truck = food_truck_fixture()
      assert FoodTrucks.get_food_truck!(food_truck.id) == food_truck
    end

    test "create_food_truck/1 with valid data creates a food_truck" do
      valid_attrs = %{block: "some block", status: "some status", address: "some address", permit: "some permit", location: "some location", approved: ~N[2024-10-08 03:35:00], y: 42, x: 42, location_id: "some location_id", applicant: "some applicant", facility_type: "some facility_type", cnn: "some cnn", location_description: "some location_description", block_lot: "some block_lot", lot: "some lot", food_items: "some food_items", latitude: "120.5", longitude: "120.5", schedule: "some schedule", dayshours: "some dayshours", noisent: "some noisent", received: "some received", prior_permit: "some prior_permit", expiration_date: ~N[2024-10-08 03:35:00], fire_prevention_districtrs: 42, police_districts: 42, supervisor_districts: 42, zip_codes: 42, neighborhoods_old: 42}

      assert {:ok, %FoodTruck{} = food_truck} = FoodTrucks.create_food_truck(valid_attrs)
      assert food_truck.block == "some block"
      assert food_truck.status == "some status"
      assert food_truck.address == "some address"
      assert food_truck.permit == "some permit"
      assert food_truck.location == "some location"
      assert food_truck.approved == ~N[2024-10-08 03:35:00]
      assert food_truck.y == 42
      assert food_truck.x == 42
      assert food_truck.location_id == "some location_id"
      assert food_truck.applicant == "some applicant"
      assert food_truck.facility_type == "some facility_type"
      assert food_truck.cnn == "some cnn"
      assert food_truck.location_description == "some location_description"
      assert food_truck.block_lot == "some block_lot"
      assert food_truck.lot == "some lot"
      assert food_truck.food_items == "some food_items"
      assert food_truck.latitude == Decimal.new("120.5")
      assert food_truck.longitude == Decimal.new("120.5")
      assert food_truck.schedule == "some schedule"
      assert food_truck.dayshours == "some dayshours"
      assert food_truck.noisent == "some noisent"
      assert food_truck.received == "some received"
      assert food_truck.prior_permit == "some prior_permit"
      assert food_truck.expiration_date == ~N[2024-10-08 03:35:00]
      assert food_truck.fire_prevention_districtrs == 42
      assert food_truck.police_districts == 42
      assert food_truck.supervisor_districts == 42
      assert food_truck.zip_codes == 42
      assert food_truck.neighborhoods_old == 42
    end

    test "create_food_truck/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = FoodTrucks.create_food_truck(@invalid_attrs)
    end

    test "update_food_truck/2 with valid data updates the food_truck" do
      food_truck = food_truck_fixture()
      update_attrs = %{block: "some updated block", status: "some updated status", address: "some updated address", permit: "some updated permit", location: "some updated location", approved: ~N[2024-10-09 03:35:00], y: 43, x: 43, location_id: "some updated location_id", applicant: "some updated applicant", facility_type: "some updated facility_type", cnn: "some updated cnn", location_description: "some updated location_description", block_lot: "some updated block_lot", lot: "some updated lot", food_items: "some updated food_items", latitude: "456.7", longitude: "456.7", schedule: "some updated schedule", dayshours: "some updated dayshours", noisent: "some updated noisent", received: "some updated received", prior_permit: "some updated prior_permit", expiration_date: ~N[2024-10-09 03:35:00], fire_prevention_districtrs: 43, police_districts: 43, supervisor_districts: 43, zip_codes: 43, neighborhoods_old: 43}

      assert {:ok, %FoodTruck{} = food_truck} = FoodTrucks.update_food_truck(food_truck, update_attrs)
      assert food_truck.block == "some updated block"
      assert food_truck.status == "some updated status"
      assert food_truck.address == "some updated address"
      assert food_truck.permit == "some updated permit"
      assert food_truck.location == "some updated location"
      assert food_truck.approved == ~N[2024-10-09 03:35:00]
      assert food_truck.y == 43
      assert food_truck.x == 43
      assert food_truck.location_id == "some updated location_id"
      assert food_truck.applicant == "some updated applicant"
      assert food_truck.facility_type == "some updated facility_type"
      assert food_truck.cnn == "some updated cnn"
      assert food_truck.location_description == "some updated location_description"
      assert food_truck.block_lot == "some updated block_lot"
      assert food_truck.lot == "some updated lot"
      assert food_truck.food_items == "some updated food_items"
      assert food_truck.latitude == Decimal.new("456.7")
      assert food_truck.longitude == Decimal.new("456.7")
      assert food_truck.schedule == "some updated schedule"
      assert food_truck.dayshours == "some updated dayshours"
      assert food_truck.noisent == "some updated noisent"
      assert food_truck.received == "some updated received"
      assert food_truck.prior_permit == "some updated prior_permit"
      assert food_truck.expiration_date == ~N[2024-10-09 03:35:00]
      assert food_truck.fire_prevention_districtrs == 43
      assert food_truck.police_districts == 43
      assert food_truck.supervisor_districts == 43
      assert food_truck.zip_codes == 43
      assert food_truck.neighborhoods_old == 43
    end

    test "update_food_truck/2 with invalid data returns error changeset" do
      food_truck = food_truck_fixture()
      assert {:error, %Ecto.Changeset{}} = FoodTrucks.update_food_truck(food_truck, @invalid_attrs)
      assert food_truck == FoodTrucks.get_food_truck!(food_truck.id)
    end

    test "delete_food_truck/1 deletes the food_truck" do
      food_truck = food_truck_fixture()
      assert {:ok, %FoodTruck{}} = FoodTrucks.delete_food_truck(food_truck)
      assert_raise Ecto.NoResultsError, fn -> FoodTrucks.get_food_truck!(food_truck.id) end
    end

    test "change_food_truck/1 returns a food_truck changeset" do
      food_truck = food_truck_fixture()
      assert %Ecto.Changeset{} = FoodTrucks.change_food_truck(food_truck)
    end
  end

  describe "food_trucks" do
    alias FoodTruckApi.FoodTrucks.FoodTruck

    import FoodTruckApi.FoodTrucksFixtures

    @invalid_attrs %{block: nil, status: nil, address: nil, permit: nil, location: nil, approved: nil, y: nil, x: nil, location_id: nil, applicant: nil, facility_type: nil, cnn: nil, location_description: nil, block_lot: nil, lot: nil, food_items: nil, latitude: nil, longitude: nil, schedule: nil, dayshours: nil, noisent: nil, received: nil, prior_permit: nil, expiration_date: nil, fire_prevention_districtrs: nil, police_districts: nil, supervisor_districts: nil, zip_codes: nil, neighborhoods_old: nil}

    test "list_food_trucks/0 returns all food_trucks" do
      food_truck = food_truck_fixture()
      assert FoodTrucks.list_food_trucks() == [food_truck]
    end

    test "get_food_truck!/1 returns the food_truck with given id" do
      food_truck = food_truck_fixture()
      assert FoodTrucks.get_food_truck!(food_truck.id) == food_truck
    end

    test "create_food_truck/1 with valid data creates a food_truck" do
      valid_attrs = %{block: "some block", status: "some status", address: "some address", permit: "some permit", location: "some location", approved: "some approved", y: "some y", x: "some x", location_id: "some location_id", applicant: "some applicant", facility_type: "some facility_type", cnn: "some cnn", location_description: "some location_description", block_lot: "some block_lot", lot: "some lot", food_items: "some food_items", latitude: "some latitude", longitude: "some longitude", schedule: "some schedule", dayshours: "some dayshours", noisent: "some noisent", received: "some received", prior_permit: "some prior_permit", expiration_date: "some expiration_date", fire_prevention_districtrs: "some fire_prevention_districtrs", police_districts: "some police_districts", supervisor_districts: "some supervisor_districts", zip_codes: "some zip_codes", neighborhoods_old: "some neighborhoods_old"}

      assert {:ok, %FoodTruck{} = food_truck} = FoodTrucks.create_food_truck(valid_attrs)
      assert food_truck.block == "some block"
      assert food_truck.status == "some status"
      assert food_truck.address == "some address"
      assert food_truck.permit == "some permit"
      assert food_truck.location == "some location"
      assert food_truck.approved == "some approved"
      assert food_truck.y == "some y"
      assert food_truck.x == "some x"
      assert food_truck.location_id == "some location_id"
      assert food_truck.applicant == "some applicant"
      assert food_truck.facility_type == "some facility_type"
      assert food_truck.cnn == "some cnn"
      assert food_truck.location_description == "some location_description"
      assert food_truck.block_lot == "some block_lot"
      assert food_truck.lot == "some lot"
      assert food_truck.food_items == "some food_items"
      assert food_truck.latitude == "some latitude"
      assert food_truck.longitude == "some longitude"
      assert food_truck.schedule == "some schedule"
      assert food_truck.dayshours == "some dayshours"
      assert food_truck.noisent == "some noisent"
      assert food_truck.received == "some received"
      assert food_truck.prior_permit == "some prior_permit"
      assert food_truck.expiration_date == "some expiration_date"
      assert food_truck.fire_prevention_districtrs == "some fire_prevention_districtrs"
      assert food_truck.police_districts == "some police_districts"
      assert food_truck.supervisor_districts == "some supervisor_districts"
      assert food_truck.zip_codes == "some zip_codes"
      assert food_truck.neighborhoods_old == "some neighborhoods_old"
    end

    test "create_food_truck/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = FoodTrucks.create_food_truck(@invalid_attrs)
    end

    test "update_food_truck/2 with valid data updates the food_truck" do
      food_truck = food_truck_fixture()
      update_attrs = %{block: "some updated block", status: "some updated status", address: "some updated address", permit: "some updated permit", location: "some updated location", approved: "some updated approved", y: "some updated y", x: "some updated x", location_id: "some updated location_id", applicant: "some updated applicant", facility_type: "some updated facility_type", cnn: "some updated cnn", location_description: "some updated location_description", block_lot: "some updated block_lot", lot: "some updated lot", food_items: "some updated food_items", latitude: "some updated latitude", longitude: "some updated longitude", schedule: "some updated schedule", dayshours: "some updated dayshours", noisent: "some updated noisent", received: "some updated received", prior_permit: "some updated prior_permit", expiration_date: "some updated expiration_date", fire_prevention_districtrs: "some updated fire_prevention_districtrs", police_districts: "some updated police_districts", supervisor_districts: "some updated supervisor_districts", zip_codes: "some updated zip_codes", neighborhoods_old: "some updated neighborhoods_old"}

      assert {:ok, %FoodTruck{} = food_truck} = FoodTrucks.update_food_truck(food_truck, update_attrs)
      assert food_truck.block == "some updated block"
      assert food_truck.status == "some updated status"
      assert food_truck.address == "some updated address"
      assert food_truck.permit == "some updated permit"
      assert food_truck.location == "some updated location"
      assert food_truck.approved == "some updated approved"
      assert food_truck.y == "some updated y"
      assert food_truck.x == "some updated x"
      assert food_truck.location_id == "some updated location_id"
      assert food_truck.applicant == "some updated applicant"
      assert food_truck.facility_type == "some updated facility_type"
      assert food_truck.cnn == "some updated cnn"
      assert food_truck.location_description == "some updated location_description"
      assert food_truck.block_lot == "some updated block_lot"
      assert food_truck.lot == "some updated lot"
      assert food_truck.food_items == "some updated food_items"
      assert food_truck.latitude == "some updated latitude"
      assert food_truck.longitude == "some updated longitude"
      assert food_truck.schedule == "some updated schedule"
      assert food_truck.dayshours == "some updated dayshours"
      assert food_truck.noisent == "some updated noisent"
      assert food_truck.received == "some updated received"
      assert food_truck.prior_permit == "some updated prior_permit"
      assert food_truck.expiration_date == "some updated expiration_date"
      assert food_truck.fire_prevention_districtrs == "some updated fire_prevention_districtrs"
      assert food_truck.police_districts == "some updated police_districts"
      assert food_truck.supervisor_districts == "some updated supervisor_districts"
      assert food_truck.zip_codes == "some updated zip_codes"
      assert food_truck.neighborhoods_old == "some updated neighborhoods_old"
    end

    test "update_food_truck/2 with invalid data returns error changeset" do
      food_truck = food_truck_fixture()
      assert {:error, %Ecto.Changeset{}} = FoodTrucks.update_food_truck(food_truck, @invalid_attrs)
      assert food_truck == FoodTrucks.get_food_truck!(food_truck.id)
    end

    test "delete_food_truck/1 deletes the food_truck" do
      food_truck = food_truck_fixture()
      assert {:ok, %FoodTruck{}} = FoodTrucks.delete_food_truck(food_truck)
      assert_raise Ecto.NoResultsError, fn -> FoodTrucks.get_food_truck!(food_truck.id) end
    end

    test "change_food_truck/1 returns a food_truck changeset" do
      food_truck = food_truck_fixture()
      assert %Ecto.Changeset{} = FoodTrucks.change_food_truck(food_truck)
    end
  end
end
