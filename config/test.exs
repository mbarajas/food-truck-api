import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :food_truck_api, FoodTruckApiWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "WlUKI3oD+n63dop0+sJxhBCgDiuTUCZ1uNvY8twbBq24IAQTTRK2AL/JrEjkxteY",
  server: false

# In test we don't send emails
config :food_truck_api, FoodTruckApi.Mailer, adapter: Swoosh.Adapters.Test

# Disable swoosh api client as it is only required for production adapters
config :swoosh, :api_client, false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime

config :food_truck_api, FoodTruckApi.Repo,
  username: "postgres",
  password: "postgres",
  database: "food_truck_api_dev",
  hostname: "localhost",
  port: "5500",
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
