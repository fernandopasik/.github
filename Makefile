install:
	pip install -r requirements.txt

lint:
	yamllint .

verify: lint
