#!/bin/bash
cp -r /opt/hexo/source /opt/Nya-WSL-Web
cp -r /opt/hexo/source /opt/Nya-WSL-Web-Private

function git_command {
git add .
git commit -am "update"
git push
}

cd /opt/Nya-WSL-Web
git_command
cd /opt/Nya-WSL-Web-Private
git_command
