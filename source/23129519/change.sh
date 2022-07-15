#!/bin/sh

read -p "标题：" TITLE
read -p "文件名：" filename
read -p "BV号：" BV

cat >> "index.md" << EOF_index

<details>
<summary>$TITLE</summary>

  > [bilibili](https://www.bilibili.com/video/$BV) | [Local](https://nya-wsl.osttsstudio.ltd/23129519/$filename.mp4) | [Nya-WSL](https://nya-wsl.com/23129519/$BV)
</details>
  {%  aplayer
    url="https://nya-wsl.osttsstudio.ltd/23129519/$filename.mp3"
    name="$TITLE"
    cover="https://nya-wsl.osttsstudio.ltd/23129519/$filename.jpg"
    artist="钥钥K"
%}

EOF_index

mkdir $BV
touch $BV/index.md
file="$BV/index.md"

cat>"${file}"<<EOF_BV
---
title: ${TITLE}
cover: ../bg.jpg
dplayer: true
---

## $TITLE

{%  dplayer
    url="https://nya-wsl.osttsstudio.ltd/23129519/$filename.mp4"
%}
EOF_BV