# Documentation

## What is this
This is a CRUD API written in Elixir using the Phoenix framework and food truck data from San Francisco. It uses Docker and Postgres to host the csv data after is has been preprocessed using Python. 

## How to run
- Clone the repo
- Run the `/util/postgres.sh` file to spin up a postgres instance locally using docker
- Run `/util/preprocess_csv.py` to run some operations on the csv data
- Make sure the `output.csv` file has been cleaned and formatted properly
- Run the `/util/copy-data-to-container.sh` to copy the new csv to the docker container
- Follow instructions in README for setup
- Once the table has been created, connect to the postgres container using the `/util/connect-to-db-container.sh` file, log in to the database using psql or pgcli, and run `COPY food_trucks FROM 'tmp/output.csv' WITH (FORMAT csv);` to seed the database
- Once the database has been seeded, exit out of the container and run `mix phx.server` to launch the API server

## Things I would do differently if I had more time
- Not use basic auth and use something more robust and leverage environment variables (or secrets manager) for credentials and database config
- Utilize docker compose or kubernetes rather than a bunch of shell files
- Take some time to normalize the data. A lot of the data in the CSV was bad/inconsistent so it was easier to make all columns strings in the database. Ideally we would want to use better typing (integers, decimals, datetimes, etc)
- Improve seeding of database my reducing steps, automating, and adding some sort of polling to check if the upstream has updated to keep data fresh.
- Enable Swagger for better documentation and providing a "front-end" for the API
- Create a true front-end using react or some other framework
- Harden the app by implementing useful middleware (logging, rate limitting, cors, etc)
- Deploy the app to a server/container in a cloud service using a CI/CD pipeline and IaC.
- Properly use the prod config.
