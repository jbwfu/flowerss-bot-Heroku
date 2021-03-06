#!/bin/bash
cat <<-EOF > /root/rsstgbot/config.yml
bot_token: ${BOT_TOKEN}
#多个telegraph_token可采用数组格式：
# telegraph_token:
#  - token_1
#  - token_2
telegraph_token:
    - ${TG_TOKEN1}
    - ${TG_TOKEN2}
    - ${TG_TOKEN3}
user_agent: ${UA}
preview_text: ${PREVIEW_TEXT}
disable_web_page_preview: false
socks5:
update_interval: 10
error_threshold: 100
telegram:
  endpoint:
mysql:
  host:
  port:
  user:
  password:
  database:
sqlite:
  path: ./data.db
allowed_users: ${ALLOWERD_USERS}
EOF

/root/rsstgbot/flowerss-bot
