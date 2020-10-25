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
Fix_Signature_check(){
    echo -e "${Info} 正在取消检测签名文件"
    sed  -i 's/option check_signature/#option check_signature/g' /etc/opkg.conf
}
Select(){
    echo -e "${Info} 请选择选择源"
    echo -e "${Info} 1. Gitee源"
    echo -e "${Info} 2. Github源"
    read -e -p " 请输入数字:" num
    case "$num" in
    1)
        Load_Gitee
        ;;
    2)
        Load_Github
        ;;
    esac
}
main(){
    echo -e "本脚本会取消opkg校验签名文件，请再三确认后使用，如若造成损失，本人概不负责\n"
    echo -e "是否使用本脚本[Y/N]"
    read -e start_status_ny
    [[ -z "${start_status_ny}" ]] && start_status_ny="y"
    if [[ ${start_status_ny} == [Yy] ]];then
        Fix_Signature_check
    else
        exit
    fi
    Select
}
main