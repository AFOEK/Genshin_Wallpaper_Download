@echo off
set web_root=https://genshin-wallpaper.web.app/img/wallpapers/
mkdir imgs
cd imgs
for /L %%i in (1,1,39) do (
    curl --output %%i.jpg %web_root%%%i.jpg
)
"C:\Program Files\7-Zip\7z.exe" a img_compressed.7z *.jpg
"C:\Program Files\WinRAR\Rar.exe" -M5 a img_compressed.rar *.jpg
certUtil -hashfile *.jpg SHA256
certUtil -hashfile img_compressed.* SHA256