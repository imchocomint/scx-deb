wget https://archlinux.org/packages/extra/x86_64/scx-scheds/download/ --content-disposition
wget https://archlinux.org/packages/extra/x86_64/scx-tools/download/ --content-disposition
tar -I zstd -xf scx-scheds-*.pkg.tar.zst
tar -I zstd -xf scx-tools-*.pkg.tar.zst
rm .*
mv  ./usr ./scx-scheds 
mv  ./usr ./scx-tools
rm *.tar.zst
dpkg-deb --build scx-scheds
