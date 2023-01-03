[![Github Actions for Devops with python](https://github.com/TyroneReddy/devops-with-python/actions/workflows/devopss.yml/badge.svg)](https://github.com/TyroneReddy/devops-with-python/actions/workflows/devopss.yml)

# devops-with-python

# scaffold
- makefile
- requirements.txt
- source code
- tests
- docker file

# Steps

1. Create python virtual environment `python3 -m venv .venv ` or `virtualenv .venv`
2. Activate .venv `source .venv/bin/activate`
3. Create empty files : `Makefile` `Dockerfile` `main.py` `src/__init__.py`
4. Populate `Makefile`
5. Set up continuous integration using Github Actions


6. Build CLI tool using Python Fire library `./cli-fire.py --help` to test logic