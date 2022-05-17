help: ## Shows this help
	@echo "$$(grep -h '#\{2\}' $(MAKEFILE_LIST) | sed 's/: #\{2\} /	/' | column -t -s '	')"

run: ## Run tests with a watcher
	@scripts/end-to-end.sh

test: ## Run test suite
	@if [[ -f "scripts/end-to-end.sh" ]]; then
		echo "script exists";
	else
		echo "script missing";
	fi
