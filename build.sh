sudo apt install wget tar zstd
wget https://archlinux.org/packages/extra/x86_64/scx-scheds/download/ --content-disposition
tar -I zstd -xf scx-scheds-*.pkg.tar.zst
rm .*
mv  ./usr ./scx-scheds 
rm *.tar.zst
dpkg-deb --build scx-scheds