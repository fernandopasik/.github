venv:
	@python -m venv .venv
	@echo 'run `. .venv/bin/activate` to develop'

install:
	pip install -r requirements-dev.txt

format:
	yamlfix -c .yamlfix.toml .

lint:
	yamllint .

verify: format lint
