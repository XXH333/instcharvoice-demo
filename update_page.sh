#!/usr/bin/env bash
set -e
git remote set-url origin ssh://git@ssh.github.com:443/XXH333/instwordvoice-demo.git

cd "$(dirname "$0")"

git add .

if git diff --cached --quiet; then
  echo "没有检测到需要提交的更新。"
  exit 0
fi

git commit -m "${1:-Update demo page}"
git push

echo "更新已推送，等待 GitHub Pages 自动部署。"
