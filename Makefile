init:
	@echo Initialise environment
	uv venv --python 3.12
	uv init && rm hello.py
	uv tool install black

install:
	@echo Install dependencies
	. .venv/bin/activate
	# uv pip install --all-extras --requirement pyproject.toml
	# uv pip sync requirements.txt
	uv add -r requirements.txt

delete:
	rm uv.lock pyproject.toml .python-version && rm -rf .venv

env:
	cp .env.example .env

run:
	uv run python sentiment_model.py