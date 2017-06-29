sudo apt-get update

sudo add-apt-repository ppa:tista/adapta
sudo apt update
sudo apt install adapta-gtk-theme
sudo apt install unity-tweak-tool

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

ln -s /media/h3/Study ~/Study
ln -s /media/h3/Study/Lab ~/Lab
ln -s /media/h3/Play ~/Play


ln -s /media/h3/Study/Auto ~/Auto

echo 'nameserver 4.2.2.3' >> sudo /etc/resolv.conf
echo 'nameserver 4.2.2.4' >> sudo /etc/resolv.conf

echo 'alias Study='cd /media/h3/Study;' ' >> ~/.bashrc

cat alias >> ~/.bashrc
