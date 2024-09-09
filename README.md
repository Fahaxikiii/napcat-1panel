# NapCat-1Panel
在1Panel面板运行NapCat
<div align="center">
  <img src="https://cdn.wanli.icu/Snipaste_2024-09-10_01-20-13.png?e=1725903007&token=-OaWqvhw6VUi5aqDe_VjvExatymWXEXdbBlMTPpr:MbBgBuSCERuvm5sm9kW6JL2BzlE=" alt="NapCatQQ" width="640" height="320" />
</div>

---

## 使用方式

默认`1Panel`安装在`/opt/`路径下，如果不是按需修改以下。

#### 1 使用 git 命令获取应用

`1Panel`计划任务类型`Shell 脚本`的计划任务框里，添加并执行以下命令，或者终端运行以下命令，
```shell
git clone https://github.com/Fahaxikiii/napcat-1panel /opt/1panel/resource/apps/local/napcat-1panel

cp -rf /opt/1panel/resource/apps/local/napcat-1panel/napcat /opt/1panel/resource/apps/local/

rm -rf /opt/1panel/resource/apps/local/napcat-1panel
```

然后应用商店刷新本地应用即可。

#### 2 使用压缩包方式获取应用

`1Panel`计划任务类型`Shell 脚本`的计划任务框里，添加并执行以下命令，或者终端运行以下命令，
```shell
wget -P /opt/1panel/resource/apps/local https://github.com/Fahaxikiii/napcat-1panel/archive/refs/heads/main.zip

unzip -o -d /opt/1panel/resource/apps/local/ /opt/1panel/resource/apps/local/main.zip

cp -rf /opt/1panel/resource/apps/local/napcat-1panel-main/napcat /opt/1panel/resource/apps/local/

rm -rf /opt/1panel/resource/apps/local/napcat-1panel-main

rm -rf /opt/1panel/resource/apps/local/main.zip
```

然后应用商店刷新本地应用即可。
