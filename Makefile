FLAGDAY_HOME = $(shell pwd)
FLAGDAY_INVENTORY = $(FLAGDAY_HOME)/inventory
FLAGDAY_FILES = $(FLAGDAY_HOME)/files
export FLAGDAY_HOME FLAGDAY_INVENTORY FLAGDAY_FILES

inventory_modules = $(shell control/get-modules inventory)

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
