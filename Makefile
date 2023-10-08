build:
	@docker compose build

up:
	@docker compose up

down:
	@docker compose down

run_web:
	@docker compose run --rm --service-ports web bash

run_db:
	@docker compose run --rm db bash