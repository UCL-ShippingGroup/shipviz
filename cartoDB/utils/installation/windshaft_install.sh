git clone git://github.com/CartoDB/Windshaft-cartodb.git $HOME/Windshaft-cartodb
cd $HOME/Windshaft-cartodb
git checkout master
npm install
cp config/environments/development.js.example config/environments/development.js
