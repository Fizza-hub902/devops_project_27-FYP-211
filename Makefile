OUT_DIR ?= out

build:
	@mkdir -p $(OUT_DIR)
	@for file in src/*.md; do \
	  name=$$(basename "$$file" .md); \
	  node tools/build.js "$$file" "$(OUT_DIR)/$$name.html"; \
	done

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
