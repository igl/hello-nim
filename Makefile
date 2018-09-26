# Vars
TARGETS  = dist/main
C_ARGS   = --app:console --deadCodeElim:on --opt:size
APP_ARGS = -x 4 -y 4 -z 4 --debug

# Tasks
.PHONY: all prepare main mainjs test testjs clean

all: clean prepare main

prepare:
	@mkdir -p dist

main: dist/main
	./dist/main $(APP_ARGS)

mainjs: dist/main.js
	node ./dist/main $(APP_ARGS)

test: dist/test
	./dist/test

testjs: dist/test.js
	node ./dist/test

clean:
	@rm -rf dist

# Rules
dist/%.js: src/%.nim
	nim $(C_ARGS) --out:$@ js $<

dist/%: src/%.nim
	nim $(C_ARGS) --out:$@ c $<
