sudo apt-get update
sudo apt-get install mercurial libmenu-cache-dev gtk2.0 glib2.0
hg clone https://github.com/fabriceT/openbox-menu.git
cd openbox-menu
make
sudo make install DESTDIR=/usr
echo "Configuring autostart..."
echo "" >> ~/.config/openbox/autostart
echo "## Launch openbox-menu" >> ~/.config/openbox/autostart
echo "openbox-menu lxde-applications.menu -p -o menu.xml &" >> ~/.config/openbox/autostart
echo "Configuring menu.xml..."
echo '<menu id="desktop-app-menu" label="Applications" execute="cat ~/.cache/menu.xml"/>' >> "~/.config/openbox/menu.xml"
