#!/bin/sh
# Create By ifeng
# Web Site:https://www.hicairo.com
# Telegram:https://t.me/HiaiFeng

echo "Set UUID to $UUID"
echo "Set VMESS_WSPATH to $VMESS_WSPATH"
echo "Set VLESS_WSPATH to $VLESS_WSPATH"
sed -i "s#UUID#$UUID#g;s#VMESS_WSPATH#$VMESS_WSPATH#g;s#VLESS_WSPATH#$VLESS_WSPATH#g" /etc/v2ray/config.json
sed -i "s#VMESS_WSPATH#$VMESS_WSPATH#g;s#VLESS_WSPATH#$VLESS_WSPATH#g" /etc/nginx/nginx.conf
# exec "$@"

# 请删掉下一行最前面的 # 号，同时将这行代码中的域名替换成 Replit 为你项目分配的域名。
#while true ;do curl https://xx.xx.repl.co; sleep 300; done &

/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
