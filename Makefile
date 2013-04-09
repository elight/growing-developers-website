build:
	compass compile -s compressed -e production --force && JEKYLL_ENV=hosted jekyll
release: build
	jekyll-s3
run:
	foreman start
sync-down:
	s3cmd sync s3://media.growingdevelopers.com/ _media/
sync-up:
	s3cmd sync _media/ s3://media.growingdevelopers.com/
