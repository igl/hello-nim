# Vars
TARGETS = dist/main
ARGV = -x 4 -y 4 -z 4 --debug

# Tasks
.PHONY: all prepare main mainjs test testjs clean

all: clean prepare main

prepare:
	@mkdir -p dist

main: dist/main
	@echo "\n"
	./dist/main $(ARGV)
	@echo "\n"

mainjs: dist/main.js
	@echo "\n"
	node ./dist/main.js $(ARGV)
	@echo "\n"

test: dist/test
	@echo "\n"
	./dist/test
	@echo "\n"

testjs: dist/test.js
	@echo "\n"
	node ./dist/test.js
	@echo "\n"

clean:
	@rm -rf dist

# Rules
dist/%.js: src/%.nim
	nim --app:console --out:$@ js $<

dist/%: src/%.nim
	nim --app:console --out:$@ c $<
