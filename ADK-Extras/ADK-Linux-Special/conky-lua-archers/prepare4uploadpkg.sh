#!/usr/bin/env bash

namcap PKGBUILD && makepkg --printsrcinfo > .SRCINFO || exit 1
git add . || exit 1 # PKGBUILD prepare4uploadpkg.sh .SRCINFO
git commit -am "New version" || exit 1
git push --set-upstream origin main || exit 1

read -p "Press [Enter] key to exit..."

exit $?