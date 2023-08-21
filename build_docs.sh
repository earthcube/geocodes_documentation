#!/bin/bash
shopt -s extglob
git config user.name "valentinwdwv "
git config user.email "david.valentine@gmail.com"
git remote add gh-token "https://${GH_TOKEN}@github.com/earthcube/geocodes_documentation.git";
git fetch gh-token && git fetch gh-token gh-pages:gh-pages;
CURRENT_PATH=$PWD
cd docs
git submodule add https://github.com/earthcube/geocodes.git
cd geocodes && rm -rf !(docs)
cd ..
git submodule add https://github.com/earthcube/GeoCODES-Metadata.git
cd GeoCODES-Metadata && rm -rf !(docs)
cd ..
git submodule add https://github.com/gleanerio/gleaner.git
cd gleaner && rm -rf !(docs)
cd $CURRENT_PATH
mkdocs gh-deploy -v --clean --remote-name gh-token;
