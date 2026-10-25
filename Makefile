.DEFAULT_GOAL := help

.PHONY: help fmt lint smoke extras check

help: ## list every target
	@grep -E '^[a-z-]+:.*## ' $(MAKEFILE_LIST) | awk -F':.*## ' '{printf "  %-8s %s\n", $$1, $$2}'

fmt: ## format every Lua file with stylua
	stylua .

lint: ## fail if a Lua file is not formatted
	stylua --check .

smoke: ## load the colorscheme headless and check every link resolves
	nvim --headless -u NONE -l scripts/smoke.lua

extras: ## regenerate extras/ from the palette
	nvim --headless -u NONE -l scripts/extras.lua

check: fmt lint smoke extras ## the gate before any commit
