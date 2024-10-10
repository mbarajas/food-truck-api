defmodule FoodTruckApiWeb.FoodTruckController do
  use FoodTruckApiWeb, :controller

  alias FoodTruckApi.FoodTrucks
  alias FoodTruckApi.FoodTrucks.FoodTruck

  action_fallback FoodTruckApiWeb.FallbackController

  def index(conn, params) do
    food_trucks = FoodTrucks.list_food_trucks(params)
    render(conn, :index, food_trucks: food_trucks)
  end

  def index(conn) do
    food_trucks = FoodTrucks.list_food_trucks()
    render(conn, :index, food_trucks: food_trucks)
  end

  def create(conn, params) do
    with {:ok, %FoodTruck{} = food_truck} <- FoodTrucks.create_food_truck(params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", ~p"/api/food_trucks/#{food_truck}")
      |> render(:show, food_truck: food_truck)
    end
  end

  def show(conn, %{"id" => id}) do
    food_truck = FoodTrucks.get_food_truck!(id)
    render(conn, :show, food_truck: food_truck)
  end

  def update(conn, %{"id" => id, "food_truck" => food_truck_params}) do
    food_truck = FoodTrucks.get_food_truck!(id)

    with {:ok, %FoodTruck{} = food_truck} <- FoodTrucks.update_food_truck(food_truck, food_truck_params) do
      render(conn, :show, food_truck: food_truck)
    end
  end

  def delete(conn, %{"id" => id}) do
    food_truck = FoodTrucks.get_food_truck!(id)

    with {:ok, %FoodTruck{}} <- FoodTrucks.delete_food_truck(food_truck) do
      send_resp(conn, :no_content, "")
    end
  end
end
