cd /usr/local/src
sudo wget http://download.osgeo.org/postgis/source/postgis-2.1.7.tar.gz
sudo tar -xvzf postgis-2.1.7.tar.gz
cd postgis-2.1.7
sudo ./configure --with-raster --with-topology
sudo make
sudo make install

sudo su - postgres
POSTGIS_SQL_PATH=`pg_config --sharedir`/contrib/postgis-2.1
createdb -E UTF8 template_postgis
createlang -d template_postgis plpgsql
psql -d postgres -c "UPDATE pg_database SET datistemplate='true' WHERE datname='template_postgis'"
psql -d template_postgis -c "CREATE EXTENSION postgis"
psql -d template_postgis -c "CREATE EXTENSION postgis_topology"
psql -d template_postgis -c "GRANT ALL ON geometry_columns TO PUBLIC;"
psql -d template_postgis -c "GRANT ALL ON spatial_ref_sys TO PUBLIC;"
exit

cd /tmp
git clone https://github.com/CartoDB/pg_schema_triggers.git
cd pg_schema_triggers
sudo make all install PGUSER=postgres
sudo make installcheck PGUSER=postgres # to run tests
cd ..
git clone https://github.com/CartoDB/cartodb-postgresql.git
cd cartodb-postgresql
git checkout cdb
sudo make all install
sudo PGUSER=postgres make installcheck # to run tests
