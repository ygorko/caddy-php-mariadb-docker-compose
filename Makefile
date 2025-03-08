up:
	docker compose up -d

down:
	docker compose down

exec:
	docker compose exec -u dev -it php bash
