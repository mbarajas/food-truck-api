defmodule FoodTruckApiWeb.StatusController do
  use FoodTruckApiWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> json(%{status: "ok"})
  end
end
