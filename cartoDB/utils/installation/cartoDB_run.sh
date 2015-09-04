#Run CartoDB SQL API
cd $HOME/CartoDB-SQL-API
node app.js development &

#Run Windshaft
cd $HOME/Windshaft-cartodb
node app.js development &

#Run Redis Server
sudo service redis-server start
#redis-server &

#These need Redis-Server running
cd $HOME/cartodb
rbenv local 1.9.3-p551
bundle install

#Configure application constants
cp $HOME/cartodb/config/app_config.yml.sample $HOME/cartodb/config/app_config.yml

#Configure database details
cp $HOME/cartodb/config/database.yml.sample $HOME/cartodb/config/database.yml

#Add entries to /etc/hosts needed in development
echo "127.0.0.1 development.localhost.lan" | sudo tee -a /etc/hosts

#Create a development user
sh  $HOME/cartodb/script/create_dev_user development development development r.alegre@ucl.ac.uk

#Start the resque daemon (needed for import jobs):
bundle exec  $HOME/cartodb/script/resque &

#Finally, start the CartoDB development server on port 3000:
bundle exec rails s -p 3000 &

#Give it time until everything is ready
sleep 10
                                        
#Open with Firefox 
firefox http://development.localhost.lan:3000/dashboard 

