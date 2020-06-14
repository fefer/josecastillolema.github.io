publish:
	bundle exec jekyll build
	git add *
	git commit -m "auto build $(date +"%Y-%m-%d")"
	git branch -D master
	git checkout -b master
	git filter-branch --subdirectory-filter _site/ -f
	git checkout source
	git push --all origin
