.PHONY: doc tests

clean:
	@rm -rf build dist
	@rm -rf doc/_build/*

install-dev: clean
	python -m pip install -e '.[dev']
	git init

doc:
	python -m sphinx.cmd.build -b html doc doc/_build

wheel:
	python -m pip wheel -w dist --no-deps .
