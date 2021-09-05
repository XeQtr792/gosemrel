init:
	@echo "Setting up local hooks";
	@(!(test -f .git/hooks/commit-msg) && cp .github/hooks/commit-msg.sh .git/hooks/commit-msg )|| true
release:
	./scripts/semantic-release.sh prepare
	

