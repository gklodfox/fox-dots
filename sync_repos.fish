#!/usr/bin/env fish


git submodule foreach git pull
git submodule foreach git add .
git submodule foreach git commit -m 'update' --allow-empty
git submodule foreach git push

git add .
git commit -m 'update'
git push
