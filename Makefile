FLAGDAY_HOME = $(shell pwd)
FLAGDAY_INVENTORY = $(FLAGDAY_HOME)/inventory
FLAGDAY_FILES = $(FLAGDAY_HOME)/files
FLAGDAY_GENERATED = $(FLAGDAY_HOME)/generated
export FLAGDAY_HOME FLAGDAY_INVENTORY FLAGDAY_FILES FLAGDAY_GENERATED

inventory_modules ::= $(shell control/get-modules inventory)
generate_modules ::= $(shell control/get-modules generate)

.PHONY: all
all:
	@echo Hello!
	@echo
	@echo Use one of the following stages:
	@echo
	@echo   - inventory
	@echo   - generate
	@echo   - push

.PHONY: inventory
inventory: $(addprefix inventory-, $(inventory_modules))

inventory-%:
	inventory-modules/$*

.PHONY: generate
generate: $(addprefix generate-, $(generate_modules))

generate-%:
	generate-modules/$*
