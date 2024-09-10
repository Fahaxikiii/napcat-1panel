# NapCat-1Panel
在1Panel面板运行NapCat
<div align="center">
  <img src="https://cdn.wanli.icu/Snipaste_2024-09-10_01-20-13.png?e=1725903007&token=-OaWqvhw6VUi5aqDe_VjvExatymWXEXdbBlMTPpr:MbBgBuSCERuvm5sm9kW6JL2BzlE="/>
</div>

---

## 使用方式

#### 1 使用 git 命令获取应用

`1Panel`计划任务类型`Shell 脚本`的计划任务框里，添加并执行以下命令，或者终端运行以下命令，
```shell
#!/bin/sh

install_dir=$(which 1pctl | xargs grep '^BASE_DIR=' | cut -d'=' -f2)

git clone -b napcat https://github.com/Fahaxikiii/napcat-1panel.git "$install_dir/1panel/resource/apps/local/napcat-temp"

if [ $? -eq 0 ]; then
    rm -rf $install_dir/1panel/resource/apps/local/napcat
    mv $install_dir/1panel/resource/apps/local/napcat-temp $install_dir/1panel/resource/apps/local/napcat
else
    echo "克隆失败"
    exit 1
fi

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

---
## 配置图
<div align="center">
  <img src="https://cdn.wanli.icu/Snipaste_2024-09-10_01-20-31.png?e=1725903211&token=-OaWqvhw6VUi5aqDe_VjvExatymWXEXdbBlMTPpr:PllZcPZYWiW14j4hwPF66eg5D7M="/>
</div>
