sudo apt-get update
sudo apt-get install mercurial libmenu-cache-dev gtk2.0 glib2.0
hg clone https://bitbucket.org/fabriceT/openbox-menu
cd openbox-menu
make
sudo make install DESTDIR=/usr
echo "" >> ~/.config/openbox/autostart.sh
echo "## Launch openbox-menu" >> ~/.config/openbox/autostart.sh
echo "openbox-menu lxde-applications.menu -p -o menu.xml &" >> ~/.config/openbox/autostart.sh