.PHONY: _install_node_packages
_install_node_packages:
	-rm -rf node_modules
	-yarn install

.PHONY: init
init:
    -make _install_node_packages
