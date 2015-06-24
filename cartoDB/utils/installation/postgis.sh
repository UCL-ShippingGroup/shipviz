cd /usr/local/src
sudo wget http://download.osgeo.org/postgis/source/postgis-2.1.7.tar.gz
sudo tar -xvzf postgis-2.1.7.tar.gz
cd postgis-2.1.7
sudo ./configure --with-raster --with-topology
sudo make
sudo make install

