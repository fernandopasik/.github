verify: format lint hooks

venv:
	@python -m venv .venv
	@echo 'run `. .venv/bin/activate` to develop'

install:
	pip install -r requirements-dev.txt
	pre-commit install

format:
	yamlfmt .
	mdformat .

lint:
	yamllint .
	pymarkdownlnt scan -r --respect-gitignore .

hooks:
	pre-commit run --all-files
