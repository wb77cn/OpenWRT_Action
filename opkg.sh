#!/bin/ash
Info="[${Green_font_prefix}信息${Font_color_suffix}]"
Load_Gitee(){
    echo "src/gz base https://gitee.com/sakura_bot/OpenWRT_Action/raw/mt7621/packages/mipsel_24kc/base" >> /etc/opkg/customfeeds.conf
    echo "src/gz freifunk https://gitee.com/sakura_bot/OpenWRT_Action/raw/mt7621/packages/mipsel_24kc/freifunk" >> /etc/opkg/customfeeds.conf
    echo "src/gz luci https://gitee.com/sakura_bot/OpenWRT_Action/raw/mt7621/packages/mipsel_24kc/luci" >> /etc/opkg/customfeeds.conf
    echo "src/gz packages https://gitee.com/sakura_bot/OpenWRT_Action/raw/mt7621/packages/mipsel_24kc/packages" >> /etc/opkg/customfeeds.conf
    echo "src/gz routing https://gitee.com/sakura_bot/OpenWRT_Action/raw/mt7621/packages/mipsel_24kc/routing" >> /etc/opkg/customfeeds.conf
    echo "src/gz telephony https://gitee.com/sakura_bot/OpenWRT_Action/raw/mt7621/packages/mipsel_24kc/telephony" >> /etc/opkg/customfeeds.conf
}
Load_Github(){
    echo "src/gz base https://github.com/Gladtbam/OpenWRT_Action/raw/mt7621/packages/mipsel_24kc/base" >> /etc/opkg/customfeeds.conf
    echo "src/gz freifunk https://github.com/Gladtbam/OpenWRT_Action/raw/mt7621/packages/mipsel_24kc/freifunk" >> /etc/opkg/customfeeds.conf
    echo "src/gz luci https://github.com/Gladtbam/OpenWRT_Action/raw/mt7621/packages/mipsel_24kc/luci" >> /etc/opkg/customfeeds.conf
    echo "src/gz packages https://github.com/Gladtbam/OpenWRT_Action/raw/mt7621/packages/mipsel_24kc/packages" >> /etc/opkg/customfeeds.conf
    echo "src/gz routing https://github.com/Gladtbam/OpenWRT_Action/raw/mt7621/packages/mipsel_24kc/routing" >> /etc/opkg/customfeeds.conf
    echo "src/gz telephony https://github.com/Gladtbam/OpenWRT_Action/raw/mt7621/packages/mipsel_24kc/telephony" >> /etc/opkg/customfeeds.conf
}
Select(){
    echo -e "${Info} 请选择选择源"
    echo -e "${Info} 1. Gitee源"
    echo -e "${Info} 2. Github源"
    read -p " 请输入数字:" num
    case "$num" in
    1)
        wget -P /tmp/ https://gitee.com/sakura_bot/OpenWRT_Action/raw/main/df94e071b643d7f7
        opkg-key add df94e071b643d7f7
        Load_Gitee
        ;;
    2)
        wget -P /tmp/ https://github.com/Gladtbam/OpenWRT_Action/raw/main/df94e071b643d7f7
        opkg-key add df94e071b643d7f7
        Load_Github
        ;;
    esac
}
main(){
    echo -e "本脚本会添加opkg校验签名文件，请再三确认后使用，如若造成损失，本人概不负责\n"
    read -p "是否使用本脚本[Y/N]:" start_status_ny
    case "$start_status_ny" in
    [Yy])
        Select
        ;;
    [Nn])
        exit
        ;;
    esac
    exit
}
main