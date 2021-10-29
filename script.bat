@echo off
set web_root=https://genshin-wallpaper.web.app/img/wallpapers/
mkdir imgs
cd imgs
for /L %%i in (1,1,39) do wget %web_root%%i%.jpg