#! /bin/bash
wget -c https://raw.githubusercontent.com/AppImage/pkg2appimage/master/pkg2appimage
bash pkg2appimage gtk.yml
rm pkg2appimage
cd out
chmod +x *.AppImage
mv *.AppImage ../Drill-GTK.AppImage
# mv *.AppImage ../Drill-$(head -n 1 ../../../DRILL_VERSION)-GTK.AppImage
cd ..
rmdir out