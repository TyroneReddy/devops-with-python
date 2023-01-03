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
deploy:
	#deploy
all: install format lint test build deploy
