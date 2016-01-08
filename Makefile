DEPLOY_BUCKET=analytics-ons-gov-uk

production:
	bundle exec jekyll build

dev:
	bundle exec jekyll serve --watch --config=_config.yml,_development.yml

deploy:
	make production
	aws s3 cp --recursive --acl=public-read --cache-control="max-age=0" ./_site/ s3://$(DEPLOY_BUCKET)
