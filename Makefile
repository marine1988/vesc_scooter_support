VESC_TOOL ?= $(if $(wildcard ./vesc_tool),./vesc_tool,vesc_tool)

VERSION := $(shell cat version)
PKG = vesc_scooter_support_v$(VERSION).vescpkg
TMP = vesc_scooter_support.vescpkg

all: $(PKG)

$(PKG): pkgdesc.qml ui.qml scooter_support.lisp README.md version
	$(VESC_TOOL) --buildPkgFromDesc pkgdesc.qml --testPkgDesc 'vesc:maxim 120' --testPkgDesc 'vesc:pronto'
	mv $(TMP) $(PKG)

clean:
	rm -f $(TMP) vesc_scooter_support_v*.vescpkg

.PHONY: all clean
