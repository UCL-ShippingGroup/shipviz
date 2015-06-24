cd ..
git clone https://github.com/CartoDB/cartodb-postgresql.git
cd cartodb-postgresql
git checkout cdb
sudo make all install
sudo echo "shared_preload_libraries = 'schema_triggers.so'" >> /etc/postgresql/9.3/main/postgresql.con
sudo service postgresql restart # restart postgres
sudo PGUSER=postgres make installcheck # to run tests

