install:
	#install command
	pip install --upgrade pip &&\
	pip install -r requirements.txt
format:
	#format code
	black *.py src/*.py
lint:
	#flake8 or pylint
	pylint --disable=R,C *.py src/*.py 
test:
	#test
	python -m pytest -vv --cov=src test_logic.py
build:
	#build step for container
	docker build -t deploy-fastapi .
run:
	#run docker
	docker run -p 127.0.0.1:8000:8000 63d8d1dcc0f4

all: install format lint test build
