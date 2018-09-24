# Vars
TARGETS = dist/main.js dist/main

# Tasks
.PHONY: all build prepare clean

all: clean prepare build

build:
	@$(MAKE) -j2 $(TARGETS)

prepare:
	@mkdir -p dist

clean:
	@rm -rf dist

# Rules
dist/%.js: src/%.nim
	nim --app:console --out:$@ js $<

dist/%: src/%.nim
	nim --app:console --out:$@ c $<
