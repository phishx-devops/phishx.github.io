#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run docs:build
rm -rf build/
mkdir -p build/
cp -R docs/.vuepress/dist/ build/
git checkout gh-pages
git add build/.
git commit -m 'deploy'
git push -u origin gh-pages
# # navigate into the build output directory
# cd docs/.vuepress/dist

# # if you are deploying to a custom domain
# # echo 'www.example.com' > CNAME

# git init
# git remote add origin https://github.com/phishx-devops/phishx.github.io.git
# git config user.email "pedro.vieira@phishx.io"
# git config user.name "phishx-devops"
# git config --local credential.helper ""
# git add -A
# git commit -m 'deploy'
# echo '[branch "gh-pages"]' >> .git/config
# echo '  remote = origin' >> .git/config
# echo '  merge = refs/heads/master' >> .git/config
# cat .git/config
# ls -lsa .git/

# # if you are deploying to https://<USERNAME>.github.io
# # git push -f git@github.com:pedromvieira/phishx.github.io.git master

# # if you are deploying to https://<USERNAME>.github.io/<REPO>
# # git push -f git@github.com:phishx-devops/phishx.github.io.git master:gh-pages
# git push origin gh-pages

# cd -