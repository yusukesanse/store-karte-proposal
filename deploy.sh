#!/bin/sh
# Cloudflare Pages（Direct Upload）へデプロイする。リポジトリは private のまま。
# 使い方: ./deploy.sh
set -e
cd "$(dirname "$0")"
rm -rf dist && mkdir -p dist
cp index.html tokens.css dist/
cp -R prototype dist/prototype
printf '/*\n  X-Robots-Tag: noindex, nofollow\n' > dist/_headers
CLOUDFLARE_ACCOUNT_ID=02cc5fa5c3376771509983ddf7954219 npx -y wrangler pages deploy dist --project-name store-karte-proposal --branch master --commit-dirty=true
