all: bin/example
test: lint unit-test

PLATFORM=local

.PHONEY: bin/example

bin/example:
	docker build . --target bin --output bin/ --platform ${PLATFORM}

.PHONEY: unit-test
unit-test:
	docker build . --target unit-test

.PHONEY: lint
lint:
	docker build . --target lint
