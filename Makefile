venv:
	@python -m venv .venv
	@echo 'run `. .venv/bin/activate` to develop'

install:
	pip install -r requirements-dev.txt

format:
	pre-commit run --all-files yamlfmt

lint:
	yamllint .

verify: format lint
