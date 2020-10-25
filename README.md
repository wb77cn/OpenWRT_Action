# 说明

~~所编译的固件不含任何插件，所有固件、插件和所需依赖都单独编译并已上传到本仓库相应的分支和[Gitee](https://gitee.com/sakura_bot/OpenWRT_Action)~~  
编译的固件、~~插件和依赖~~已打包上传至[Release](https://github.com/Gladtbam/OpenWRT_Action/releases)对应的Tag

本仓库[Build OpenWrt](https://github.com/Gladtbam/OpenWRT_Action/actions?query=workflow%3A%22Build+OpenWrt%22)使用SSH在线编译，具体使用方法可参考[原仓库中文教程](https://p3terx.com/archives/build-openwrt-with-github-actions.html)或[SSH使用说明](https://github.com/Gladtbam/OpenWRT_Action#ssh%E4%BD%BF%E7%94%A8%E8%AF%B4%E6%98%8E),编译完成的固件在[Release\custom](https://github.com/Gladtbam/OpenWRT_Action/releases/tag/custom)中下载

[原仓库](https://github.com/P3TERX/Actions-OpenWrt)

[原仓库中文教程](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

## 作为第三方软件源使用本仓库

可以将本仓库作为一个第三方软件源使用  
支持的固件有：

- [X] MT7621系列

- 使用方法 ：
    1. 手动修改`/etc/opkg/customfeeds.conf`文件，将下列添加进去
    ```
    src/gz base https://gitee.com/sakura_bot/OpenWRT_Action/raw/mt7621/packages/mipsel_24kc/base  
    src/gz freifunk https://gitee.com/sakura_bot/OpenWRT_Action/raw/mt7621/packages/mipsel_24kc/freifunk  
    src/gz luci https://gitee.com/sakura_bot/OpenWRT_Action/raw/mt7621/packages/mipsel_24kc/luci  
    src/gz packages https://gitee.com/sakura_bot/OpenWRT_Action/raw/mt7621/packages/mipsel_24kc/packages  
    src/gz routing https://gitee.com/sakura_bot/OpenWRT_Action/raw/mt7621/packages/mipsel_24kc/routing  
    src/gz telephony https://gitee.com/sakura_bot/OpenWRT_Action/raw/mt7621/packages/mipsel_24kc/telephony  
    ```
    2. 使用本仓库提供的sh脚本  
    使用PuTTY或者其他SSH软件进入路由器，执行以下代码，按提示使用脚本
    ```
    $ cd /tmp/  
    $ wget https://github.com/Gladtbam/OpenWRT_Action/raw/main/opkg.sh  
    $ wget https://gitee.com/sakura_bot/OpenWRT_Action/raw/main/opkg.sh  
     (以上wget命令二选一)  
    $ ./opkg.sh  
    $ opkg update  
    ```
- 注：由于未上传公钥，本仓库作为软件源进行`opkg update`时，无法通过签名校验，因此需要关闭校验。  

    关闭签名校验方法，执行`sed  -i 's/option check_signature/#option check_signature/g' /etc/opkg.conf`(方法2自动关闭校验)  

    本人承诺未向源码添加任何危险代码，所有源码都是通过[Github Action](https://github.com/features/actions)从原存储库远程下载  
    如若由于关闭opkg签名校验和使用本仓库所造成的损失，本人概不负责  

### SSH使用说明

点击右上角star，在触发工作流程后，在 Actions 日志页面等待执行到SSH connection to Actions步骤，会出现类似下面的信息：
```
To connect to this session copy-n-paste the following into a terminal or browser:

ssh Y26QeagDtsPXp2mT6me5cnMRd@nyc1.tmate.io

https://tmate.io/t/Y26QeagDtsPXp2mT6me5cnMRd
```
复制 SSH 连接命令粘贴到终端内执行，或者复制链接在浏览器中打开使用网页终端。（网页终端可能会遇到黑屏的情况，按 Ctrl+C 即可）
`cd openwrt && make menuconfig`
完成后按Ctrl+D组合键或执行exit命令退出，后续编译工作将自动进行。

## 使用到的仓库

- [Lean's OpenWrt](https://github.com/coolsnowwolf/lede)
- [OpenAppFilter](https://github.com/destan19/OpenAppFilter)
- [koolproxyR](https://github.com/jefferymvp/luci-app-koolproxyR)
- [luci-app-serverchan](https://github.com/tty228/luci-app-serverchan)
- [node-request](https://github.com/jerrykuku/node-request)
- [luci-app-jd-dailybonus](https://github.com/jerrykuku/luci-app-jd-dailybonus)
- [luci-app-clash](https://github.com/frainzy1477/luci-app-clash)
- [MentoHUST-OpenWrt-ipk](https://github.com/KyleRicardo/MentoHUST-OpenWrt-ipk)
- [luci-app-mentohust](https://github.com/BoringCat/luci-app-mentohust)
- [helloworld](https://github.com/fw876/helloworld)
- [Lienol](https://github.com/Lienol/openwrt-package)
- [kenzok8](https://github.com/kenzok8/openwrt-packages)
- [kenzok8' small](https://github.com/kenzok8/small)
- [CHN-beta/xmurp-ua](https://github.com/CHN-beta/xmurp-ua)

## License

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © P3TERX
