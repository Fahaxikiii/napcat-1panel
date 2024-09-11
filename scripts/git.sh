#!/bin/sh

install_dir=$(which 1pctl | xargs grep '^BASE_DIR=' | cut -d'=' -f2)

rm -rf $install_dir/1panel/resource/apps/local/napcat-temp

git clone -b napcat /https://github.com/Fahaxikiii/napcat-1panel.git "$install_dir/1panel/resource/apps/local/napcat-temp"

if [ $? -eq 0 ]; then
    rm -rf $install_dir/1panel/resource/apps/local/napcat
    mv $install_dir/1panel/resource/apps/local/napcat-temp $install_dir/1panel/resource/apps/local/napcat
else
    exit 1
fi
