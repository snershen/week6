#!/usr/bin/env sh

# 发生错误时终止
set -e

# 构建
npm run build

# 进入构建文件夹
cd dist

# 如果你要部署到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果你要部署在 https://s9615562.github.io
# git push -f git@github.com:s9615562/s9615562.github.io.git main

# 如果你要部署在 https://s9615562.github.io/week6
git push -f git@github.com:s9615562/week6.git main:gh-pages

cd -