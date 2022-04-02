#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
# cd public

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git add -A
git commit -m 'gitee仓库'

# 如果发布到 gitee
git push -f git@gitee.com:hellochen235/hello-chen235.git master

cd -
