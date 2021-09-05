init:
	@echo "Setting up local hooks";
	@cp ./.github/hooks/commit-msg ./.git/hooks
	@echo "Commit lint hook ready"
release:
	./scripts/semantic-release.sh prepare
	

