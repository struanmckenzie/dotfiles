#!/bin/bash

# update packages
pacman -Qe > pkglist.txt

# add changes to git and commit
git add .
git commit -m "Updated system"

git push origin main
