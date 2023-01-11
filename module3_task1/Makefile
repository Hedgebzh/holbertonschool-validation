build: ##Build your website structure
	hugo -s . -d dist/

clean: ##Clean content of dist directory
	cd dist && rm -rf *

post: ##Create new post for your website
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title:"$(POST_TITLE)"/' content/posts/$(POST_NAME).md

lint: ## Shellcheck
	$(SHELLCHECK) setup.sh >/dev/null 2>&1 || echo "Lint Failed"

test: ## Server and check if dist present
	hugo
	ls dist/

unit-tests: ## Test for makes command
	make POST_TITLE='TEST' POST_NAME='this-is-a-test' post
	make build
	make clean

help: ##Show this help usage
	cat README.md

