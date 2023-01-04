build: ##build test
	hugo -s . -d dist/

clean: ##clean test
	cd dist && rm -rf *

post: ##post test
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title:"$(POST_TITLE)"/' content/posts/$(POST_NAME).md

help: ##Show this help usage
	cat README.md

