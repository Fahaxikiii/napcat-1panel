# napcat-1panel
在1panel面板运行napcat

## 2. 使用方式

默认`1Panel`安装在`/opt/`路径下，如果不是按需修改以下。

#### 2.1 使用 git 命令获取应用

`1Panel`计划任务类型`Shell 脚本`的计划任务框里，添加并执行以下命令，或者终端运行以下命令，
```shell
git clone https://github.com/Fahaxikiii/napcat-1panel /opt/1panel/resource/apps/local/napcat-1panel

cp -rf /opt/1panel/resource/apps/local/napcat-1panel/napcat /opt/1panel/resource/apps/local/

rm -rf /opt/1panel/resource/apps/local/napcat-1panel
```

然后应用商店刷新本地应用即可。

#### 2.2 使用压缩包方式获取应用

`1Panel`计划任务类型`Shell 脚本`的计划任务框里，添加并执行以下命令，或者终端运行以下命令，
```shell
wget -P /opt/1panel/resource/apps/local https://github.com/Fahaxikiii/napcat-1panel/archive/refs/heads/main.zip

unzip -o -d /opt/1panel/resource/apps/local/ /opt/1panel/resource/apps/local/main.zip

cp -rf /opt/1panel/resource/apps/local/napcat-1panel-main/napcat /opt/1panel/resource/apps/local/

rm -rf /opt/1panel/resource/apps/local/napcat-1panel-main

rm -rf /opt/1panel/resource/apps/local/main.zip
```

然后应用商店刷新本地应用即可。
