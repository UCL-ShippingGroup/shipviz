sudo apt-get install -y postgresql-9.3 postgresql-client-9.3 postgresql-contrib-9.3 postgresql-server-dev-9.3
sudo apt-get install -y postgresql-plpython-9.3

#Configure all _md5_/_peer_ to _trust_: 
sudo sed -i -- 's/md5/trust/g' /etc/postgresql/9.3/main/pg_hba.conf 
sudo sed -i -- 's/peer/trust/g' /etc/postgresql/9.3/main/pg_hba.conf 

#Restart postgres: 
sudo /etc/init.d/postgresql restart
