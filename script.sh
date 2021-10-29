#!/bin/bash
web_root="https://genshin-wallpaper.web.app/img/wallpapers/"
mkdir imgs
cd imgs
for ((i = 1 ; i <= 39 ; i++)); do
    wget "${web_root}$i.jpg"
done
tar czvf img_compressed.tar.gz *.jpg
tar cjvf img_compressed.tar.bz *.jpg
zip img_compressed.zip *.jpg
rar a img_compressed.rar *.jpg
tar cvf img_compressed.tar.xz --use-compress-program='xz -9 -vT12' *.jpg
7z a img_compressed.7z *jpg
sha256sum *.jpg > checksum_jpg_individual
sha256sum img_compressed.* > checksum_jpg_compressed
sha256sum --check checksum_jpg_individual
sha256sum --check checksum_jpg_compressed