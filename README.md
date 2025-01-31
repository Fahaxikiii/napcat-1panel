# NapCat-1Panel
在1Panel面板运行NapCat
<div align="center">
  <img src="https://gh.spoli.cn/https://raw.githubusercontent.com/Fahaxikiii/napcat-1panel/main/img/logo.jpeg"/>
</div>

---

## 使用方式

#### 1 使用 git 命令获取应用

`1Panel`计划任务类型`Shell 脚本`的计划任务框里，添加并执行以下命令，或者终端运行以下命令，
```shell
bash <(wget -qO- https://gh.spoli.cn/https://raw.githubusercontent.com/Fahaxikiii/napcat-1panel/main/scripts/gitproxy.sh)
```
```shell
bash <(curl -sS https://gh.spoli.cn/https://raw.githubusercontent.com/Fahaxikiii/napcat-1panel/main/scripts/gitproxy.sh)
```
然后应用商店刷新本地应用即可。

#### 2 使用压缩包方式获取应用

`1Panel`计划任务类型`Shell 脚本`的计划任务框里，添加并执行以下命令，或者终端运行以下命令，
```shell
bash <(wget -qO- https://gh.spoli.cn/https://raw.githubusercontent.com/Fahaxikiii/napcat-1panel/main/scripts/archiveproxy.sh)
```
```shell
bash <(curl -sS https://gh.spoli.cn/https://raw.githubusercontent.com/Fahaxikiii/napcat-1panel/main/scripts/archiveproxy.sh)
```

然后应用商店刷新本地应用即可。

你或许可以使用以下命令获取MAC_ADDRESS
```shell
ip addr show $(ip route | awk '/default/ {print $5}') | grep link/ether | awk '{print $2}'
```
---
## 配置图
<div align="center">
  <img src="https://gh.spoli.cn/https://raw.githubusercontent.com/Fahaxikiii/napcat-1panel/main/img/config.jpeg"/>
</div>
