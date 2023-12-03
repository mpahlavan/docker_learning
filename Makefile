.PHONY: up init-db show-mytable

up:
	docker-compose down
	docker-compose up -d
	
init-db:
	PGPASSWORD=postgres psql -h 127.0.0.1 -p 5433 -U postgres -d postgres -f create_table.sql
 
show-mytable:
	PGPASSWORD=postgres psql -h 127.0.0.1 -p 5433 -U postgres -d postgres -a -f show_mytable.sql