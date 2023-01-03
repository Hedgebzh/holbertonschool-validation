build:
	hugo new site dist | echo "publishDir = 'dist'" > config.toml

clean:
	cd dist && rm -rf *

post:
	hugo new --title="$1" --name="$2"