# NapCat-1Panel
在1Panel面板运行NapCat
<div align="center">
  <img src="https://gh.spoli.cn/https://raw.githubusercontent.com/Fahaxikiii/napcat-1panel/main/img/logo.jpeg"/>
</div>

---

## 使用方式

github代理地址
- 自建 : https://gh.spoli.cn/ 
- 网络 : https://ghproxy.link/

*注意:* 失效请自行寻找代理

### 1 使用 git 命令获取应用

`1Panel`计划任务类型`Shell 脚本`的计划任务框里，添加并执行以下命令，或者保存为sh然后在终端运行。
#### 国外
```bash
#!/bin/sh

install_dir=$(which 1pctl | xargs grep '^BASE_DIR=' | cut -d'=' -f2)

rm -rf $install_dir/1panel/resource/apps/local/napcat-1panel-napcat

git clone -b napcat https://github.com/Fahaxikiii/napcat-1panel.git "$install_dir/1panel/resource/apps/local/napcat-1panel-napcat"

if [ $? -eq 0 ]; then
    rm -rf $install_dir/1panel/resource/apps/local/napcat
    mv $install_dir/1panel/resource/apps/local/napcat-1panel-napcat $install_dir/1panel/resource/apps/local/napcat
    echo "success"
else
    echo "error"
    exit 1
fi
```
#### 国内
```shell
#!/bin/sh

install_dir=$(which 1pctl | xargs grep '^BASE_DIR=' | cut -d'=' -f2)

rm -rf $install_dir/1panel/resource/apps/local/napcat-1panel-napcat

git clone -b napcat https://gh.spoli.cn/https://github.com/Fahaxikiii/napcat-1panel.git "$install_dir/1panel/resource/apps/local/napcat-1panel-napcat"

if [ $? -eq 0 ]; then
    rm -rf $install_dir/1panel/resource/apps/local/napcat
    mv $install_dir/1panel/resource/apps/local/napcat-1panel-napcat $install_dir/1panel/resource/apps/local/napcat
    echo "success"
else
    echo "error"
    exit 1
fi
```
然后应用商店刷新本地应用即可。

### 2 使用压缩包方式获取应用

`1Panel`计划任务类型`Shell 脚本`的计划任务框里，添加并执行以下命令，或者保存为sh然后在终端运行。
```shell
#!/bin/sh

install_dir=$(which 1pctl | xargs grep '^BASE_DIR=' | cut -d'=' -f2)

rm -rf $install_dir/1panel/resource/apps/local/napcat-1panel-napcat

if command -v wget > /dev/null; then
    wget -O $install_dir/1panel/resource/apps/local/napcat-1panel-napcat.zip https://github.com/Fahaxikiii/napcat-1panel/archive/refs/heads/napcat.zip
elseif command -v curl > /dev/null; then
    curl -o $install_dir/1panel/resource/apps/local/napcat-1panel-napcat.zip https://github.com/Fahaxikiii/napcat-1panel/archive/refs/heads/napcat.zip
else
    echo "请先安装wget或curl"
    exit 1
fi

unzip "$install_dir/1panel/resource/apps/local/napcat-1panel-napcat.zip" -d "$install_dir/1panel/resource/apps/local/"
rm -rf $install_dir/1panel/resource/apps/local/napcat-1panel-napcat.zip
rm -rf $install_dir/1panel/resource/apps/local/napcat
mv $install_dir/1panel/resource/apps/local/napcat-1panel-napcat $install_dir/1panel/resource/apps/local/napcat
echo "success"
```
```shell
#!/bin/sh

install_dir=$(which 1pctl | xargs grep '^BASE_DIR=' | cut -d'=' -f2)

rm -rf $install_dir/1panel/resource/apps/local/napcat-1panel-napcat

if command -v wget > /dev/null; then
    wget -O $install_dir/1panel/resource/apps/local/napcat-1panel-napcat.zip https://gh.spoli.cn/https://github.com/Fahaxikiii/napcat-1panel/archive/refs/heads/napcat.zip
elseif command -v curl > /dev/null; then
    curl -o $install_dir/1panel/resource/apps/local/napcat-1panel-napcat.zip https://gh.spoli.cn/https://github.com/Fahaxikiii/napcat-1panel/archive/refs/heads/napcat.zip
else
    echo "请先安装wget或curl"
    exit 1
fi

unzip "$install_dir/1panel/resource/apps/local/napcat-1panel-napcat.zip" -d "$install_dir/1panel/resource/apps/local/"
rm -rf $install_dir/1panel/resource/apps/local/napcat-1panel-napcat.zip
rm -rf $install_dir/1panel/resource/apps/local/napcat
mv $install_dir/1panel/resource/apps/local/napcat-1panel-napcat $install_dir/1panel/resource/apps/local/napcat
echo "success"
```

然后应用商店刷新本地应用即可。

或许你可以使用以下命令在终端获取MAC_ADDRESS
```shell
ip addr show $(ip route | awk '/default/ {print $5}') | grep link/ether | awk '{print $2}'
```
---
## 配置图
<div align="center">
  <img src="https://gh.spoli.cn/https://raw.githubusercontent.com/Fahaxikiii/napcat-1panel/main/img/config.jpeg"/>
</div>
