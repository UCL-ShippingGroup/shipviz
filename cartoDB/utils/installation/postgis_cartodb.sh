cd ..
git clone https://github.com/CartoDB/cartodb-postgresql.git
cd cartodb-postgresql
git checkout cdb
sudo make all install
echo "shared_preload_libraries = 'schema_triggers.so'" | sudo tee --append /etc/postgresql/9.3/main/postgresql.conf
sudo service postgresql restart # restart postgres
sudo PGUSER=postgres make installcheck # to run tests

