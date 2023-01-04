build:
	hugo -s . -d dist/

clean:
	cd dist && rm -rf *

post:
	hugo new posts/$(POST_NAME).md
	sed -i 's/title: .*/title:"$(POST_TITLE)"/' content/posts/$(POST_NAME).md