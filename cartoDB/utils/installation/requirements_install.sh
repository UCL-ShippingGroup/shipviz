#UTF-8
echo -e 'LANG=en_US.UTF-8\nLC_ALL=en_US.UTF-8' | sudo tee /etc/default/locale
source /etc/default/locale

for req in git vim curl build-essential checkinstall unp zip libgeos-c1 libgeos-dev gdal-bin libgdal1-dev libjson0 python-simplejson libjson0-dev proj-bin proj-data libproj-dev nodejs-legacy npm  libpango1.0-dev redis-server python2.7-dev python-setuptools libmapnik-dev python-mapnik mapnik-utils imagemagick xsltproc; do
	printf "\n\n"
	sudo apt-get install -y $req
done

#Varnish - no access to versions  < 3.x needed by CartoDB
#sudo apt-get install -y varnish=2.1.5.1-cdb1 #or any version <3.x


