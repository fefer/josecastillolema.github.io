set -v
JEKYLL_ENV=production bundle exec jekyll build
git add *
git commit -m "auto build"
git push
cp -r _site/* ../josecastillolema.github.io/
cd ../josecastillolema.github.io/
git add *
git commit -m "new post"
git push
set +v
