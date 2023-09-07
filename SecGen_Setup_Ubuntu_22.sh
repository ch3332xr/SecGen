#!/usr/bin/env bash


##Updating Repos & Installing dependencies
echo      ++++++++++ SecGen INSTALLER ++++++++++++
echo   ----------- CREATE VULN VMs ON THE GO -----------
echo --------------------------------------------------------
echo  
echo
echo 
echo                 follow me on 
echo          https://github.com/ch3332xr
echo  [......////////\\\ This May Take a While.........@#$%^*]
echo  [+++  Updating repos and  installing dependencies]
echo  
echo
echo 
echo --------------------------------------------------------
sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt full-upgrade -y
sudo apt install curl apt-transport-https git make build-essential ruby-full vagrant virtualbox puppet packer zlib1g-dev liblzma-dev build-essential patch ruby-bundler libmagickwand-dev exiftool libpq-dev libcurl4-openssl-dev libxml2-dev graphviz graphviz-dev libpcap0.8-dev libsqlite3-dev
##Cloning SecGen
git clone https://github.com/cliffe/SecGen
cd SecGen
##Cloning ImageMagick
echo      ++++++++++ SecGen INSTALLER ++++++++++++
echo   ----------- CREATE VULN VMs ON THE GO -----------
echo make build configure install
git clone https://github.com/ImageMagick/ImageMagick.git ImageMagick-7.1.1
cd ImageMagick-7.1.1
./configure
make
sudo make install
sudo ldconfig /usr/local/lib
/usr/local/bin/convert logo: logo.gif
cd ..
##gems Install / Update 
echo  [+++  getting some gems!!!! ]
sudo gem install nokogiri librarian-puppet
sudo bundle update --bundler
sudo bundle update
echo --------------------------------------------------------
echo   All SET!!!!
echo run ruby secgen.rb run