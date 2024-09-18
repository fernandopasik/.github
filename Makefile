install:
	pip install -r requirements-dev.txt

lint:
	yamllint .

verify: lint
