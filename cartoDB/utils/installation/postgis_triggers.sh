cd /tmp
git clone https://github.com/CartoDB/pg_schema_triggers.git
cd pg_schema_triggers
sudo make all install PGUSER=postgres
sudo make installcheck PGUSER=postgres # to run tests

