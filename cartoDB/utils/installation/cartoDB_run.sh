#Run CartoDB SQL API
cd $HOME/CartoDB-SQL-API
node app.js development &

#Run Windshaft
cd $HOME/Windshaft-cartodb
node app.js development &

#Needed later
export SUBDOMAIN=development

# Enter the `cartodb` directory.
cd cartodb

#Run Redis Server
redis-server &

#These need Redis-Server running
rbenv local 1.9.3-p551
bundle install

#Configure application constants
cp $HOME/cartodb/config/app_config.yml.sample $HOME/cartodb/config/app_config.yml

#Configure database details
cp $HOME/config/database.yml.sample $HOME/config/database.yml

#Add entries to /etc/hosts needed in development
echo "127.0.0.1 ${SUBDOMAIN}.localhost.lan" | sudo tee -a /etc/hosts

#Create a development user
sh script/create_dev_user ${SUBDOMAIN}

#Start the resque daemon (needed for import jobs):
bundle exec script/resque &

#Finally, start the CartoDB development server on port 3000:
bundle exec rails s -p 3000 &
                                        
#Open with Firefox 
firefox http://development.localhost.lan:3000/dashboard 

