#!/bin/bash

rm -rfv dist
mkdir -pv dist

for app in app*; do
	cp -aLv "${app}" "dist/${app}"
	zip "dist/${app}.zip" "dist/${app}"
done
