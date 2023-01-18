SHELLCHECK=shellcheck

build: ## build new website
	hugo

clean: ## remove files of dist dir
	rm -r dist/*

post: ## create new post
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

lint: ## shellcheck setup
	markdownlint README.md
	markdownlint DEPLOY.md
	$(shellcheck) setup.sh >/dev/null 2>&1 || echo "Lint Failed"

markdownlint: ## updated to lint the files README.md and DEPLOY.md
	markdownlint README.md
	markdownlint DEPLOY.md
	
tests: ## check if dist present
	hugo
	ls dist/
	
unit-tests: ## tests
	make POST_TITLE='TEST' POST_NAME='this-is-a-test' post
	make build
	make clean

validate: ## validation
	pwd

package: ##
	make build
	zip awesome-website.zip dist/

help: ## display help
	cat Makefile | grep '##' | tr -d '##' | head -n -1

