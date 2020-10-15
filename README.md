# 说明

本仓库编译的固件：

- [X]  PHICOMM K2T
- [X]  XiaoMi RedMi AC2100
- [X]  XiaoMi AC2100

所编译的固件不含任何插件，所有固件、插件和所需依赖都单独编译并已上传到本仓库相应的分支和[Gitee](https://gitee.com/sakura_bot/OpenWRT_Action)
同时，编译的固件、插件和依赖已打包上传至[Release](https://github.com/Gladtbam/OpenWRT_Action/releases)对应的Tag

本仓库[Build custom-OpenWrt](https://github.com/Gladtbam/OpenWRT_Action/actions?query=workflow%3A%22Build+custom-OpenWrt%22)使用SSH在线编译，具体使用方法可参考[原仓库中文教程](https://p3terx.com/archives/build-openwrt-with-github-actions.html)或[SSH使用说明]()

[原仓库](https://github.com/P3TERX/Actions-OpenWrt)

[原仓库中文教程](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

## SSH使用说明
点击右上角star，在触发工作流程后，在 Actions 日志页面等待执行到SSH connection to Actions步骤，会出现类似下面的信息：
`To connect to this session copy-n-paste the following into a terminal or browser:

ssh Y26QeagDtsPXp2mT6me5cnMRd@nyc1.tmate.io

https://tmate.io/t/Y26QeagDtsPXp2mT6me5cnMRd`
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

## License

[MIT](https://github.com/P3TERX/Actions-OpenWrt/blob/main/LICENSE) © P3TERX
