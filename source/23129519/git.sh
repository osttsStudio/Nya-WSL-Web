#!/bin/sh
cp -r /opt/hexo/source /opt/Nya-WSL-Web
cp -r /opt/hexo/source /opt/Nya-WSL-Web-Private

cd /opt/Nya-WSL-Web
git add .
git commit -am "update"
git push

cd /opt/Nya-WSL-Web-Private
git add .
git commit -am "update"
git push