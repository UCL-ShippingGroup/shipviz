#GIT
sudo apt-get -y install git

#VIM
sudo apt-get -y install vim

#UTF-8
echo -e 'LANG=en_US.UTF-8\nLC_ALL=en_US.UTF-8' | sudo tee /etc/default/locale
source /etc/default/locale

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
