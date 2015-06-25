#This script install CartoDB and its requirements. It also sets up the installation to execute cartoDB_run.sh next
echo "This script will install all necessary requirements for CartoDB's installation."
echo "It will also clone CartoDB's official repo and set up the system."
echo "If this script is success, you can then run ./cartoDB_run.sh to start CartoDB."
echo "If there are any problems, the logs are being saved in $PWD/log."
echo "For more information visit https://github.com/UCL-ShippingGroup/shipviz/wiki"
echo "or look at the scripts in this folder."
echo

SHIPVIZ_PATH=$HOME/shipviz/cartoDB/utils/installation
mkdir $SHIPVIZ_PATH/log

#Clone CartoDB repo
printf "Cloning CartoDB repo... "
git clone --recursive https://github.com/CartoDB/cartodb.git $HOME/cartodb > $SHIPVIZ_PATH/log/cartoDB_clone.log 2>&1
if [ $? -eq 0 ]; then
        printf "OK!\n"
else
        printf "NOK. See log at $PWD/log/${script}_install.log\n"
fi

#Execute all scripts in order
for script in ppas requirements postgres postgis ruby  python nvm cartodb_sql_api windshaft raster; do 
	#Prepare for script execution.
	echo
	printf "Installing $script... "
	logfile="$SHIPVIZ_PATH/log/${script}_install.log"
	scriptfile="$SHIPVIZ_PATH/${script}_install.sh"
	
	#Execute scripts. Note ruby's need to be sourced instead.
	if [ "$script" == "ruby" ]; then
		source $scriptfile > $logfile 2>&1
	else
		$scriptfile > $logfile
	fi
	
	#Check execution went well.
	if [ $? -eq 0 ]; then
		printf "OK!\n"
	else
		printf "NOK. See log at $SHIPVIZ_PATH/log/${script}_install.log\n"
	fi
done
