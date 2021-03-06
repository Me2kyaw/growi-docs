##
## refs https://vuepress.vuejs.org/guide/deploy.html#github-pages
##

#!/usr/bin/env sh

# abort on errors
set -e

# navigate into the build output directory
cd docs/.vuepress/dist

# if you are deploying to a custom domain
echo 'docs.growi.org' > CNAME

git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages
git push -f origin master:gh-pages

cd -
