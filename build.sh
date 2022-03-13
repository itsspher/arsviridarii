#!/bin/bash

# pandoc -o docs/index.html index.md --template templates/mindoc-pandoc.html --lua-filter=templates/md-to-html.lua 
find ./ -iname "*.md" -type f -exec sh -c 'pandoc "${0}" -o "./docs/$(basename ${0%.md}.html)" --template templates/mindoc-pandoc.html --lua-filter=templates/md-to-html.lua' {} \;

cp -r ./src/attachments ./docs
