#!/bin/sh

install_dir=$(which 1pctl | xargs grep '^BASE_DIR=' | cut -d'=' -f2)

rm -rf $install_dir/1panel/resource/apps/local/napcat-1panel-napcat

if command -v wget > /dev/null; then
    wget -O $install_dir/1panel/resource/apps/local/napcat-1panel-napcat.zip https://www.ghproxy.cn/https://github.com/Fahaxikiii/napcat-1panel/archive/refs/heads/napcat.zip
else
    curl -o $install_dir/1panel/resource/apps/local/napcat-1panel-napcat.zip https://www.ghproxy.cn/https://github.com/Fahaxikiii/napcat-1panel/archive/refs/heads/napcat.zip
fi

unzip $install_dir/1panel/resource/apps/local/napcat-1panel-napcat.zip
rm -rf $install_dir/1panel/resource/apps/local/napcat-1panel-napcat.zip
rm -rf $install_dir/1panel/resource/apps/local/napcat
mv $install_dir/1panel/resource/apps/local/napcat-1panel-napcat $install_dir/1panel/resource/apps/local/napcat
