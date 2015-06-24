#UTF-8
echo -e 'LANG=en_US.UTF-8\nLC_ALL=en_US.UTF-8' | sudo tee /etc/default/locale
source /etc/default/locale

#GIT
sudo apt-get -y install git

#VIM
sudo apt-get -y install vim

#MAKE
sudo apt-get install -y build-essential checkinstall 

#UNP
sudo apt-get install -y unp

#ZIP
sudo apt-get install -y zip

#GEOS
sudo apt-get install -y libgeos-c1 libgeos-dev

#GDAL
sudo apt-get install -y gdal-bin libgdal1-dev

#JSON-C
sudo apt-get install -y libjson0 python-simplejson libjson0-dev

#PROJ4
sudo apt-get install -y proj-bin proj-data libproj-dev

#NODEJS
sudo apt-get install -y nodejs-legacy

#REDIS SERVER
sudo apt-get install -y redis-server

#PYTHON 
sudo apt-get install -y python2.7-dev
sudo apt-get install -y python-setuptools

#MapNik
sudo apt-get install -y libmapnik-dev python-mapnik mapnik-utils

#ImageMagick
sudo apt-get install -y imagemagick

#Varnish - no access to versions  < 3.x needed by CartoDB
#sudo apt-get install -y varnish=2.1.5.1-cdb1 #or any version <3.x

