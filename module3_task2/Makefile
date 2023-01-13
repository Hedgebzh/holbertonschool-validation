build: ## new website
	hugo

clean: ## remove dist
	rm -r dist/*

post: ## Create new post and using the sed command to modify the contents of a file.
	$(Publish) new posts/$(POST_NAME).md
	sed -i 's/title: .*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md

lint: ## shellcheck setup
	markdownlint README.md
	markdownlint DEPLOY.md
	$(SHELLCHECK) setup.sh >/dev/null 2>&1 || echo "Lint Failed"

markdownlint: ## updated to lint the files README.md and DEPLOY.md
	markdownlint README.md
	markdownlint DEPLOY.md

tests: ## tests
	hugo
	ls dist/

unit-tests: ## unit tests
	make POST_TITLE='TEST' POST_NAME='this-is-a-test' post
	make build
	make clean

validate: ## Tests dir
	pwd
	
package: ## creates archive
	make build
	zip awesome-website.zip dist/

help: ## display help
	cat Makefile | grep '##' | tr -d '##' | head -n -1

