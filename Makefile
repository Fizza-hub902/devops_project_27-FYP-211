OUT_DIR ?= out

build:
	node tools/build.js src/notes.md $(OUT_DIR)/notes.html

lint: node_modules  ## static analysis: seconds, so it runs first
	npm run --silent lint

test: build
	node --test

coverage: build  ## the tests again, writing coverage/lcov.info for SonarQube
	@mkdir -p coverage
	node --test --experimental-test-coverage \
	  --test-reporter=spec --test-reporter-destination=stdout \
	  --test-reporter=lcov --test-reporter-destination=coverage/lcov.info

package: coverage
	npm pack

ci: clean lint test coverage package  ## everything, in pipeline order

clean:  ## remove all generated file
	rm -rf $(OUT_DIR) coverage *.tgz
