#!/bin/sh

install_dir=$(which 1pctl | xargs grep '^BASE_DIR=' | cut -d'=' -f2)

rm -rf $install_dir/1panel/resource/apps/local/napcat-1panel-napcat

git clone -b napcat https://github.com/Fahaxikiii/napcat-1panel.git "$install_dir/1panel/resource/apps/local/napcat-1panel-napcat"

if [ $? -eq 0 ]; then
    rm -rf $install_dir/1panel/resource/apps/local/napcat
    mv $install_dir/1panel/resource/apps/local/napcat-1panel-napcat $install_dir/1panel/resource/apps/local/napcat
else
    exit 1
fi
