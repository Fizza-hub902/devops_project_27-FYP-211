OUT_DIR = out
SRC_DIR = src

SOURCES = $(wildcard $(SRC_DIR)/*.md)
OBJECTS = $(patsubst $(SRC_DIR)/%.md, $(OUT_DIR)/%.html, $(SOURCES))

.PHONY: all build test clean package ci

all: build

build: $(OBJECTS)

$(OUT_DIR)/%.html: $(SRC_DIR)/%.md
	mkdir -p $(OUT_DIR)
	node tools/build.js $< $@

test:
	node --test

package: test ## produce the versioned artifact
	npm pack

clean: ## remove all generated files
	rm -rf $(OUT_DIR) *.tgz

ci: clean build test package ## the build server entry point
