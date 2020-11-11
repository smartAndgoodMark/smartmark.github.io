#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
yarn build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
echo '把域名放到blog.smartmark-pro.com'
echo 'blog.smartmark-pro.com' > CNAME

git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:smartmark-pro/smartmark-blog.github.io.git master:gh-pages
# 比如
# git push -f git@github.com:Tsanfer/VuePress-GithubPages-TravisCI.git master:gh-pages

cd -