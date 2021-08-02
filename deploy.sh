#!/usr/bin/env sh

# abort on errors
set -e

# build
npm run build

# navigate into the build output directory
cd dist

# if you are deploying to a custom domain
# echo 'www.example.com' > CNAME

git init
git remote add origin git@github.com:kenzch1r0/kenzch1r0.github.io.git
git fetch
git checkout gh-pages
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io
git push

# if you are deploying to https://<USERNAME>.github.io/<REPO>
# git push -f git@github.com:<USERNAME>/<REPO>.git master:gh-pages

cd .. 
git add -A
git commit -m 'update code'
git push -f https://github.com/kenzchiro/NKportfolio main

cd -