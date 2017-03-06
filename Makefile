GULP = gulp --gulpfile scripts/gulp/index.js

.PHONY: _install_node_packages
_install_node_packages:
	-rm -rf node_modules
	-yarn install

.PHONY: init
init:
	-make _install_node_packages

.PHONY: build
build:
	${GULP} build

.PHONY: watch
watch:
	${GULP} watch
