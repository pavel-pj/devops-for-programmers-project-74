cp-env:
	cp -f ./app/.env.example ./.env
ci:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
build-test:
	docker-compose -f docker-compose.yml build app
push-test:
	docker-compose -f docker-compose.yml push app
build:
	docker-compose build app
run:
	docker-compose up
